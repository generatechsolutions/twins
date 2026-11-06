import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const TwinsApp());

class TwinsApp extends StatelessWidget {
  const TwinsApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Twins',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.deepOrange,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      );
}