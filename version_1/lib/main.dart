import 'package:flutter/material.dart';
import 'package:version_1/views/dasboard_view.dart';
import 'package:version_1/views/my_home_page.dart';
import 'package:version_1/views/sigm_up.dart';
import 'package:version_1/views/sign_in.dart';
import 'package:version_1/views/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
