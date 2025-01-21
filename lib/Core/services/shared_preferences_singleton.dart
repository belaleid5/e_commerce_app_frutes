import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSingleton {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool val) {
    _instance.setBool(key, val);
  }

  static getBool(String key) {
 return   _instance.getBool(key) ?? false;
  }


}
