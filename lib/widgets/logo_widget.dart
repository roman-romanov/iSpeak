import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        'iSpeak',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xFF2F2F2F),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
