import 'package:flutter/material.dart';
import 'package:new_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const MyDrawer(),
      body: Container(
        constraints: const BoxConstraints(
          maxHeight: 200,
          minHeight: 70,
          minWidth: 70,
          maxWidth: 200,
        ),
        color: Colors.green,
        child: Container(
          height: 10,
          width: 10,
          color: Colors.red,
        ),
      ),
    );
  }
}
