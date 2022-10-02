import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_color.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';
import 'package:movie_ticket/config/themes/app_theme.dart';
import 'package:movie_ticket/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: AppTheme.dark.backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColor.white,
          displayColor: AppColor.white,
        )
      ),
      home: const HomePage(),
    );
  }
}


