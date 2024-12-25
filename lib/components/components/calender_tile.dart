// import 'package:flutter/material.dart';
// import 'common_card.dart';

// class CalendarWidget extends StatefulWidget {
//   const CalendarWidget({super.key});

//   @override
//   CalendarWidgetState createState() => CalendarWidgetState();
// }

// class CalendarWidgetState extends State<CalendarWidget> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   Widget build(BuildContext context) {
//     return ExpandedCardView(
//       padding: padding15,
//       child: TableCalendar(
//         rowHeight: 45,
//         headerVisible: false,
//         firstDay: DateTime.utc(2010, 10, 16),
//         lastDay: DateTime.utc(2030, 3, 14),
//         focusedDay: _focusedDay,
//         calendarFormat: _calendarFormat,
//         selectedDayPredicate: (day) {
//           return isSameDay(_selectedDay, day);
//         },
//         onDaySelected: (selectedDay, focusedDay) {
//           setState(() {
//             _selectedDay = selectedDay;
//             _focusedDay = focusedDay;
//           });
//         },
//         onFormatChanged: (format) {
//           if (_calendarFormat != format) {
//             setState(() {
//               _calendarFormat = format;
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           _focusedDay = focusedDay;
//         },
//         headerStyle: const HeaderStyle(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(50)),
//               color: white),
//           formatButtonVisible: false,
//           titleCentered: true,
//           leftChevronVisible: true,
//           rightChevronVisible: true,
//         ),
//         calendarStyle: const CalendarStyle(
//           todayDecoration: BoxDecoration(
//             color: Colors.purpleAccent,
//             shape: BoxShape.circle,
//           ),
//           selectedDecoration: BoxDecoration(
//             color: Colors.purple,
//             shape: BoxShape.circle,
//           ),
//         ),
//       ),
//     );
//   }
// }
