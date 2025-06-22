import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:stamp_rally/common/data/dto/place_dto.dart';
import 'package:stamp_rally/core/flogger.dart';

part 'place_model.freezed.dart';

enum TypeRegisterStamp { gps, qr, sample, gpsDate }

@freezed
class PlaceModel with _$PlaceModel {
  const PlaceModel._();

  const factory PlaceModel(
      {required String historicSpotId,
      required String name,
      required String areaName,
      required String yomigana,
      required double longitude,
      required double latitude,
      required TypeRegisterStamp typeRegisterStamp,
      @Default(50) int gpsMeter,
      @Default('') String url,
      @Default('') String worshipUrl,
      @Default('参拝カード.png') String img,
      @Default('') String proverbs,
      @Default('') String worshipCardTopUrl,
      @Default(false) bool isStamped,
      @Default([]) List<DateTime> stampedDateTimeList,
      DateTime? dateStart,
      DateTime? dateEnd}) = _PlaceModel;

  // 参拝カード取得をweb上にする
  bool get isWorshipCardWeb {
    if (worshipUrl != '') return true;
    return false;
  }

  String get dateStartString {
    return _dateFormat(dateStart);
  }

  String get dateEndString {
    return _dateFormat(dateEnd);
  }

  // yyyy年MM月dd日 HH時mm分 にフォーマットして返す。
  String _dateFormat(DateTime? date) {
    if (date == null) return "";
    DateFormat formatter = DateFormat('yyyy年MM月dd日 HH時mm分');
    String formattedDate = formatter.format(date);
    return formattedDate;
  }

  // スタンプ登録日を、yyyy/MM/dd(Sat) HH:mmのフォーマットでデータを返す。
  List<String> get stampedDateTimeListString {
    final stringList = stampedDateTimeList.map((e) {
      // スタンプ押下時を入れる。
      final weekDay = e.weekday;
      // Sun Mon Tue Wed Thu Fri Sat
      List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      final weekDayString = weekdays[weekDay - 1];
      final dateString = DateFormat("yyyy/MM/dd").format(e);
      final dateTime = DateFormat("HH:mm").format(e);
      final da = '$dateString($weekDayString)$dateTime';
      return da;
    }).toList();

    // 3要素まで取得する。
    return stringList;
  }

  // 平日か休日かを判定する
  static bool _isWeekend(DateTime date) {
    return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
  }

  // dateStartを取得する
  static DateTime _getDateStart(PlaceDTO data) {
    try {
      if (data.dateStart.isNotEmpty) {
        return DateFormat("yyyy-MM-dd HH:mm:ss")
            .parse(data.dateStart!)
            .toLocal();
      }

      final baseDate = DateTime.now();
      if (_isWeekend(baseDate)) {
        // 休日の場合は休日の開始時刻を返す
        final dateStart = DateTime(
            baseDate.year,
            baseDate.month,
            baseDate.day,
            int.parse(data.timeStartHoliday!.split(':')[0]),
            int.parse(data.timeStartHoliday!.split(':')[1]));
        return dateStart;
      } else {
        // 平日の場合は平日の開始時刻を返す
        final dateStart = DateTime(
            baseDate.year,
            baseDate.month,
            baseDate.day,
            int.parse(data.timeStartWeekDays!.split(':')[0]),
            int.parse(data.timeStartWeekDays!.split(':')[1]));
        return dateStart;
      }
    } catch (e) {
      // エラーの場合、dateStartをログに出力
      Flogger.e('Error parsing dateStart: ${data.dateStart}, Error: $e',
          error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  // dateEndを取得する
  static DateTime _getDateEnd(PlaceDTO data) {
    try {
      if (data.dateEnd.isNotEmpty) {
        return DateFormat("yyyy-MM-dd HH:mm:ss").parse(data.dateEnd!).toLocal();
      }
      final baseDate = DateTime.now();
      if (_isWeekend(baseDate)) {
        // 休日の場合は休日の終了時刻を返す
        return DateTime(
            baseDate.year,
            baseDate.month,
            baseDate.day,
            int.parse(data.timeEndHoliday!.split(':')[0]),
            int.parse(data.timeEndHoliday!.split(':')[1]));
      } else {
        // 平日の場合は平日の終了時刻を返す
        return DateTime(
            baseDate.year,
            baseDate.month,
            baseDate.day,
            int.parse(data.timeEndWeekDays!.split(':')[0]),
            int.parse(data.timeEndWeekDays!.split(':')[1]));
      }
    } catch (e) {
      Flogger.e('Error parsing dateStart: ${data.dateEnd}, Error: $e',
          error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  // CSVデータから型変換
  factory PlaceModel.fromAsset({required PlaceDTO data}) {
    return PlaceModel(
      historicSpotId: data.historicSpotId,
      name: data.name,
      areaName: data.areaName,
      yomigana: data.yomigana,
      longitude: data.longitude,
      latitude: data.latitude,
      typeRegisterStamp: data.typeRegisterStamp,
      url: data.url,
      worshipUrl: data.worshipUrl,
      gpsMeter: data.gpsMeter,
      img: data.img,
      proverbs: data.proverbs,
      worshipCardTopUrl: data.worship_card_top_image_url,
      dateStart: _getDateStart(data),
      dateEnd: _getDateEnd(data),
    );
  }
}
