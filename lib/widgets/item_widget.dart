import 'package:flutter/cupertino.dart';
import 'package:ucatalog/models/cart.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:flutter/material.dart';
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
              color: Mytheme.creamColor,
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
              style: TextStyle(
                color: Mytheme.darkBluishColor,
              ),
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
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: _AddToCart(item: item),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddToCart extends StatefulWidget {
  const _AddToCart({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isAdded = !isAdded;
        });
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.item);
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            Mytheme.darkBluishColor, // Set the button's background color
        shadowColor: Mytheme.darkBluishColor,
        shape: StadiumBorder(),
        // You can also specify other properties like padding, textStyle, etc.
      ),
      child: isAdded
          ? Icon(CupertinoIcons.checkmark_alt)
          : Text(
              "Add To Cart",
            ),
    );
  }
}
