import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText; // Add a parameter for the button text
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.onPressed, // Initialize the parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 105),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 5, 5, 5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            buttonText, // Use the parameter for the text
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
