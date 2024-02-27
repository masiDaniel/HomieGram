import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.headerTitle});
  final String headerTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 61,
        width: 360,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerTitle,
              style: GoogleFonts.sriracha(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
