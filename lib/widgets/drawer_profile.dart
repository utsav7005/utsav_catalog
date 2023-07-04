import 'package:flutter/material.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/widgets/home_widgets/add_to_cart.dart';
import 'package:ucatalog/widgets/themes.dart';

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
              child: Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpg"),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Text(
                          "catalog.name",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'catalog.desc',
                          style: TextStyle(
                            fontSize: 16,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque odio urna, gravida nec semper sed, sodales at magna. Pellentesque at quam rhoncus lacus commodo vestibulum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque odio urna, gravida nec semper sed, sodales at magna. Pellentesque at quam rhoncus lacus commodo vestibulum.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
