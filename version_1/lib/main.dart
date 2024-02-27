import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:version_1/components/my_button.dart';
import 'package:version_1/components/my_text_field.dart';
import 'package:marquee/marquee.dart';

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
      // home:
      //     const dashboardView(), //MyHomePage(title: 'Flutter Demo Home Page')SignUp()
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'welcome'),
        '/signin': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/dashboard': (context) => const dashboardView(),
        '/welcomepage': (context) => const WelcomePage()
      },
    );
  }
}

void navigateToPageAfterDelay(
    BuildContext context, String routeName, int delayInSeconds) {
  Future.delayed(Duration(seconds: delayInSeconds), () {
    Navigator.pushNamed(context, routeName);
  });
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    navigateToPageAfterDelay(context, '/welcomepage', 3);
    return Scaffold(
      backgroundColor: const Color(0xffFCC707),
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

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCC707),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Marquee(
                text:
                    "\t\t\tWelcome Homie!\nSeamless and mutually beneficial interactions.\noffering a diverse array of housing options, \nthat are conveniently located near their educational institutions. ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 90.0,
                velocity: 90.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                accelerationCurve: Curves.linear,
                decelerationCurve: Curves.easeOut,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MyButton(
              buttonText: "sign in!",
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              buttonText: "sign up!",
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

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCC707),
      body: Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //         colors: [
        //       Color.fromARGB(247, 7, 113, 99),
        //       Color(0xFF93B4B8),
        //     ])),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                "welcome back!",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              const myTextField(hintText: "email", obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "password", obscureText: true),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "forgot password?",
              ),
              MyButton(
                buttonText: "sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                buttonText: "sign Up with google",
                onPressed: () {},
              ),
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
      backgroundColor: const Color(0xffFCC707),
      body: Container(
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 50,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "first name", obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "last name", obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "email", obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const myTextField(hintText: "password", obscureText: true),
              const SizedBox(
                height: 15,
              ),
              const myTextField(
                  hintText: "password confirmation", obscureText: true),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                buttonText: "sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
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

class dashboardView extends StatefulWidget {
  const dashboardView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<dashboardView> {
  bool _isBlurVisible = false;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: const Color(0xffFCC707),
      appBar: const MyDashboardAppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              DashboardHeader(pageController: pageController),
              const SizedBox(height: 25),
              const Header(headerTitle: 'Categories'),
              const SizedBox(height: 4),
              const CategoriesGrid(),
              const SizedBox(height: 4),
              const Header(headerTitle: 'Discounts'),
              const ProductGrid(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isBlurVisible = !_isBlurVisible;
                    });
                  },
                  child: AnimatedOpacity(
                    opacity: _isBlurVisible ? 0.0 : 1.0,
                    duration: Duration(milliseconds: 300),
                    child: Icon(Icons.menu),
                  ),
                ),
              ),
            ),
          ),
          if (_isBlurVisible)
            Positioned.fill(
                child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isBlurVisible = false;
                                });
                              },
                              icon: Icon(Icons.home)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isBlurVisible = false;
                                });
                              },
                              icon: Icon(Icons.settings)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isBlurVisible = false;
                                });
                              },
                              icon: Icon(Icons.person)),
                        ],
                      ),
                    )))
        ],
      ),
    );
  }
}

// child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//     IconButton(
//       icon: Icon(Icons.home),
//       onPressed: () {},
//     ),
//     IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
//     IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
//   ],
// ),
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
              backgroundColor: const Color.fromARGB(255, 6, 6, 6),
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
      backgroundColor: const Color(0xffFCC707),
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
      title: const Text(
        "Dashboard",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
