import 'package:flutter/material.dart';
import 'package:ucatalog/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 12, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Catalog App',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Mytheme.darkBluishColor,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, top: 8),
                child: Text(
                  'Trending Products',
                  style: TextStyle(
                    fontSize: 16,
                    color: Mytheme.darkBluishColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
