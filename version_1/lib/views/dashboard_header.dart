import 'dart:ui';

import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
              width: 250,
              height: double.infinity,
              child: Image.asset(
                'assets/homeview.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        pageSnapping: false,
        scrollBehavior:
            // configuring to swipe pageview with several device
            ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        }),
      ),
    );
  }
}
