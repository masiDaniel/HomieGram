import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyDashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.all(12),
          child: Icon(
            Icons.person,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        )
      ],
      backgroundColor: Color(0xFF0F2027),
      centerTitle: false,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'assets/landing.jpeg',
            height: 00,
            width: 60,
          ),
        ),
      ),
      title: Text(
        "Dashboard",
        style: GoogleFonts.sriracha(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
