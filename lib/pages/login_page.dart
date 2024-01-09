import 'package:chat_uyg_bitirme/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text cotrollers
  TextEditingController emailController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();

  void loigUp() async {
    String email = emailController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            // logo
            const Icon(
              Icons.message,
              size: 80,
              color: Colors.grey,
            ),

            // wolcome back message
            const Text(
              "Welcome back you've been missed",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            // email textfield
            MyTextField(
                hintText: "fgllşfdg",
                obscureText: false,
                controller: emailController),
            const SizedBox(
              height: 50,
            ),

            //password textfield
            MyTextField(
                hintText: "fgllşfdg",
                obscureText: true,
                controller: emailController)
            // sign in button

            //not a member? register now
          ],
        ),
      ),
    ));
  }
}
