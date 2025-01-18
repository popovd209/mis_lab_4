import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/event.dart';

class CalendarWidget extends StatelessWidget {
  final ValueChanged<DateTime> onDaySelected;

  CalendarWidget({required this.onDaySelected});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2025, 12, 31),
      focusedDay: DateTime.now(),
      onDaySelected: (selectedDay, focusedDay) {
        onDaySelected(selectedDay);
      },
      calendarFormat: CalendarFormat.month,
    );
  }
}
