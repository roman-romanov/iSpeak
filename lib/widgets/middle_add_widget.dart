import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_speak/settings/settings_pages.dart';

class MiddleAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: topMiddleIconAddGradient,
      ),
      child: IconButton(
        padding: EdgeInsets.only(left: 0.0),
        onPressed: () {
          print('Middle Add');
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
