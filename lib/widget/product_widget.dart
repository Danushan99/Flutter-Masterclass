import 'package:flutter/material.dart';
import 'package:new_app/models/products.dart';

class ProductWidget extends StatelessWidget {
  final Item item;

  const ProductWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.des),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.4,
          style: const TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
