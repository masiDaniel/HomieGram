import 'package:flutter/material.dart';
import 'package:version_1/main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    navigateToPageAfterDelay(context, '/welcomepage', 5);
    return Scaffold(
      backgroundColor: Color(0xFF203A43),
      body: Center(
        child: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/landing.jpeg',
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
