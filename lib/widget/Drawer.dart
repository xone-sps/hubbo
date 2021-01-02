import 'package:flutter/material.dart';
import 'package:hubbo/main.dart';
import 'package:hubbo/screens/HomeScreen.dart';
import 'package:hubbo/screens/ActivityScreen.dart';
import 'package:hubbo/components/AppSignUp.dart';
import 'package:hubbo/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hubbo/screens/Profile.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                )),
            _createDrawerItem(
                icon: Icons.favorite_border,
                text: 'Activity',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityScreen()),
                )),
            _createDrawerItem(
                icon: FontAwesomeIcons.blog,
                text: 'Blog',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppSignIn()),
                )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ActivityScreen()),
                )),
            _createDrawerItem(
                icon: Icons.person_outline,
                text: 'My Profile',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Profile()),
                )),
            Divider(height: 10,),
            _createDrawerItem(
                icon: FontAwesomeIcons.signInAlt,
                text: 'Sign In',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppSignIn()),
                )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign Up',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppSingUp()),
                )),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/hubbo_logo.png',
              width: 190,
              height: 190,
            ),
          ),
        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Developed for volunteer purpose by 'HAL TECH'",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
