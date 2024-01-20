import 'package:flutter/material.dart';
import 'package:qhhub/views/login_view/loginView.dart';
import 'package:qhhub/views/signup_view/SignupView.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/lady_doctor.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Your App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                // Add any additional text or widgets as needed
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupView()),
                    );
                  },
                  child: Text('Signup'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
