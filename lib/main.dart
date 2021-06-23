import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'internal/application.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(Application());
}

