import 'dart:ui';

class TripModel {
  final String id;
  final String status;
  final Color mainColor;
  final String title;
  final TripTime dates;
  final List<Participant> participants;
  final int unfinishedTasks;
  final String coverImage;

  TripModel({
    required this.id,
    required this.status,
    required this.title,
    required this.dates,
    required this.participants,
    required this.unfinishedTasks,
    required this.coverImage,
    required this.mainColor,
  });
}

class TripTime {
  final DateTime start;
  final DateTime end;

  TripTime({required this.start, required this.end});
}

class Participant {
  final String name;
  final String avatarUrl;

  Participant({required this.name, required this.avatarUrl});
}
