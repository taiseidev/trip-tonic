import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String dateToString() {
    final formatter = DateFormat('yyyy/MM/dd(E) HH:mm', 'ja_JP');
    return formatter.format(this);
  }
}
