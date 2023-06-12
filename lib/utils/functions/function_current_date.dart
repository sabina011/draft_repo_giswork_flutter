import 'package:intl/intl.dart';

String currentDate() {
  final DateTime now = DateTime.now();
  //apply date formatter
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  //assign to string
  final String current_date = formatter.format(now);
  return current_date;
}
