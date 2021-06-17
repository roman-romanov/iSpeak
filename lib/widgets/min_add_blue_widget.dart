import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_speak/settings/settings_pages.dart';

class MinAddBlue extends StatefulWidget {
  @override
  _MinAddBlue createState() => _MinAddBlue();
}

class _MinAddBlue extends State<MinAddBlue> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient:
            _isPressed ? redButtonIconAddGradient : topMiddleIconAddGradient,
      ),
      child: IconButton(
        splashRadius: 5.0,
        padding: EdgeInsets.only(left: 0.0),
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
          print(_isPressed ? 'Подписался' : 'Отписался');
        },
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
