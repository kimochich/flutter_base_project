import 'package:flutter_temp_project/data/repositories/user_repository.dart';

import 'di_module.dart';

class RepoModule extends DIModule {
  @override
  provides() async {
    getIt.registerFactory<UserRepository>(()=>UserRepository(getIt.get()));
  }
}
