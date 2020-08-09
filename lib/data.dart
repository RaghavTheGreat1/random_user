
import 'package:http/http.dart' as http;

class RandomUser {
  var name;
  var picture;
  var mail;
  var number;
  var password;
  var location;
  var dob;

  Future<void> fetchData() async {
    var response = await http.get('https://randomuser.me/api/');
    print(response);
  }

}
void main() => RandomUser()..fetchData();
