import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        'Профиль пользователя',
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
