import '../home_model_data/home_model_data.dart';

abstract class BaseRemoteHomeData {
  Future<List<TripDataModel>> fetchTripsData();
}

class RemoteHomeData implements BaseRemoteHomeData {
  @override
  Future<List<TripDataModel>> fetchTripsData() async {}
}
