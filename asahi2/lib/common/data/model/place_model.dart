import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stamp_rally/common/data/dto/place_dto.dart';

part 'place_model.freezed.dart';

enum TypeRegisterStamp { gps, qr, sample, gpsDate }

@freezed
class PlaceModel with _$PlaceModel {
  const PlaceModel._();

  const factory PlaceModel({
    required String historicSpotId,
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
    DateTime? dateEnd,
  }) = _PlaceModel;

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
        dateStart: data.dateStart.isEmpty
            ? DateTime.parse("1990-01-01")
            : DateTime.parse(data.dateStart),
        dateEnd: data.dateEnd.isEmpty
            ? DateTime.parse("2050-12-31")
            : DateTime.parse(data.dateEnd));
  }
}
