import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Scaffold(
        drawer: Drawer(
          elevation: 0.0,
          
        ),
      ),
    );
  }
}
