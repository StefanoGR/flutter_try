import 'dart:convert';

import 'package:first_try/data/network/model/random_user.dart';
import 'package:first_try/view/user_item.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<RandomUser>> getUsers() async {
    final response = await http.get("https://randomuser.me/api/?results=20");
    var j = json.decode(utf8.decode(response.bodyBytes));
    final responseJson = j['results'];
    return responseJson
        .map<RandomUser>((json) => RandomUser.fromJson(json))
        .toList();
  }
}
