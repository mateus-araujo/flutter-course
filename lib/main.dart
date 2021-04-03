import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course/app_widget.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(AppWidget());
}
