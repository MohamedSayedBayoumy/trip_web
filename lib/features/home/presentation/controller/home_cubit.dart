import 'package:bloc/bloc.dart';

import '../../domain/use_case/use_case_home.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.useCaseArticles) : super(LoadingGetHomeData());

  final HomeUseCase useCaseArticles;
}
