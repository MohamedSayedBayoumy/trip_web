import '../entites/trip_entite.dart';

abstract class HomeBaseRepository {
  Future<List<TripModel>> getTrips();
}
