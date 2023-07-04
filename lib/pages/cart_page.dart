import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ucatalog/models/cart.dart';
import 'package:ucatalog/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: _CartList(),
          ),
        ),
        Divider(),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                '\$${_cart.totalPrice}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Mytheme.darkBluishColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
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
                            "Buying Not Supported Yet",
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
                    shape: StadiumBorder() // Set the desired size of the button
                    ),
                child: Text(
                  'Buy',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Text('Nothing to show')
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(CupertinoIcons.arrow_right),
                  trailing: IconButton(
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      setState(() {});
                    },
                    icon: Icon(
                      CupertinoIcons.clear_circled,
                    ),
                  ),
                  title: Text(
                    _cart.items[index].name,
                  ),
                ));
  }
}
