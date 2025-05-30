part of 'home_cubit.dart';

sealed class HomeState {}

final class LoadingGetHomeData extends HomeState {}

final class LoadedGetHomeData extends HomeState {}

final class FailedGetHomeData extends HomeState {}
