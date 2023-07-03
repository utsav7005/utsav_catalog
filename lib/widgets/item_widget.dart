import 'package:ucatalog/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:ucatalog/widgets/themes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
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
              item.desc,
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
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print("Buy ${item.name}");
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Mytheme.darkBluishColor,
                    shape: StadiumBorder(),
                  ),
                  child: Text("Buy"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
