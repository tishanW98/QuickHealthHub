import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Add a delay and navigate to the login screen
    Future.delayed(
      Duration(seconds: 5), // Adjust the duration as needed
      () {
        Navigator.pushReplacementNamed(context, '/landing');
      },
    );
  }

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
          // Loading Animation
          Center(
            child: SpinKitWave(
              color: Colors.white,
              size: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
