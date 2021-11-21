import 'package:flutter/material.dart';
import 'package:new_app/models/products.dart';

class ProductWidget extends StatelessWidget {
  final Item item;

  const ProductWidget({Key? key, required this.item}) : super(key: key);
  // : assert(item != null),
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image), 
    );
  }
}
