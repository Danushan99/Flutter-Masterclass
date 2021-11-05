import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: const Text("Welcome To App"),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
