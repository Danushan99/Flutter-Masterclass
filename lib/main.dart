import 'package:flutter/material.dart';
import 'package:new_app/pages/home_page.dart';
import 'package:new_app/pages/login_page.dart';
import 'package:new_app/utils/routes.dart';
import 'package:new_app/widget/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //debug banner close
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
