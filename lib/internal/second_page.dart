import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/widgets/bottom_navigator_widget.dart';
import 'package:i_speak/widgets/logo_widget.dart';
import 'package:i_speak/widgets/menu_widget.dart';
import 'package:i_speak/widgets/middle_add_widget.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPage createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  final _middleIconAdd = MiddleAdd();
  final _logo = Logo();
  final _menuIconButton = MenuIconButton();
  final  _bottomNavigatorWidget =  BottomNavigatorWidget();

  final List<String> text = [
    'Трава у дома',
    'Земля в иллюминаторе',
    'Земля в иллюминаторе',
    'Земля в иллюминаторе видна',
    'Как сын грустит о матери как сын грустит о матери',
    'Грустим мы о Земле она одна',
    'А звезды тем не менее а звезды тем не менее',
    'Чуть ближе но все так же холодны',
    'И как в часы затмения и как в часы затмения',
    'Ждем света и земные видим сны',
    'И снится нам не рокот космодрома',
    'Ни эта ледяная синева а снится нам трава',
    'Трава у дома зеленая зеленая трава',
    'А мы летим орбитами путями не избитыми',
    'Прошит метеоритами простор',
    'Оправдан риск и мужество космическая музыка',
    'Вплывает в деловой наш разговор',
    'В какой-то дымке матовой',
    'Земля в иллюминаторе',
    'Вечерняя и ранняя заря',
    'А сын грустит о матери а сын грустит о матери',
    'Ждет сына мать а сыновей Земля',
    'И снится нам не рокот космодрома',
    'Ни эта ледяная синева а снится нам трава',
    'Трава у дома зеленая зеленая трава',
    'И снится нам не рокот космодрома',
    'Ни эта ледяная синева а снится нам трава',
    'Трава у дома зеленая зеленая трава',
    'И снится нам не рокот космодрома',
    'Ни эта ледяная синева а снится нам трава',
    'Трава у дома зеленая зеленая трава',
  ];


  var items =
      List.generate(20, (index) => 'Text ${index.toString()}');

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${items[index].toString()}'),
                  tileColor: index % 2 == 0
                      ? Colors.grey.shade50
                      : Colors.blue.shade50,
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Назад!'),
            ),
          ),
           _bottomNavigatorWidget
        ],
      ),
    );
  }
}
