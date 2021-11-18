import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/67334286?v=4";
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              //margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Dhanu Thazan'),
                  accountEmail: Text('dhanuthasan08@gmail.com'),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)))),
        ],
      ),
    );
  }
}
