import 'package:flutter/material.dart';

import 'pages/pages.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color(0xff191919),
          secondary: Colors.teal,
        ),
        scaffoldBackgroundColor: const Color(0xff191919)
      ),
      home: const InputPage(),
    );
  }
}


