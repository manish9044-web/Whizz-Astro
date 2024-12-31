import 'dart:async';
import 'package:astrology/homepage.dart';
import 'package:astrology/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
 // Import the page you want to navigate to


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Set animation duration
    );

    // Define fade animation
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start animation
    _controller.forward();

    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  loginpage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 207, 77, 57),
            // color: const Color.fromARGB(255, 238, 229, 229),
            child: Center(
              child: FadeTransition(
                opacity: _animation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: Image.asset(
                        'assets/images/whizzastro.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 105,
                    ),
                    // const Text(
                    //   'Your companion for all your\n     admission needs.',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontSize: 20, // Adjusted font size
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose animation controller
    super.dispose();
  }
}
