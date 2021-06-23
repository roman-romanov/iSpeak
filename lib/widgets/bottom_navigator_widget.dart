import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigatorWidgetState createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 85,
          child: IconButton(
            alignment: Alignment.center,
            constraints: BoxConstraints(),
            onPressed: () {
              print('Add');
            },
            icon: Icon(
              CupertinoIcons.add_circled_solid,
              color: Color(0xFFD6D6D6),
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}
