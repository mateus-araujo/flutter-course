import 'package:flutter/material.dart';
import 'package:flutter_course/app_controller.dart';
import 'package:flutter_course/home_page.dart';
import 'package:flutter_course/login_page.dart';

class AppWidget extends StatelessWidget {
  final elevatedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

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
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: elevatedButtonStyle,
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
