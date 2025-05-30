class TripModel {
  final String id;
  final String status;
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
  });
}

class TripTime {
  final String start;
  final String end;

  TripTime({required this.start, required this.end});
}

class Participant {
  final String name;
  final String avatarUrl;

  Participant({required this.name, required this.avatarUrl});
}
