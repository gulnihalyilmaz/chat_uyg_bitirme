import 'package:chat_uyg_bitirme/components/my_button.dart';
import 'package:chat_uyg_bitirme/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function() ? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text cotrollers
  TextEditingController emailController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
// kullanıcı kaydolma sing in
void signIn() {} 
  void loigUp() async {
    String email = emailController.text;
    final passwordController = TextEditingController();
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
              size: 100,
              color: Colors.grey,
            ),

            // wolcome back message
            const Text(
              "Welcome back you've been missed",
            
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            // email textfield
            MyTextField(
                hintText: "fgllşfdg",
                obscureText: false,
                controller: emailController),
            const SizedBox(
              height: 15,
            ),

            //password textfield
            MyTextField(
                hintText: "fgllşfdg",
                obscureText: true,
                controller: emailController),

            const SizedBox(
              height: 25,
            ),
            // sign in button
            MyButton(
              onTap: signIn,
              text: "Giriş yap"),
              const SizedBox(height: 50,),

            //not a member? register now
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Üye değil misiniz?'),
              const 
              SizedBox(width: 4,)
              GestureDetector(
                onTap: widget.onTap,
                
                child: Text('Şimdi Kaydol',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
              )
              ],)

          ],
        ),
      ),
    ));
  }
}
