import 'package:flutter/cupertino.dart';
import 'package:ucatalog/models/cart.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:ucatalog/widgets/home_widgets/add_to_cart.dart';
import 'package:ucatalog/widgets/themes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    String shortDesc =
        item.desc.length > 10 ? item.desc.substring(0, 10) + "..." : item.desc;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: Container(
            width: 64,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              // color: Mytheme.creamColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              shortDesc,
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$${item.price}",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: AddToCart(item: item),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
