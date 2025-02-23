import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart'; // استيراد شاشة تسجيل الدخول

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // الانتظار لمدة ثانية واحدة قبل الانتقال لشاشة تسجيل الدخول
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12213D), // نفس لون الخلفية في الصورة
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png',
                width: 150), // تأكد من وجود الصورة في assets
            SizedBox(height: 20),
            Text(
              'مـــأمن',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'طالبك .. في مأمن',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
