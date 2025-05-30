import '../../domain/entites/trip_entite.dart';

class TripDataModel extends TripModel {
  TripDataModel({
    required super.id,
    required super.status,
    required super.title,
    required super.dates,
    required super.participants,
    required super.unfinishedTasks,
    required super.coverImage,
  });

  factory TripDataModel.fromJson(Map<String, dynamic> json) {
    return TripDataModel(
      id: json['id'],
      status: json['status'],
      title: json['title'],
      dates: TripTimeDataModel.fromJson(json['dates']),
      participants:
          (json['participants'] as List)
              .map((e) => ParticipantDataModel.fromJson(e))
              .toList(),
      unfinishedTasks: json['unfinished_tasks'],
      coverImage: json['cover_image'],
    );
  }
}

class TripTimeDataModel extends TripTime {
  TripTimeDataModel({required super.start, required super.end});

  factory TripTimeDataModel.fromJson(Map<String, dynamic> json) {
    return TripTimeDataModel(start: json['start'], end: json['end']);
  }
}

class ParticipantDataModel extends Participant {
  ParticipantDataModel({required super.name, required super.avatarUrl});

  factory ParticipantDataModel.fromJson(Map<String, dynamic> json) {
    return ParticipantDataModel(name: json['name'], avatarUrl: json['avatar_url']);
  }
}
