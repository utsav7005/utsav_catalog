import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/utils/routes.dart';
import 'package:ucatalog/widgets/home_widgets/catalog_header.dart';
import 'package:ucatalog/widgets/home_widgets/catalog_list.dart';
import 'package:ucatalog/widgets/drawer.dart';
import 'dart:convert';

import 'package:ucatalog/widgets/themes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: Mytheme.darkBluishColor,
        child: Icon(CupertinoIcons.cart),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: (CatalogModel.items != null &&
                        CatalogModel.items.isNotEmpty)
                    ? CatalogList()
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
