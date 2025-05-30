import '../../domain/repository/base_repository_home.dart';
import '../home_model_data/home_model_data.dart';
import '../home_remote_data_source/remote_data_home.dart';

class HomeDataRepository extends HomeBaseRepository {
  final BaseRemoteHomeData baseRemoteHomeData;

  HomeDataRepository({required this.baseRemoteHomeData});

  @override
  Future<List<TripDataModel>> getTrips() async {
    final result = await baseRemoteHomeData.fetchTripsData();

    return result;
  }
}
