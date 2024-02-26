import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:version_1/components/my_button.dart';
import 'package:version_1/components/my_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homie',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const dashboardView(), //MyHomePage(title: 'Flutter Demo Home Page')SignUp()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCC707),
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

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCC707),
      body: Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //         colors: [
        //       Color.fromARGB(247, 7, 113, 99),
        //       Color(0xFF93B4B8),
        //     ])),
        child: const SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "welcome back!",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              myTextField(hintText: "email", obscureText: false),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "password", obscureText: true),
              SizedBox(
                height: 5,
              ),
              Text(
                "forgot password?",
              ),
              MyButton(buttonText: "sign Up"),
              SizedBox(
                height: 15,
              ),
              MyButton(buttonText: "sign Up with google"),
            ],
          ),
        )),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCC707),
      body: Container(
        child: const SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 50,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "first name", obscureText: false),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "last name", obscureText: false),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "email", obscureText: false),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "password", obscureText: true),
              SizedBox(
                height: 15,
              ),
              myTextField(hintText: "password confirmation", obscureText: true),
              SizedBox(
                height: 15,
              ),
              MyButton(buttonText: "sign Up"),
              SizedBox(
                height: 45,
              ),
              Text(
                "already have an account? sign in!",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class dashboardView extends StatelessWidget {
  const dashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: Color(0xffFCC707),
      appBar: MyDashboardAppBar(),
      body: ListView(children: [
        DashboardHeader(pageController: pageController),
        const SizedBox(height: 15),
        const Header(headerTitle: 'Categories'),
        const SizedBox(height: 4),
        const CategoriesGrid(),
        const SizedBox(height: 4),
        const Header(headerTitle: 'Discounts'),
        const ProductGrid(),
      ]),
    );
  }
}

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  final List<String> categories = const [
    'BedSitters',
    'One\nBedrooms',
    'Two\nBedrooms',
    'Three\nBedrooms'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 6, 6, 6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                categories[index],
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 5,
            crossAxisCount: 2),
      ),
    );
  }
}

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: SizedBox(
              width: 285,
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

class Header extends StatelessWidget {
  const Header({super.key, required this.headerTitle});
  final String headerTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 61,
        width: 360,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerTitle,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
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
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  SizedBox(
                    height: 60,
                  ),
                  // Icon(
                  //   Icons.arrow_forward_ios,
                  //   color: Colors.black,
                  //   size: 12,
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => SizedBox(
          height: 206,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      'assets/heri.jpeg',
                      width: 165,
                      height: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Positioned(
                  //   top: 10,
                  //   right: 10,
                  //   child: Container(
                  //     decoration: const BoxDecoration(
                  //         shape: BoxShape.circle, color: Colors.white),
                  //     width: 22,
                  //     height: 22,
                  //     child: IconButton(
                  //         padding: EdgeInsets.zero,
                  //         onPressed: () {},
                  //         icon: const Icon(
                  //           Icons.more_horiz,
                  //           size: 20,
                  //         )),
                  //   ),
                  // )
                ]),
              ),
              const SizedBox(
                height: 11,
              ),
              // const Text(
              //   'Heri Hostels',
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 14,
              //       fontWeight: FontWeight.w700),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Heri Hostels',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  // Use Spacer to push the IconButton to the right
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Text(
                'Athi River',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              // const Text(
              //   '\$75,',
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 14,
              //       fontWeight: FontWeight.w700),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyDashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.people,
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: Color(0xffFCC707),
      centerTitle: false,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Image.asset('assets/landing.jpeg'),
      ),
      title: const Text(
        "dashboard",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
