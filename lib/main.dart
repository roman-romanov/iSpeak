import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_speak/pages/tape.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(ISpeak());
}

class ISpeak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iSpeak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tape(title: 'iSpeak'),
    );
  }
}
