import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        // padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.purple),
              accountName: Text('Utsav Kaim'),
              accountEmail: Text('utsav7005@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
