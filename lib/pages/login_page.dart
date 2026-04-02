import 'package:flutter/material.dart';
import 'login_page.dart';

class StartupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCC6E0),
      body: Column(
        children: [
          SizedBox(height: 80),

          // LOGO CENTER
          Center(
            child: Image.asset(
              'assets/images.png',
              height: 140,
            ),
          ),

          Spacer(),

          // BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2F4B8F),
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                );
              },
              child: Text(
                'ចាប់ផ្តើម',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}