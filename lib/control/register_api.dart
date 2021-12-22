import 'dart:convert';

import 'package:http/http.dart' as http;

class GetUsersRegister {
 static  getRegisterData(String name, String email, String password) async {
    var url = Uri.parse("https://retail.amit-learning.com/api/register");
    print(url);
    var response = await http
        .post(url, body: {"name": name, "email": email, "password": password});
    var resposebody = jsonDecode(response.body);
    print(resposebody);
  }
}
