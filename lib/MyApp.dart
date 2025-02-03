import 'package:flutter/material.dart';
import 'package:ststefull/module9_class2.dart';

import 'HomePage.dart';
import 'module9_class1.dart';

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
      home: ModuleNine(),
    );
  }
}

