import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  // Initialize SharedPreferences
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

  // Save data to SharedPreferences
  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  // Get data from SharedPreferences
  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  // Remove data from SharedPreferences
  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  // Check if key exists in SharedPreferences
  Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }

  // Clear all data from SharedPreferences
  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  // Put data in SharedPreferences
  Future<dynamic> put({required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }
}
