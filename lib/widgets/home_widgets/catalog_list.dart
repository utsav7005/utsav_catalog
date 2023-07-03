import 'package:flutter/material.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/widgets/item_widget.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        return ItemWidget(
          item: CatalogModel.items[index],
        );
      },
    );
  }
}
