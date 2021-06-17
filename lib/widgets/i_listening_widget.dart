import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/pages/second_page.dart';
import 'package:i_speak/settings/settings_pages.dart';

class IListeningWidget extends StatefulWidget {
  const IListeningWidget({Key? key}) : super(key: key);

  @override
  _IListeningWidgetState createState() => _IListeningWidgetState();
}

class _IListeningWidgetState extends State<IListeningWidget> {
  final items = List<String>.generate(20, (index) => '${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              style:
                  ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SecondPage();
                  },
                ));
              },
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Я слушаю',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                      text: ' 28 ',
                      style: TextStyle(
                          color: Color(0xFF7FBBFB),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: 'человека',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              height: 45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    //final item = items[index];
                    return //Dismissible(
                        //key: Key(item.toString()),
                        // onDismissed: (direction) {
                        //setState(() {
                        // items.removeAt(index);
                        //  });
                        //   ScaffoldMessenger.of(context)
                        // .showSnackBar(SnackBar(content: Text('$item-й удален из списка')));
                        // },
                        //child:
                        Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 9.0),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: topMiddleIconAddGradient,
                          //color: Colors.blue,
                        ),
                        child: IconButton(
                          constraints: BoxConstraints(),
                          onPressed: () {
                            print('IconButton');
                          },
                          icon: Icon(
                            CupertinoIcons.person_solid,
                            color: Colors.white,//index % 2 == 0 ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                      //),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
