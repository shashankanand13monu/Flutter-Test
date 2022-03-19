import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo  Application',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World kais'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
