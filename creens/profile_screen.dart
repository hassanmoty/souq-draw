import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  final String phoneNumber;

  const ProfileScreen({Key? key, required this.userName, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الاسم:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              userName,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'رقم الهاتف:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              phoneNumber,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // تسجيل الخروج
                  Navigator.of(context).pop();
                },
                child: Text('تسجيل الخروج'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
