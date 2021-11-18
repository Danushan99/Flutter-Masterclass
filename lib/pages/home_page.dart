import 'package:flutter/material.dart';
import 'package:new_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Material(
        child: Center(
          child: Text("Welcome To Application"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
