import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LikeCount extends StatefulWidget {
  const LikeCount({Key? key}) : super(key: key);

  @override
  _LikeCountState createState() => _LikeCountState();
}

class _LikeCountState extends State<LikeCount> {
  int _likeCount = 0;
  @override
  void initState() {
    _likeCount++;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${_likeCount.toString()}',
      style: TextStyle(
        fontFamily: 'Inter',
        color: Color(0xFFFF755C),
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
