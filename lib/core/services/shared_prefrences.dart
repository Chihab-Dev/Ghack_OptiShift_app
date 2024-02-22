import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_USER_LOGGED_IN = "PREFS_KEY_USER_LOGGED_IN";
const String PREFS_KEY_ON_BOARDING = "PREFS_KEY_ON_BOARDING";

class AppPrefernces {
  final SharedPreferences _sharedPreferences;

  AppPrefernces(this._sharedPreferences);

  // User logged in

  Future<void> setUserLoggedIn() async {
    await _sharedPreferences.setBool(PREFS_KEY_USER_LOGGED_IN, true);
  }

  bool isUserLoggedIn() {
    return _sharedPreferences.getBool(PREFS_KEY_USER_LOGGED_IN) ?? false;
  }

  Future<void> removeUserLoggedIn() async {
    await _sharedPreferences.remove(PREFS_KEY_USER_LOGGED_IN);
  }

  // on Boarding watched

  Future<void> setUserWatchOnBoarding() async {
    await _sharedPreferences.setBool(PREFS_KEY_ON_BOARDING, true);
  }

  bool isUserWatchOnBoarding() {
    return _sharedPreferences.getBool(PREFS_KEY_ON_BOARDING) ?? false;
  }

  Future<void> removeUserWatchOnBoarding() async {
    await _sharedPreferences.remove(PREFS_KEY_ON_BOARDING);
  }
}
