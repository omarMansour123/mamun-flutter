import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  final String phoneNumber;

  OTPScreen({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 100), // تغيير حجم اللوجو
            SizedBox(height: 20),
            Text(
              'ادخل رمز التحقق المرسل اليك',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'تم ارسال رمز التحقق الى رقم الجوال $phoneNumber',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // حقل إدخال OTP
            Pinput(
              length: 6, // عدد أرقام رمز التحقق
              showCursor: true,
              onCompleted: (pin) {
                print("رمز التحقق: $pin");
              },
            ),

            SizedBox(height: 10),
            Text(
              'إرسال رمز التحقق خلال 0:50',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // زر تأكيد
            ElevatedButton(
              onPressed: () {
                // انتقل إلى الصفحة التالية بعد التحقق
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade200,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'تأكيد',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            SizedBox(height: 10),

            // زر إعادة إرسال
            ElevatedButton(
              onPressed: () {
                print("إعادة إرسال الرمز");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'إعادة ارسال',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            SizedBox(height: 10),

            // زر تغيير رقم الهاتف
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, size: 18, color: Colors.grey),
                  SizedBox(width: 5),
                  Text('تغيير رقم الجوال',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
