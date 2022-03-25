
import 'package:flutter_temp_project/data/data_source/local/pref/pref_key.dart';
import 'package:flutter_temp_project/data/data_source/local/pref/shared_preferences_manager.dart';

import '../../../../di/module/di_module.dart';

class SessionPref {
  static void saveSession({required String accessToken}) {
    var preferencesManager = getIt.get<SharedPreferencesManager>();
    preferencesManager.putString(keyAccessToken, accessToken);
  }

  static String? getAccessToken() =>
      getIt.get<SharedPreferencesManager>().getString(keyAccessToken);

  static bool isSessionValid() {
    return getIt
            .get<SharedPreferencesManager>()
            .getString(keyAccessToken)
            ?.isNotEmpty ==
        true;
  }
}
