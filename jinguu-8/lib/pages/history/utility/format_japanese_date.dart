import 'package:intl/intl.dart';

String formatJapaneseDate(DateTime date) {
  final japaneseEra = date.year - 2018; // 令和は2019年から
  const weekDayNames = ['日', '月', '火', '水', '木', '金', '土'];
  final formattedDate = DateFormat('MM月dd日').format(date);
  final weekDay = weekDayNames[date.weekday % 7];
  final time = DateFormat('HH:mm:ss').format(date);

  return '令和$japaneseEra年$formattedDate($weekDay) $time';
}
