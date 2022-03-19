import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

final profileurl = "https://freesvg.org/img/winkboy.png";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Color.fromARGB(255, 228, 4, 97),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 4, 102),
                ),
                accountName: Text("Shashank"),
                accountEmail: Text("shashank@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profileurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text(
                'Profile',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings, color: Colors.black),
              title: Text(
                'Settings',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.share, color: Colors.black),
              title: Text(
                'Share',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.black),
              title: Text(
                'Email us',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
