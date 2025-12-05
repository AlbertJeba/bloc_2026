import 'package:intl/intl.dart';

class DateConversion {
  static String dateMonthYear(DateTime dateTime) {
    return DateFormat("dd/MM/yyyy").format(dateTime);
  }

  static DateTime stringToDate(String dateString) {
    return DateTime.parse(dateString);
  }

  static String isoStringToFormattedDate(String isoString) {
    DateTime dateTime = DateTime.parse(isoString);
    return DateFormat("dd/MM/yyyy").format(dateTime);
  }
}
