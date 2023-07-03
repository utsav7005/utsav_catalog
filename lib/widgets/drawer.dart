import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Drawer(
          elevation: 16, // Increase the elevation value for higher z-index
          child: Container(
            color: Colors.deepPurple,
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    accountName: Text('Utsav Kaim'),
                    accountEmail: Text('utsav7005@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
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
                    Icons.person,
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
                    Icons.mail,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Email Me",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
