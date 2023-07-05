// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ucatalog/models/catalog.dart';
// import 'package:ucatalog/utils/routes.dart';
// import 'package:ucatalog/widgets/home_widgets/catalog_header.dart';
// import 'package:ucatalog/widgets/home_widgets/catalog_list.dart';
// import 'package:ucatalog/widgets/drawer.dart';
// import 'dart:convert';
// import 'package:ucatalog/widgets/themes.dart';
// import 'package:ucatalog/widgets/theme_manager.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   loadData() async {
//     await Future.delayed(Duration(seconds: 2));
//     final catalogJson =
//         await rootBundle.loadString("assets/files/catalog.json");
//     final decodedData = jsonDecode(catalogJson);
//     var productsData = decodedData["products"];
//     CatalogModel.items = List.from(productsData)
//         .map<Item>((item) => Item.fromMap(item))
//         .toList();
//     setState(() {});
//   }

//   ThemeManager _themeManager = ThemeManager();
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _textTheme = Theme.of(context).textTheme;
//     bool isDark = Theme.of(context).brightness == Brightness.dark;
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Switch(
//               value: _themeManager.themeMode == ThemeMode.dark,
//               onChanged: (newValue) {
//                 _themeManager.toggleTheme(newValue);
//               }),
//           IconButton(
//             icon: Icon(
//               Icons.notifications, // Change to the desired icon
//             ),
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Card(
//                     elevation: 10.0,
//                     color: Mytheme
//                         .darkcreamColor, // Adjust the elevation value as desired
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "No Notifications",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                           textStyle: TextStyle(
//                             color: Mytheme.creamColor,
//                             // Add any other desired text styles here
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//         centerTitle: true,
//         title: Text(
//           "Catalog App",
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
//         child: Icon(
//           CupertinoIcons.cart_fill,
//           size: 30,
//         ),
//       ),
//       drawer: MyDrawer(), // Add MyDrawer as the drawer property
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CatalogHeader(),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: (CatalogModel.items != null &&
//                         CatalogModel.items.isNotEmpty)
//                     ? CatalogList()
//                     : Center(
//                         child: CircularProgressIndicator(),
//                       ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
