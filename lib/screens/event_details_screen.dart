import 'package:flutter/material.dart';
import '../models/event.dart';
import '../widgets/map_widget.dart';

class EventDetailsScreen extends StatelessWidget {
  final Event event;

  EventDetailsScreen({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Title: ${event.title}'),
            subtitle: Text('Date: ${event.dateTime}'),
          ),
          ListTile(
            title: Text('Location: ${event.location}'),
          ),
          Expanded(
            child: MapWidget(event: event),
          ),
        ],
      ),
    );
  }
}
