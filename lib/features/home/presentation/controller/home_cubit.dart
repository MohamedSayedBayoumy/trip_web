import 'dart:developer';

import 'package:bloc/bloc.dart';

import '../../domain/entites/trip_entite.dart';
import '../../domain/use_case/use_case_home.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.useCaseArticles) : super(LoadingGetHomeData());

  final HomeUseCase useCaseArticles;

  List<TripModel> trips = [];

  getTrips() async {
    emit(LoadingGetHomeData());

    trips = await useCaseArticles.getArticlesData();

    log("${trips.first}");

    Future.delayed(Duration(seconds: 1), () {
      emit(LoadedGetHomeData());
    });
  }
}
