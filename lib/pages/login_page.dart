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

  moveToHone(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _changeBtn = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter The User Name";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter The Password";
                        } else if (value.length < 6) {
                          return "Password Should Be 6 Digits";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () => moveToHone(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: _changeBtn ? 50 : 140.0,
                        height: 50,
                        alignment: Alignment.center,
                        child: _changeBtn
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(_changeBtn ? 50 : 8)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
