import 'package:flutter/material.dart';
import 'icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String dataType;
  String dataToBeShown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0ec923),
        title: Center(
          child: Text(
            'RANDOM USER',
            style: GoogleFonts.patuaOne(
              textStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
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
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                      children: [
                        Text(
                          '$dataType',
                          style: GoogleFonts.openSansCondensed(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Text('$dataToBeShown',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35.0)))
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
                onPress: () {
                  setState(() {
                    dataType = 'My name is';
                    dataToBeShown = name;
                  });
                },
              ),
              AllAboutIcons(
                  iconType: Icons.mail,
                  onPress: () {
                    setState(() {
                      dataType = 'My email is';
                      dataToBeShown = mail;
                    });
                  }),
              AllAboutIcons(
                iconType: Icons.calendar_today,
                onPress: () {
                  setState(() {
                    dataType = 'My Date of Birth is';
                    dataToBeShown = dob;
                  });
                },
              )
            ],
          ),
          SizedBox(height: 5.0, width: double.infinity),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AllAboutIcons(
//
                iconType: Icons.location_city,
                onPress: () {
                  setState(() {
                    dataType = 'I live in';
                    dataToBeShown = location;
                  });
                },
              ),
              AllAboutIcons(

                iconType: Icons.phone,
                  onPress: () {
                    setState(() {
                      dataType='My Phone is';
                      dataToBeShown=number;
                    });
                  },
              ),
              AllAboutIcons(

                iconType: Icons.lock,
                  onPress: () {
                setState(() {
                  dataType='My Password is';
                  dataToBeShown= password;
                });
              },
              )
            ],
          )
        ],
      ),
    );
  }
}
