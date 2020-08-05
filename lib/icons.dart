import 'package:flutter/material.dart';

class AllAboutIcons extends StatelessWidget {
  AllAboutIcons(
      {@required this.iconType, this.colour, @required this.onPress});
  final IconData iconType;
  final colour;
  final onPress;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: GestureDetector(
            onTap: onPress,
            child: Icon(
              iconType,
              size: 55.0,
              color: colour,
            ),
          ),
        ),
    );
  }
}
