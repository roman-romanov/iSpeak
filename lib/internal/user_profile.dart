import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_speak/data/app_data.dart';
import 'package:i_speak/model/profile.dart';
import 'package:i_speak/widgets/bottom_navigator_widget.dart';
import 'package:i_speak/widgets/user_profile_logo.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePage createState() => _UserProfilePage();
}

class _UserProfilePage extends State<UserProfilePage> {
  Profile? profile = Profile();
  var _bottomNavigator = BottomNavigatorWidget();

  @override
  void initState() {
    profile = AppData.profiles[0];
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
                  _userProfileLogo,
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 350),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                SlideTransition(
                    child: child,
                    position: Tween<Offset>(
                            begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                        .animate(animation)),
            child: HeaderSection(
              profile: profile,
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Wrap(
              children: [
                for (int i = 0; i < AppData.profiles.length; i++)
                  GestureDetector(
                    onTap: () {
                      profile = AppData.profiles[i];
                      setState(() {});
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.width / 3,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                NetworkImage('${AppData.profiles[i].imageUrl}'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
              ],
            ),
          ),
          _bottomNavigator
        ],
      ),
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
          Text(
            '${profile!.fullname}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
