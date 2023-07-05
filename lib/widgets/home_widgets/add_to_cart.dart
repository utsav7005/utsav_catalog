import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucatalog/models/cart.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/widgets/themes.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.item);

    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(widget.item);
            setState(() {});
          }
        },
        style: ElevatedButton.styleFrom(
          // Set the button's background color
          shape: StadiumBorder(),
          // You can also specify other properties like padding, textStyle, etc.
        ),
        child: isInCart
            ? Icon(CupertinoIcons.checkmark_alt)
            : Icon(CupertinoIcons.cart_fill_badge_plus));
  }
}
