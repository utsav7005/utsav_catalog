import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/utils/routes.dart';
import 'package:ucatalog/widgets/home_widgets/add_to_cart.dart';
import 'package:ucatalog/widgets/themes.dart';
import 'package:avatar_view/avatar_view.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Profile"),
      ),
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Hero(
            //   tag: Key(catalog.id.toString()),
            //   child: SizedBox(
            //     height: 350,
            //   ),
            // ),
            Expanded(
              child: Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        AvatarView(
                          radius: 100,
                          borderWidth: 8,
                          borderColor: Mytheme.creamColor,
                          avatarType: AvatarType.RECTANGLE,
                          imagePath: "assets/images/profile.jpg",
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Text(
                          "Utsav Kaim",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'utsav7005@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Mytheme.darkcreamColor,
                                  content: Card(
                                    elevation: 10.0,
                                    color: Mytheme
                                        .darkBluishColor, // Adjust the elevation value as desired
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Not Supported Yet",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Mytheme.creamColor,
                                            // Add any other desired text styles here
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Mytheme.darkBluishColor,
                                minimumSize: Size(100, 50),
                                shape:
                                    StadiumBorder() // Set the desired size of the button
                                ),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: Container(
                              padding: EdgeInsets.only(top: 2, left: 1),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Mytheme.darkBluishColor,
                              ),
                              child: Icon(
                                CupertinoIcons.gear_alt_fill,
                                size: 30,
                                color: Mytheme.creamColor,
                              ),
                            ),
                            title: Text(
                              'Settings',
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Mytheme.darkBluishColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            trailing: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:
                                    Mytheme.darkBluishColor.withOpacity(0.05),
                              ),
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: Container(
                              padding: EdgeInsets.only(top: 2, left: 1),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Mytheme.darkBluishColor,
                              ),
                              child: Icon(
                                CupertinoIcons.gift_alt_fill,
                                size: 30,
                                color: Mytheme.creamColor,
                              ),
                            ),
                            title: Text(
                              'Gift Cards',
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Mytheme.darkBluishColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            trailing: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:
                                    Mytheme.darkBluishColor.withOpacity(0.05),
                              ),
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: Container(
                              padding: EdgeInsets.only(top: 4),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Mytheme.darkBluishColor,
                              ),
                              child: Icon(
                                CupertinoIcons.heart_fill,
                                size: 30,
                                color: Mytheme.creamColor,
                              ),
                            ),
                            title: Text(
                              'Favorites',
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Mytheme.darkBluishColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            trailing: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:
                                    Mytheme.darkBluishColor.withOpacity(0.05),
                              ),
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, MyRoutes.loginRoute),
                          child: Container(
                            child: ListTile(
                              contentPadding: EdgeInsets.all(8),
                              leading: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Mytheme.darkBluishColor,
                                ),
                                child: Icon(
                                  CupertinoIcons.person_badge_minus_fill,
                                  size: 25,
                                  color: Mytheme.creamColor,
                                ),
                              ),
                              title: Text(
                                'Log out',
                                style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Color.fromARGB(255, 208, 60, 60),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
