import 'package:flutter/material.dart';
import 'verification_screen.dart'; // استيراد شاشة إدخال رمز التحقق
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/logo.png',
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: 20),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'رقم الجوال',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              initialCountryCode: 'SA',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(height: 10),
            Text(
              'بالضغط على "الاستمرار"، فإنك تؤكد موافقتك على جميع الأحكام والشروط والتزامك بما ورد فيها.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OTPScreen(phoneNumber: "0557461501"), // الانتقال إلى صفحة OTP
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
              ),
              child: Text(
                'للاستمرار',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
