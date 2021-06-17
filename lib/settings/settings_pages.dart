import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//градиент для средней кнопки
Color backgroundColor = Color(0xff7FBBFB);
Color backForFields = Color(0xff9586FD);

Gradient? topMiddleIconAddGradient = LinearGradient(
  colors: [backgroundColor, backForFields],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

//градиент для красной кнопки
Color bgdColor = Color(0xFFFF755C);
Color bkForFields = Color(0xFFFF755C);

Gradient? redButtonIconAddGradient = LinearGradient(
  colors: [bgdColor, bkForFields],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

//градиент для иконки меню
Color menuBackgroundColor = Color(0xff7FBBFB);
Color menuBackForFields = Color(0xff9586FD);

Gradient? menuIconGradient = LinearGradient(
  colors: [menuBackgroundColor, menuBackForFields],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);


 
