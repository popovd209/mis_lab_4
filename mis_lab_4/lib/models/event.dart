class Event {
  final String id;
  final String title;
  final DateTime dateTime;
  final String location;
  final double latitude;
  final double longitude;

  Event({
    required this.id,
    required this.title,
    required this.dateTime,
    required this.location,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dateTime': dateTime.toIso8601String(),
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      title: map['title'],
      dateTime: DateTime.parse(map['dateTime']),
      location: map['location'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }
}
