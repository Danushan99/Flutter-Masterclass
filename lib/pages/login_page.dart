import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:new_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool _changeBtn = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                height: 400,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter The Name", labelText: "User Name"),
                      onChanged: (value) {
                        name = value;
                        build(context);
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter The Password",
                          labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          _changeBtn = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        print("done its work");
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: _changeBtn ? 50 : 140.0,
                        height: 50,
                        alignment: Alignment.center,
                        child: _changeBtn
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius:
                                BorderRadius.circular(_changeBtn ? 50 : 8)),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     //for testing button works
                    //     // ignore: avoid_print
                    //     print("done its work");
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(150, 40),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
