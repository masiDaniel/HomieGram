import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:version_1/components/my_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F2027),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypewriterAnimatedTextKit(
              text: ["HomieGram!"],
              textStyle:
                  GoogleFonts.fugazOne(color: Colors.white, fontSize: 40),
              speed: Duration(milliseconds: 200),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFF2C5364),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Marquee(
                text:
                    "\t\t\tWelcome Homie!\nSeamless and mutually beneficial interactions.\noffering a diverse array of housing options, \nthat are conveniently located near their educational institutions. ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                scrollAxis: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 90.0,
                velocity: 90.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 30.0,
                accelerationCurve: Curves.elasticIn,
                decelerationCurve: Curves.easeOut,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            MyButton(
              buttonText: "Login!",
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              buttonText: "Sign Up!",
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
