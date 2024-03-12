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
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFF2C5364),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Marquee(
                text:
                    "Welcome to HomieGram, your one-stop solution for connecting landlords, students, parents, and businesses in the housing and education sectors. Our platform is designed to streamline the process of finding the perfect accommodation, making it easier for students to secure a place to live, and for landlords to reach a wider audience. Whether you're a student looking for a cozy place to call home, a landlord seeking tenants, or a parent wanting to ensure your child's well-being, HomieGram has something for you. \nFor students, we offer a comprehensive list of available accommodations, complete with photos, amenities, and reviews from previous tenants. For landlords, our platform provides a simple and efficient way to advertise your properties, ensuring they reach the right audience. Parents can rest assured knowing that their children are living in safe and comfortable environments, thanks to our rigorous screening process and community feedback.\n\nBut that's not all. HomieGram also caters to businesses looking to expand their reach within the housing and education sectors. Whether you're a real estate agency, a university, or a company offering services to students, HomieGram is here to help you connect with your target audience.Join us today and experience the HomieGram difference. Together, we can make the process of finding and securing accommodations smoother and more efficient for everyone involved. ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
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
