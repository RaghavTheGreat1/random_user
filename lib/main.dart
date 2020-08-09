import 'dart:ui';

import 'package:random_user/LoadingScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(RandomUser());

class RandomUser extends StatefulWidget {
  @override
  _RandomUserState createState() => _RandomUserState();
}

class _RandomUserState extends State<RandomUser> {
  Color selectedColour = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }
}
