import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/data/app_data.dart';
import 'package:i_speak/data/db.dart';
import 'package:i_speak/model/profile.dart';
import 'package:i_speak/widgets/arrow_back_widget.dart';
import 'package:i_speak/widgets/bottom_navigator_widget.dart';
import 'package:i_speak/widgets/user_profile_logo.dart';

class SettingsUserProfilePage extends StatefulWidget {
  const SettingsUserProfilePage({Key? key}) : super(key: key);

  @override
  _SettingsUserProfilePage createState() => _SettingsUserProfilePage();
}

class _SettingsUserProfilePage extends State<SettingsUserProfilePage> {
  var _arrowBack = ArrowBackWidget();
  Future<File>? imageFile;
  Image? images;
  DB? db;
  List<Profile>? profile;
  Profile? profil = Profile();
  var _bottomNavigator = BottomNavigatorWidget();

  @override
  void initState() {
    db = DB();
    profil = AppData.profiles[0];
    super.initState();
  }

  var _userProfileLogo = UserProfileLogo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0.0,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _arrowBack,
                  _userProfileLogo,
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          HeaderSection(
            profile: profil,
          ),
          SizedBox(height: 40),
          Container(
            child: Wrap(
              children: [],
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
      bottomNavigationBar: _bottomNavigator,
    );
  }
}

class HeaderSection extends StatelessWidget {
  final Profile? profile;
  HeaderSection({Key? key, this.profile})
      : super(key: ValueKey<String?>(profile!.imageUrl));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage('${profile!.imageUrl}'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${profile!.fullname}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit_rounded))
            ],
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${profile!.post}',
                    textAlign: TextAlign.start,
                  )
                ]),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '${profile!.countPost}',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Post')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${profile!.totalFollowers}',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${profile!.totalFollowing}',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Following')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
