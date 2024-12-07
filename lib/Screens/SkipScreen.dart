
import 'package:doc_find_app/Screens/Home_screen.dart';
import 'package:doc_find_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Skipscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    // Blue Container
                    Container(
                      height: 250,
                      width: 370,
                      decoration: BoxDecoration(
                        color: AppConstants.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: const Offset(0, 2),
                            blurRadius: 3.84,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          // Top Left Image (Syringe)
                          Positioned(
                            top: -20,
                            left: -20,
                            child: Image.asset('assets/images/syrnge.png', width: 70, height: 70),
                          ),
                          // Top Right Image (Stethoscope)
                          Positioned(
                            top: -20,
                            right: -20,
                            child: Image.asset('assets/images/steth.png', width: 70, height: 70),
                          ),
                          // Bottom Left Image (Emoji)
                          Positioned(
                            bottom: -20,
                            left: -20,
                            child: Image.asset('assets/images/emoji.png', width: 70, height: 70),
                          ),
                        ],
                      ),
                    ),
                    // Larger Image Positioned
                    Positioned(
                      bottom: -30,
                      child: Image.asset(
                        'assets/images/a6017635c637391a35125ad3c8e5235a.png',
                        width: 500,
                        height: 500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  'Hey Doctors.!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          AppConstants.primaryColor,
                          Colors.white.withOpacity(0.8),
                        ],
                      ).createShader(const Rect.fromLTWH(0, 0, 300, 50)),
                  ),
                  textAlign: TextAlign.left, // Text alignment set to left
                ),
              ),
              const SizedBox(height: 20),
              // Text and Button Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      'Dont Fear this is Right Platforms for you ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left, // Text alignment set to left
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '10,000+ Jobs Available for your \n Interested',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left, // Text alignment set to left
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConstants.primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Explore all Jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
