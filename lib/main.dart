import 'package:flutter/material.dart';
import 'pages/splash_screen.dart'; // استيراد شاشة البداية

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // عرض شاشة البداية عند التشغيل
    );
  }
}
