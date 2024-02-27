import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:version_1/components/my_button.dart';
import 'package:version_1/components/my_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  void signUserIn() {}

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
              Text(
                "Sign Up",
                style: GoogleFonts.carterOne(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                hintText: "First name",
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "Last name", obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                hintText: "Email",
                obscureText: false,
                suffixIcon: Icons.email,
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                hintText: "Password",
                obscureText: true,
                suffixIcon: Icons.password_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                  hintText: "password confirmation", obscureText: true),
              const SizedBox(
                height: 45,
              ),
              MyButton(
                buttonText: "Sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Already have an account? sign in!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
