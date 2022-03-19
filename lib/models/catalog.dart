class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Coffee",
      desc:
          "Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. Coffee is brewed by diluting a large amount of nearly boiling water with the roasted coffee beans.",
      imageUrl: "https://thumbs.dreamstime.com/b/cup-cofee-20825194.jpg",
      price: 10.0,
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String imageUrl;
  final double price;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.price,
  });
}
