class ProductsModel {
  static final items = [
    Item(
        id: "prd01",
        name: "IPhone 13 pro",
        des: "Apple iPhone 12th generation",
        price: 99,
        color: "#33505a",
        image:
            "https://cdn11.bigcommerce.com/s-akig30/images/stencil/original/products/597/3518/WEB-14_13Pro_PIPT-71-front_clr__43790.1635208751.jpg?c=2")
  ];
  
}

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
