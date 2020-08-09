import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dataType;
  String dataToBeShown;
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
                            backgroundImage: NetworkImage(picture)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Row()],
            ),
          ],
        ),
      ),
    );
  }
}
