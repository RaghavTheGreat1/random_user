import 'dart:ui';
import 'icons.dart';
import 'data.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF0ec923),
          title: Center(
            child: Text(
              'RANDOM USER',
              style: GoogleFonts.patuaOne(
                textStyle:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        body: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color(0xFFFF5F5F5),
                      child: CircleAvatar(
                        radius: 98.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                            radius: 90.0,
                            backgroundColor: Colors.blue,
                            backgroundImage: AssetImage('images/images.png')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                            'HERE GOES DATA TYPE',
                            style: GoogleFonts.openSansCondensed(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Text('here goes pulled data',
                              style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w900, fontSize: 35.0)))
                        ],
                      )),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AllAboutIcons(

                  iconType: Icons.account_circle,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
//                  },
                ),
                AllAboutIcons(
//                  colour: selectedColour,
                  iconType: Icons.mail,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
////                  },
                ),
                AllAboutIcons(
//                  colour: selectedColour,
                  iconType: Icons.calendar_today,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
//                  },
                )
              ],
            ),
            SizedBox(height: 5.0, width: double.infinity),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AllAboutIcons(
//                  colour: selectedColour,
                  iconType: Icons.location_city,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
//                  },
                ),
                AllAboutIcons(
//                  colour: selectedColour,
                  iconType: Icons.phone,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
//                  },
                ),
                AllAboutIcons(
//                  colour: selectedColour,
                  iconType: Icons.lock,
//                  onPress: () {
//                    setState(() {
//                      selectedColour = Colors.green;
//                    });
//                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
