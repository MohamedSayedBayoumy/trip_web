import 'dart:ui';

import 'package:flutter/material.dart';

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
    required super.mainColor,
  });

  static Color getColor(String status) {
    if (status == "pending approval") {
      return Color(0xffC25F30);
    } else if (status == "ready for travel") {
      return Color(0xff33BFED);
    } else {
      return Color(0xffFFC268);
    }
  }

  factory TripDataModel.fromJson(Map<String, dynamic> json) {
    final status = json['status'].toString().toLowerCase();
    return TripDataModel(
      id: json['id'],
      title: json['title'],
      dates: TripTimeDataModel.fromJson(json['dates']),
      participants:
          (json['participants'] as List)
              .map((e) => ParticipantDataModel.fromJson(e))
              .toList(),
      unfinishedTasks: json['unfinished_tasks'],
      coverImage: json['cover_image'],
      status: json['status'],
      mainColor: getColor(status),
    );
  }
}

class TripTimeDataModel extends TripTime {
  TripTimeDataModel({required super.start, required super.end});

  static DateTime convertToDate(String dateStr) {
    final parts = dateStr.split('-');
    final day = parts[0];
    final month = parts[1];
    final year = parts[2];
    final formatted = '$year-$month-$day';
    return DateTime.parse(formatted);
  }

  factory TripTimeDataModel.fromJson(Map<String, dynamic> json) {
    return TripTimeDataModel(
      start: convertToDate(json['start']),
      end: convertToDate(json['end']),
    );
  }
}

class ParticipantDataModel extends Participant {
  ParticipantDataModel({required super.name, required super.avatarUrl});

  factory ParticipantDataModel.fromJson(Map<String, dynamic> json) {
    return ParticipantDataModel(
      name: json['name'],
      avatarUrl: json['avatar_url'],
    );
  }
}
