import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  RadiantGradientMask(
        child: IconButton(
          alignment: Alignment.topRight,
          constraints: BoxConstraints(),
          padding: EdgeInsets.only(right: 0.0,top: 0.0),
          onPressed: () {
            print('Menu Icon');
          },
          icon: Icon(Icons.menu, size: 27),
        ),
   
    );
  }
}

// градиент меню - иконки
class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [
          Color(0xff7FBBFB),
          Color(0xff9586FD),
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
