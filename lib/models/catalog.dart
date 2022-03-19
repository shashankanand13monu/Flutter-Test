class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String imageUrl;
  final int price;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.price,
  });
// Choosing between 2 constructor like Animal-> dog,cat
  factory Item.fromMap(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      desc: json['desc'],
      imageUrl: json["imageUrl"],
      price: json['price'],
    );
  }

  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'imageUrl': imageUrl,
        'price': price,
      };
}
