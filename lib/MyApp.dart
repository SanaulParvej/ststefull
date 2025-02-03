import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ststefull/module9_class2.dart';
import 'package:ststefull/module9_class3.dart';

import 'HomePage.dart';
import 'module9_class1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,screenType) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.blueAccent,
              appBarTheme: AppBarTheme(
                color: Colors.blueAccent,
                centerTitle: true,
              )
          ),
          home: mnoduleninilast(),
        );
      }
    );
  }
}

