import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
    if (value is int) return await sharedPreferences!.setInt(key, value);
    if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    } else {
      return await sharedPreferences!.setDouble(key, value);
    }
  }

  dynamic getData({required String key}) {
    return sharedPreferences!.get(key);
  }
}
