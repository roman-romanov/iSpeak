import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        minSize: double.minPositive,
        padding: EdgeInsets.only(right: 20),
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
          print('Like');
        },
        child: Icon(
          CupertinoIcons.heart_fill,
          color: _isPressed ? Color(0xFFFF755C) : Colors.black87,
          size: 20,
        ),
      ),
    );
  }
}
