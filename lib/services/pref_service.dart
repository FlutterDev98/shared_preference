// ignore_for_file: unnecessary_null_comparison
// @dart=2.9
import 'dart:convert';
import 'package:shared_preference/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:core';

class Pref {
  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    prefs.setString("user", stringUser);
  }

  static Future<User> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = prefs.getString("user");
    if (stringUser == null || stringUser.isEmpty) {
      return null;
    }
    Map map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}
