import 'package:flutter/material.dart';
import 'package:random_user/first_screen.dart';

void main() => runApp(RandomUser());

class RandomUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
