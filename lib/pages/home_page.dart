import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 30;
  final name = "utsav";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Text("Welcome to $days of Flutter by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
