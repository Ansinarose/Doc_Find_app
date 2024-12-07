
// import 'package:flutter/material.dart';

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Center(
//                 child: Stack(
//                   alignment: Alignment.center,
//                   clipBehavior: Clip.none,
//                   children: [
//                     // Blue Container
//                     Container(
//                       height: 200,
//                       width: 370,
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.25),
//                             offset: const Offset(0, 2),
//                             blurRadius: 3.84,
//                             spreadRadius: 0,
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                       //  mainAxisAlignment: MainAxisAlignment.center,
//                        // crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
                              
//                               Positioned(
//                                 left: 0,
//                                 child:Image.asset('assets/images/syrnge.png', width: 70, height: 70), ),
                              
//                             // SizedBox(width: 20),
//                               Image.asset('assets/images/steth.png', width: 70, height: 70),
//                               const SizedBox(width: 20),
//                               Image.asset('assets/images/emoji.png', width: 70, height: 70),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Larger Image Positioned
//                     Positioned(
//                       bottom: -30, // Adjust the vertical position
//                       child: Image.asset(
//                         'assets/images/a6017635c637391a35125ad3c8e5235a.png',
//                         width: 500, // Larger width
//                         height: 500, // Larger height
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 'Hey Doctors.!',
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   foreground: Paint()
//                     ..shader = LinearGradient(
//                       colors: [
//                         const Color(0xFF2196F3),
//                         Colors.white.withOpacity(0.8),
//                       ],
//                     ).createShader(const Rect.fromLTWH(0, 0, 300, 50)),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // Text and Button Section
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     const Text(
//                       'Find The Right Jobs For You',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 8),
//                     const Text(
//                       '10,000+ Jobs Available for your Interested',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black54,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF2196F3),
//                         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       child: const Text(
//                         'Explore all Jobs',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_find_app/Screens/Home_screen.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                        color: Colors.blue,
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
                            top: 20,
                            left: 20,
                            child: Image.asset('assets/images/syrnge.png', width: 70, height: 70),
                          ),
                          
                          // Top Right Image (Stethoscope)
                          Positioned(
                            top: 20,
                            right: 20,
                            child: Image.asset('assets/images/steth.png', width: 70, height: 70),
                          ),
                          
                          // Bottom Left Image (Emoji)
                          Positioned(
                            bottom: 20,
                            left: 20,
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
              Text(
                'Hey Doctors.!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: [
                        const Color(0xFF2196F3),
                        Colors.white.withOpacity(0.8),
                      ],
                    ).createShader(const Rect.fromLTWH(0, 0, 300, 50)),
                ),
              ),
              const SizedBox(height: 20),
              // Text and Button Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      'Find The Right Jobs For You',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '10,000+ Jobs Available for your Interested',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2196F3),
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