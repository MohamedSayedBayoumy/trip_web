import 'dart:convert';

import 'package:flutter/services.dart';

import '../home_model_data/home_model_data.dart';

abstract class BaseRemoteHomeData {
  Future<List<TripDataModel>> fetchTripsData();
}

class RemoteHomeData implements BaseRemoteHomeData {
  @override
  Future<List<TripDataModel>> fetchTripsData() async {
    String jsonString = await rootBundle.loadString("assets/trips_mock.json");
    final Map<String, dynamic> jsonData = jsonDecode(jsonString);
    final List tripsJson = jsonData['trips'];
    return tripsJson.map((e) => TripDataModel.fromJson(e)).toList();
  }
}
