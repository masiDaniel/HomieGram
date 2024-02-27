import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:version_1/components/my_button.dart';
import 'package:version_1/components/my_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F2027),
      body: Container(
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Sign In",
                style: GoogleFonts.carterOne(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "welcome back!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                hintText: "email",
                obscureText: false,
                suffixIcon: Icons.email,
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                hintText: "password",
                obscureText: true,
                suffixIcon: Icons.password,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "forgot password?",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                buttonText: "sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "continue with ...",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                buttonText: "Google",
                onPressed: () {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}
