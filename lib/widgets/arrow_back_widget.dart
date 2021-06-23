import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,color: Colors.black,
        ));
  }
}
