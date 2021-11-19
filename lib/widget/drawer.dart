import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/67334286?v=4";
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,

              //margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  'Dhanu Thazan',
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text('dhanuthasan08@gmail.com',
                    style: TextStyle(fontSize: 14)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
