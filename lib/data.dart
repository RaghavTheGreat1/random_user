
import 'dart:convert';

import 'package:http/http.dart' as http;
String name;
String picture;
String mail;
String number;
String password;
String location;
String dob;

class RandomUser {


  Future<void> fetchData() async {

    http.Response response  = await http.get('https://randomuser.me/api/');
//    print(response.body);
    var data =  jsonDecode(response.body);
//    print(data);
  name =  data['results'][0]['name']['title']+' '+data['results'][0]['name']['first']+' '+data['results'][0]['name']['last'];
  mail = data['results'][0]['email'];
  number = data['results'][0]['phone'];
  password  = data['results'][0]['login']['password'];
  location = data['results'][0]['location']['city'];
  dob = data['results'][0]['dob']['date'].toString().substring(0,9);
  picture= data['results'][0]['picture']['medium'];
  }
}
void main() => RandomUser()..fetchData();
