import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
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
          style: TextStyle(
              fontSize: 24,
              color: Mytheme.darkBluishColor,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily),
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
  const _CartTotal({super.key});

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
                '\$99999',
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
                  // Implement your buy button functionality here
                },
                style: ElevatedButton.styleFrom(
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(CupertinoIcons.arrow_right),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.circle,
                ),
              ),
              title: Text("Item 1"),
            ));
  }
}
