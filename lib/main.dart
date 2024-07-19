import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/core/presentation/app_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 70, 100),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
            bodySmall: TextStyle(fontSize: 14, color: Colors.grey)),
      ),
      home: const AppHome(),
    );
  }
}
