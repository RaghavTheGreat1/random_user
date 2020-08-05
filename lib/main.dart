import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(RandomUser());

class RandomUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          backgroundColor: Color(0xFF0ec923),
          title: Center(
            child: Text(
              'RANDOM USER',
              style: GoogleFonts.patuaOne(textStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w500),),
              ),
            ),
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  child: CircleAvatar(
                    radius:100.0,
                    backgroundColor: Color(0xFFFF5F5F5),
                    child: CircleAvatar(
                      radius: 98.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 90.0,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  ),
                )]             )
              ],
            ),
        ),
        );
  }
}
