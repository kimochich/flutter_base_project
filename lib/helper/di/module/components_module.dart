import 'package:flutter_temp_project/data/data_source/local/pref/shared_preferences_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di_module.dart';

class ComponentsModule extends DIModule {
  @override
  provides() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerSingleton(SharedPreferencesManager(sharedPreferences));
  }
}
