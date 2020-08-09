import 'package:flutter/material.dart';

class AllAboutIcons extends StatelessWidget {
  AllAboutIcons({@required this.iconType, this.onPress});
  final IconData iconType;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: IconButton(
          icon: Icon(
            iconType,
          ),
          disabledColor: Colors.black,
          color: Colors.green,
          onPressed: onPress,
          iconSize: 55.0,
        ),
      ),
    );
  }
}
