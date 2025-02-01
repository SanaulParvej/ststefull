import 'package:flutter/material.dart';

import 'HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          appBarTheme: AppBarTheme(
            color: Colors.blueAccent,
            centerTitle: true,
          )
      ),
      home: HomePage(),
    );
  }
}

