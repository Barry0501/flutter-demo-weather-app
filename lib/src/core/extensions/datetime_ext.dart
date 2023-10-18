// import 'package:intl/intl.dart';

// import 'object_ext.dart';

// extension DateTimeExt on DateTime {
//   String get gteES {
//     return DateTime(year, month, day).toLocal().toUtc().formatTZ;
//   }

//   String get lteES {
//     return DateTime(year, month, day, 23, 59, 59, 999).toUtc().formatTZ;
//   }

//   String get formatT {
//     final formatterDate = DateFormat('yyyy-MM-ddTHH:mm:ss');

//     return formatterDate.format(this);
//   }

//   String get formatTZ {
//     return '${formatT}Z';
//   }

//   String get dateTimeDisplay {
//     final formatterDate = DateFormat('MM/dd/yyyy');
//     final formatterTime = DateFormat.jm();
//     final actualDate = formatterDate.format(this);
//     final actualTime = formatterTime.format(this);

//     return '$actualDate at $actualTime';
//   }

//   String get tohhmm {
//     final formatterDate = DateFormat('HH:mm');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get toddMMyyyy {
//     final formatterDate = DateFormat('dd MM yyyy');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get toddMMMyyyy {
//     final formatterDate = DateFormat('dd MMM yyyy');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get ddMMyyyy {
//     final formatterDate = DateFormat('dd/MM/yyyy');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get formatServer {
//     final formatterDate = DateFormat('yyyy-MM-dd');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get datetimeMessage {
//     final formatterDate = DateFormat('dd/MM hh:mm');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get hhmmddMMyyyy {
//     final formatterDate = DateFormat('HH:mm dd/MM/yyyy ');
//     final actualDate = formatterDate.format(this);

//     return actualDate;
//   }

//   String get dateCreateOrder {
//     // final formatterDate = DateFormat('HH:mm a dd/MM/yyyy'); // 11:30 AM 11/07/2023
//     final formatterDate = DateFormat('HH:mm dd/MM/yyyy');
//     final actualDate = formatterDate.format(toLocal());
//     return actualDate;
//   }
// }

// extension DateOnlyCompare on DateTime {
//   bool get isToday {
//     return isSameDay(DateTime.now());
//   }

//   bool isSameDay(DateTime other) {
//     return year == other.year && month == other.month && day == other.day;
//   }

//   bool isBeforeDate(DateTime other) {
//     return !isSameDay(other) && isBefore(other);
//   }

//   DateTime copyWith({
//     int? year,
//     int? month,
//     int? day,
//     int? hour,
//     int? minute,
//     int? second,
//     int? millisecond,
//     bool? isUtc,
//   }) {
//     return ((isUtc ?? this.isUtc) ? DateTime.utc : DateTime.new)(
//       year ?? this.year,
//       month ?? this.month,
//       day ?? this.day,
//       hour ?? this.hour,
//       minute ?? this.minute,
//       second ?? this.second,
//       millisecond ?? this.millisecond,
//     );
//   }

//   DateTime get startDate {
//     return DateTime(year, month, day);
//   }

//   DateTime get middle {
//     return DateTime(year, month, day, 12);
//   }

//   DateTime get endDate {
//     return DateTime(year, month, day, 23, 59, 59, 999);
//   }

//   DateTime get startThisWeek {
//     return subtract(Duration(days: weekday - 1)).startDate;
//   }

//   DateTime get startPrevWeek {
//     return subtract(Duration(days: weekday + 6)).startDate;
//   }

//   DateTime get endPrevWeek {
//     return startPrevWeek.add(const Duration(days: 6)).endDate;
//   }

//   DateTime get prevMonth {
//     return copyWith(month: month - 1);
//   }

//   DateTime get startPrevMonth {
//     return prevMonth.copyWith(day: 1).startDate;
//   }

//   DateTime get endPrevMonth {
//     return startPrevMonth.let(
//       (d) => d
//           .copyWith(month: d.month + 1)
//           .subtract(const Duration(days: 1))
//           .endDate,
//     );
//   }
// }
