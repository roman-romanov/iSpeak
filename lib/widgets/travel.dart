import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/settings/settings_pages.dart';
import 'min_add_blue_widget.dart';

class TravelWidget extends StatefulWidget {
  const TravelWidget({Key? key}) : super(key: key);

  @override
  _TravelWidgetState createState() => _TravelWidgetState();
}

class _TravelWidgetState extends State<TravelWidget> {
  Widget _pauseButton =
      Icon(Icons.pause_circle_filled, color: Colors.white, size: 45);
  Widget _playButton =
      Icon(Icons.play_circle_filled, color: Colors.white, size: 45);

  var _minAddBlue = MinAddBlue();
  bool _playButtonPressed = false;
  bool _likeIsPressed = false;

  int number = 11;

  @override
  void initState() {
    number++;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 9,
        top: 10,
      ),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Container(
            width: double.infinity,
            height: 182,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/8a99/bb9a/01e530f68a38f96ed96ed5636b53a168?Expires=1624838400&Signature=ViQBP8s9980uARyTAzuY~bHO3u43q8ksdAgVslJLC8x0Bco17HMbJbWVF4EGfNzSMlS~IKyoxoZKDsYN7Ee~J8mlb85-WbAYUSNwQvqPJOku7ZA-9lZ1b30HJBKTSw8d7vuS0c9sFCAX1e7T5C0591mtV6EWTpYE0WyEhASuhadF2DBHJUSqNJ6Pdb2ZmRCRvIzzaHuNFMf8bLPrGZ2BtwMYFq7ZbpNe5tFaS2GHUvIJ3PbCf7jwdkJM7r4CsFLQ5ToaLb9FC1GbMc7iGj~1GkLrze~1khnstIl9o8pKXMH~iRZynjmc2hNdSe9SxBqOWNJgXGFr8Mu4U9q-VqdyQQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Stack(
                children: [
                  Positioned(
                    left: 16.0,
                    top: 16.0,
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        setState(() {
                          _playButtonPressed = !_playButtonPressed;
                        });
                      },
                      icon: _playButtonPressed ? _pauseButton : _playButton,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '??????????????????????',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(children: [
          Container(
              width: double.infinity,
              height: 102,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 0.1),
                      blurRadius: 1),
                ],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: topMiddleIconAddGradient,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/8a99/bb9a/01e530f68a38f96ed96ed5636b53a168?Expires=1624838400&Signature=ViQBP8s9980uARyTAzuY~bHO3u43q8ksdAgVslJLC8x0Bco17HMbJbWVF4EGfNzSMlS~IKyoxoZKDsYN7Ee~J8mlb85-WbAYUSNwQvqPJOku7ZA-9lZ1b30HJBKTSw8d7vuS0c9sFCAX1e7T5C0591mtV6EWTpYE0WyEhASuhadF2DBHJUSqNJ6Pdb2ZmRCRvIzzaHuNFMf8bLPrGZ2BtwMYFq7ZbpNe5tFaS2GHUvIJ3PbCf7jwdkJM7r4CsFLQ5ToaLb9FC1GbMc7iGj~1GkLrze~1khnstIl9o8pKXMH~iRZynjmc2hNdSe9SxBqOWNJgXGFr8Mu4U9q-VqdyQQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
                      child: IconButton(
                        constraints: BoxConstraints(),
                        onPressed: () {
                          print('IconButton');
                        },
                        icon: Icon(
                          CupertinoIcons.person_solid,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24, right: 24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '@yandzi',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  child: _minAddBlue,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: double.infinity,
                                ),
                              ),
                              Text(
                                '9 ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF7FBBFB),
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    ' Speak',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '907',
                                  style: TextStyle(
                                      color: Color(0xFF7FBBFB),
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    '??????????????',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${number.toString()}  '
                                      /*'12 '*/,
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: _likeIsPressed
                                            ? Color(0xFFFF755C)
                                            : Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    //_like,
                                    CupertinoButton(
                                      minSize: double.minPositive,
                                      padding: EdgeInsets.only(right: 20),
                                      onPressed: () {
                                        print('Like');
                                        setState(() {
                                          if (_likeIsPressed) {
                                            number = number - 1;
                                          } else {
                                            number = number + 1;
                                          }
                                          _likeIsPressed = !_likeIsPressed;
                                        });
                                      },
                                      child: Icon(
                                        CupertinoIcons.heart_fill,
                                        color: Color(0xFFFF755C),
                                        size: 20,
                                      ),
                                    ),
                                    CupertinoButton(
                                      minSize: double.minPositive,
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        print('Message');
                                      },
                                      child: Icon(
                                        CupertinoIcons.chat_bubble_text_fill,
                                        color: Color(0xFF7FBBFB),
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ]),
      ]),
    );
  }
}
