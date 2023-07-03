import 'package:flutter/material.dart';
import 'package:ucatalog/models/catalog.dart';
import 'package:ucatalog/widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8)),
            Hero(
              tag: Key(catalog.id.toString()),
              child: SizedBox(
                height: 350,
                child: Image.network(catalog.image),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(8)),
                        Text(
                          catalog.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Mytheme.darkBluishColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          catalog.desc,
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
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(16),
        color: Mytheme.creamColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                '\$${catalog.price}',
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
                  'Add to Cart',
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
