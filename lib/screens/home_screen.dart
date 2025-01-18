import 'package:flutter/material.dart';
import '../widgets/calendar_widget.dart';
import '../models/event.dart';
import 'event_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
      id: '1',
      title: 'Math Exam',
      dateTime: DateTime(2025, 5, 10, 9, 0),
      location: 'Building A, Room 101',
      latitude: 42.0,
      longitude: 21.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Schedule'),
      ),
      body: Column(
        children: [
          CalendarWidget(
            onDaySelected: (selectedDay) {
              final event = events.firstWhere(
                (e) => e.dateTime.year == selectedDay.year &&
                    e.dateTime.month == selectedDay.month &&
                    e.dateTime.day == selectedDay.day,
                orElse: () => Event(
                  id: '0',
                  title: 'No event',
                  dateTime: selectedDay,
                  location: '',
                  latitude: 0.0,
                  longitude: 0.0,
                ),
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsScreen(event: event),
                ),
              );
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return ListTile(
                  title: Text(event.title),
                  subtitle: Text(event.dateTime.toString()),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailsScreen(event: event),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
