import 'package:ecommerce/featurs/register/ui/widget/register_button.dart';
import 'package:ecommerce/featurs/register/ui/widget/register_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("register"),
          RegisterForm(),
          RegisterButton()
        ],
      ),
    );
  }
}
