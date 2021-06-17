import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/widgets/bottom_navigator_widget.dart';
import 'package:i_speak/widgets/health.dart';
import 'package:i_speak/widgets/history_in_detail.dart';
import 'package:i_speak/widgets/i_am_being_listened_to.dart';
import 'package:i_speak/widgets/i_listening_widget.dart';
import 'package:i_speak/widgets/menu_widget.dart';
import 'package:i_speak/widgets/middle_add_widget.dart';
import 'package:i_speak/widgets/nature.dart';
import 'package:i_speak/widgets/travel.dart';

import '../widgets/logo_widget.dart';

class Tape extends StatefulWidget {
  const Tape({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TapeState createState() => _TapeState();
}

class _TapeState extends State<Tape> {
  var _middleIconAdd = MiddleAdd();
  var _logo = Logo();
  var _menuIconButton = MenuIconButton();
  var _iListeningWidget = IListeningWidget();
  var _iMBeingListenedToWidget = IMBeingListenedToWidget();
  var _travelWidget = TravelWidget();
  var _hystoryInDetails = HistoryInDetailsWidget();
  var _bottomNavigatorWidget = BottomNavigatorWidget();
  var _natureWidget = NatureWidget();
  var _healthWidget = HealthWidget();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0.0,
            actions: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _middleIconAdd,
                      _logo,
                      _menuIconButton,
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Column(
                                  children: <Widget>[
                                    _iListeningWidget,
                                    _iMBeingListenedToWidget,
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Column(children: [
                                _travelWidget,
                                _hystoryInDetails,
                                _natureWidget,
                                _healthWidget,
                              ]),
                            ),
                          ],
                        );
                      }),
                ),
                _bottomNavigatorWidget
              ],
            ),
          ),
        );
      });
    });
  }
}


// class Tape extends StatefulWidget {
//   const Tape({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _TapeState createState() => _TapeState();
// }

// class _TapeState extends State<Tape> {
//   var _middleIconAdd = MiddleAdd();
//   var _logo = Logo();
//   var _menuIconButton = MenuIconButton();
//   var _iListeningWidget = IListeningWidget();
//   var _iMBeingListenedToWidget = IMBeingListenedToWidget();
//   var _travelWidget = TravelWidget();
//   var _hystoryInDetails = HistoryInDetailsWidget();
//   var _bottomNavigatorWidget = BottomNavigatorWidget();

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       return OrientationBuilder(builder: (context, orientation) {
//         return Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             centerTitle: true,
//             backgroundColor: Colors.white.withOpacity(0),
//             elevation: 0.0,
//             actions: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       _middleIconAdd,
//                       _logo,
//                       _menuIconButton,
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           body: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 19.0),
//                   child: Column(
//                     children: <Widget>[
//                       _iListeningWidget,
//                       _iMBeingListenedToWidget,
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                       itemCount: 2,
//                       itemBuilder: (context, index) {
//                         return Column(
//                           children: [
//                             _travelWidget,
//                             _hystoryInDetails,
//                           ],
//                         );
//                       }),
//                 ),
//                 _bottomNavigatorWidget
//               ],
//             ),
//           ),
//         );
//       });
//     });
//   }
