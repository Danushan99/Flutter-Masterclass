class Item {
  final String id;
  final String name;
  final String des;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.des,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "prd01",
      name: "iphone 13",
      des: "an iphone",
      price: 99,
      color: "#33505a",
      image: "url")
];
