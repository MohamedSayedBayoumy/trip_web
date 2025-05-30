import '../entites/trip_entite.dart';
import '../repository/base_repository_home.dart';

class HomeUseCase {
  final HomeBaseRepository baseRepositoryHome;
  HomeUseCase({required this.baseRepositoryHome});

  Future<List<TripModel>> getArticlesData({int? from}) async {
    return await baseRepositoryHome.getTrips();
  }
}
