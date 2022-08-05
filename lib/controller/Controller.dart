import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class controllerlogin extends GetxController {
  getrespons(String uri) async {
    try {
      var response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        var resposebody = jsonDecode(response.body);
        return resposebody;
      } else {
        print("there is wrong ${response.statusCode}");
      }
    } catch (e) {
      print("there is wrong ${e}");
    }
  }

  postrespons(String uri, Map data) async {
    try {
      var response = await http.post(Uri.parse(uri), body: data);
      if (response.statusCode == 200) {
        var resposebody = await jsonDecode(response.body);
        return resposebody;
      } else {
        print("there is wrong ${response.statusCode}");
      }
    } catch (e) {
      print("there is wrong ${e}");
    }
  }
}
