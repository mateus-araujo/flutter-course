import 'package:flutter/material.dart';
import 'package:flutter_course/app_controller.dart';
import 'package:flutter_course/home_page.dart';
import 'package:flutter_course/login_page.dart';
import 'package:flutter_course/tinder_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: AppController.instance.isDarkTheme == true
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/tinder': (context) => TinderPage(),
          },
        );
      },
    );
  }
}
