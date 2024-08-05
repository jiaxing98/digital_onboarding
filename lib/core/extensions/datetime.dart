import 'package:intl/intl.dart';

extension DatetimeExtension on DateTime {
  String format([String? pattern, String? locale]) {
    return DateFormat(pattern, locale).format(this);
  }
}
