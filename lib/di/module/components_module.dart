import 'package:flutter_temp_project/data/data_source/local/pref/shared_preferences_manager.dart';
import 'package:flutter_temp_project/di/module/di_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ComponentsModule extends DIModule {
  @override
  provides() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerSingleton(SharedPreferencesManager(sharedPreferences));
  }
}
