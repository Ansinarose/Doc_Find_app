import 'package:doc_find_app/Screens/page2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _docAnimation;
  late Animation<Offset> _findAnimation;

  @override
  void initState() {
    super.initState();
    
    // Animation controller with 3 seconds duration
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // DOC and FIND animations happening simultaneously
    _docAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0), // Start from right side
      end: Offset.zero, // Move to center
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _findAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Start from bottom
      end: Offset(0.0, 0.1), // Move slightly below center
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _animationController.forward();

    // Navigate to next screen after animation completes
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // TODO: Replace with your actual next screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => Page2()),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DOC Text Animation
            SlideTransition(
              position: _docAnimation,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'DOC',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            // FIND Text Animation
            SlideTransition(
              position: _findAnimation,
              child: Text(
                'FIND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}