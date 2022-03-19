import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => Navigator.pushNamed(
          context,
          MyRoutes.loginRoute,
          arguments: item,
        ),
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('\$${item.price}'),
      ),
    );
  }
}
