import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/main_page/screen_main_page.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: ScreenMainPage(),
    );
  }
}
