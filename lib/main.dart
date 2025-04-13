import 'package:flutter/material.dart';
import 'package:test/widgets/home.dart';

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
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: Colors.purple.shade400,
            secondary: Colors.purpleAccent,
            surface: Colors.grey[200]!,
            onPrimary: Colors.white,
            onSecondary: Colors.black,
        ),
        textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color:Colors.black87,
            ),
            bodyLarge: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              color: Colors.black
            )
        ),
        cardTheme: CardTheme(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      home:HomePage(),
    );
  }
}
