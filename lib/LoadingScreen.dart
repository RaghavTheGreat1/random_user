import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:random_user/404.dart';
import 'package:random_user/data.dart';
import 'package:random_user/main_page.dart';
bool result;
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> checkConnection()async{
    result =  await DataConnectionChecker().hasConnection;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (result == false) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ConnectionError();
      }));
    }
    else  {
     RandomUserData()..fetchData();
     Navigator.push(context, MaterialPageRoute(builder: (context){
       return MainPage();
     }));
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SpinKitChasingDots(
            color: Color(0xFF0ec923),
          ) ,
        ),
      ),
      );

  }
}
