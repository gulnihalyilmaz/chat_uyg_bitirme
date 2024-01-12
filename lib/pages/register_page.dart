import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function() ? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text cotrollers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

// kullanıcı girişi
  void loigUp() async {
    //String email = emailController.text;
    //final passwordController = TextEditingController();
    //final confirmPasswordController = TextEditingController();
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

            // hesap oluşturma
            const Text(
              "hadi sizin için bir hesap oluşturalım",
            
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
                controller: emailController,
                hintText: "E- mail",
                obscureText: true,),
            const SizedBox(
              height: 25,
            ),
            //şifre doğrulama textfield
            MyTextField(
                controller: confirmPasswordController,
                hintText: "Şifreyi Doğrula ",
                obscureText: true,
                ),
            const SizedBox(
              height: 25,
            ),

            
            // sign up button
            MyButton(
              onTap: () {},
              text: "Kaydol"),

              const SizedBox(height: 50,),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Zaten Üye Misiniz?'),
              SizedBox(width: 4,),

              GestureDetector(
                onTap: widget.onTap,
                child: Text('Şimdi Giriş Yap',
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