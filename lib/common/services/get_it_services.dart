import 'package:get_it/get_it.dart';

import '../../features/home/data/home_remote_data_source/remote_data_home.dart';
import '../../features/home/data/home_repository_data/repository_data_home.dart';
import '../../features/home/domain/repository/base_repository_home.dart';
import '../../features/home/domain/use_case/use_case_home.dart';
import '../../features/home/presentation/controller/home_cubit.dart';

final sl = GetIt.asNewInstance();

class ServicesLocator {
  ServicesLocator();

  static void service() {
    sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));

    sl.registerLazySingleton<BaseRemoteHomeData>(() => RemoteHomeData());

    sl.registerLazySingleton<HomeBaseRepository>(
      () => HomeDataRepository(baseRemoteHomeData: sl()),
    );

    sl.registerLazySingleton<HomeUseCase>(
      () => HomeUseCase(baseRepositoryHome: sl()),
    );
  }
}
