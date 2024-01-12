import 'package:flutter/material.dart' ;

class MyButton extends StatelessWidget {
  final void Function() ? onTap;
  final String text;
  const MyButton({
    super.key, 
    required this.onTap,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 15, 192, 62),
          borderRadius:BorderRadius.circular((25)),
        ),
        child: Center(
          child: Text(text, 
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
          fontWeight: FontWeight.bold,
          fontSize: 24,
          )) ,)
      )
    );
  }
}