import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Слушатели"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад!'),
        ),
      ),
    );
  }
}
