import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {
  const DateTimeHelper._();

  static String getDateRangeFormatIndo(DateTimeRange? dateTimeRange) {
    String result = '';

    final start =
        DateFormat('d MMM').format(dateTimeRange?.start ?? DateTime.now());
    final end =
        DateFormat('d MMM yyyy').format(dateTimeRange?.end ?? DateTime.now());

    result = '$start - $end';
    return result;
  }
  static String getDateRangeFormatIndoWithoutYear(DateTimeRange? dateTimeRange) {
    String result = '';

    final start =
        DateFormat('d MMM').format(dateTimeRange?.start ?? DateTime.now());
    final end =
        DateFormat('d MMM').format(dateTimeRange?.end ?? DateTime.now());

    result = '${start.toUpperCase()} - ${end.toUpperCase()}';
    return result;
  }

  static String getDefaultDateWithTime(DateTime rawDate) {
    String formattedDate = DateFormat('EEEE, d MMM yyyy, HH:mm').format(rawDate);

    return formattedDate;
  }

  static String getOnlyDate(DateTime rawDate) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(rawDate);

    return formattedDate;
  }
}
