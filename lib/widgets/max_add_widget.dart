import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaxAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
       color: Color(0xFFD6D6D6),
      ),
      child: IconButton(
        padding: EdgeInsets.only(left: 0.0),
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white,size: 25,),
      ),
    );
  }
}
