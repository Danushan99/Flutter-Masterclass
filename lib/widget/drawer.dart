import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text('Dhanu'),
            accountEmail: Text('dhanuthasan08@gmail.com'),
          )),
        ],
      ),
    );
  }
}
