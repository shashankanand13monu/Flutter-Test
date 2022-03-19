import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo  Application',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        // itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
            // item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
