import 'dart:convert';

import 'package:http/http.dart' as http;

class GetUsersLogin {
  static getForgotpasswordData(email) async {
    var url = Uri.parse("https://retail.amit-learning.com/api/login");
    print(url);
    var response =
        await http.post(url, body: {"email": email});
    var resposebody = jsonDecode(response.body);
    print(resposebody);
  }
  static getLoginData(String email, String password) async {
    var url = Uri.parse("https://retail.amit-learning.com/api/login");
    print(url);
    var response =
        await http.post(url, body: {"email": email, "password": password});
    var resposebody = jsonDecode(response.body);
    print(resposebody);
  }
}
