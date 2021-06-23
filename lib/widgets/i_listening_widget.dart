import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/data/app_data.dart';
import 'package:i_speak/model/profile.dart';
import 'package:i_speak/internal/second_page.dart';

class IListeningWidget extends StatefulWidget {
  const IListeningWidget({Key? key}) : super(key: key);

  @override
  _IListeningWidgetState createState() => _IListeningWidgetState();
}

class _IListeningWidgetState extends State<IListeningWidget> {
  final items = List<String>.generate(20, (index) => '${index + 1}');
  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _iListening(),
            Container(
              height: 45,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                for (int i = 0; i < AppData.profiles.length; i++)
                  Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {
                          profile = AppData.profiles[i];
                          setState(() {});
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${AppData.profiles[i].imageUrl}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )
                    ],
                  ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  _iListening() {
    return TextButton(
      style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(body: SecondPage()); //SecondPage();
              },
              fullscreenDialog: true,
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
    );
  }
}

  // final item = items[index];
  //                   return Dismissible(
  //                       key: Key(item.toString()),
  //                       onDismissed: (direction) {
  //                       setState(() {
  //                       items.removeAt(index);
  //                        });
  //                         ScaffoldMessenger.of(context)
  //                       .showSnackBar(SnackBar(content: Text('$item-й удален из списка')));
  //                       },
  //                       child:
  //                        ),