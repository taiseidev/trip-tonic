extension StringExtension on String {
  String dateFormat() {
    final date = DateTime.parse(this);
    return '${date.year}年${date.month}月${date.day}日';
  }
}
