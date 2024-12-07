
// import 'package:doc_find_app/widgets/custom_dialog.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//   final List<String> imageAssets = [
//     'assets/images/image1.png',
//     'assets/images/image2.png',
//     'assets/images/image3.png',
//     'assets/images/image4.png',
//     'assets/images/image1.png',
//     'assets/images/image3.png',
//   ];
// void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(150.0),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Container(
//   width: 80.0, // Adjust the size of the circle
//   height: 80.0, // Ensure the width and height are the same to maintain a circular shape
//   decoration: BoxDecoration(
//     shape: BoxShape.circle,
//     border: Border.all(color: Colors.blue, width: 3.0), // Border color and width
//   ),
//   child: ClipOval(
//     child: Padding(
//       padding: const EdgeInsets.all(4.0), // Adjust padding to create a gap between the image and border
//       child: CircleAvatar(
//         radius: 36, // Reduced radius to allow space for padding
//         backgroundImage: AssetImage('assets/images/hari1.png',),
//         backgroundColor: Colors.transparent, // Ensure transparency around the image
//       ),
//     ),
//   ),
// ),


//                 title: const Text(
//                   'Dr. Khalid Abbed',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 subtitle: const Text(
//                   'Coimbatore,Tamilnadu',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 trailing: IconButton(
//                   icon: const Icon(
//                     Icons.notifications,
//                     size: 28.0,
//                     color: Colors.blue,
//                   ),
//                   onPressed: () {
//                     // Add notification action here
//                   },
//                 ),
//               ),
//               RichText(
//   text: TextSpan(
//     style: TextStyle(fontSize: 25, color: Colors.black), // Default style for the rest of the text
//     children: <TextSpan>[
//       TextSpan(
//         text: 'Lets Get you ', // First part of the text
//       ),
//       TextSpan(
//         text: 'Hired', // "Hired" in blue
//         style: TextStyle(color: Colors.blue),
//       ),
//       TextSpan(
//         text: ' for the Job you ', // Next part of the text
//       ),
//       TextSpan(
//         text: 'Deserve', // "Deserve" in blue
//         style: TextStyle(color: Colors.blue),
//       ),
//       TextSpan(
//         text: '!', // Final punctuation
//       ),
//     ],
//   ),
// )

//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(  // Make the body scrollable
//         child: Padding(
//           padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search...',
//                         prefixIcon: const Icon(Icons.search),
//                         suffixIcon: Icon(Icons.mic_none_sharp),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 16.0),
//                   Container(
//                     width: 50.0,
//                     height: 50.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.black),
//                     ),
//                     child: const Center(
//                       child: Icon(
//                         Icons.tune,
//                         color: Colors.black,
//                         size: 24.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16.0),
//               ListView.separated(
//   shrinkWrap: true,
//   physics: NeverScrollableScrollPhysics(),
//   itemCount: 6,
//   itemBuilder: (context, index) {
//     // Check if it's the first card
//     if (index == 0) {
//       return GestureDetector(
//         onTap: () {
//           // Add the onTap action for the first card here
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return CustomFullScreenDialog(); // Use the custom dialog here
//             },
//           );
//         },
//         child: _buildSubCard(
//           imageAsset: imageAssets[index],
//           title: 'Duty Doctor / Medical Officer',
//           subtitle: 'Koval Medical Center and Hospitals',
//           extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
//           description:
//               'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
//           apply: 'Apply the position',
//           details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
//         ),
//       );
//     } else {
//       return _buildSubCard(
//         imageAsset: imageAssets[index],
//         title: 'Duty Doctor / Medical Officer',
//         subtitle: 'Koval Medical Center and Hospitals',
//         extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
//         description:
//             'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
//         apply: 'Apply the position',
//         details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
//       );
//     }
//   },
//   separatorBuilder: (context, index) => const SizedBox(height: 16.0),
// )

//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSubCard({
//     required String imageAsset,
//     required String title,
//     required String subtitle,
//     required String extradetails,
//     required String description,
//     required String apply,
//     required String details,
//   }) {
//     return GestureDetector(
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Image.asset(
//                     imageAsset,
//                     width: 50.0,
//                     height: 50.0,
//                     fit: BoxFit.cover,
//                   ),
//                   const SizedBox(width: 16.0),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                         Text(
//                           subtitle,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 14.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 8.0),
//               Row(
//                 children: [
//                   const Icon(Icons.work_outline, size: 16.0, color: Colors.blue),
//                   const SizedBox(width: 4.0),
//                   const Text(
//                     '5+ Year Exp..',
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14.0,
//                     ),
//                   ),
//                   const SizedBox(width: 16.0),
//                   const Icon(Icons.currency_rupee, size: 16.0, color: Colors.blue),
//                   const SizedBox(width: 4.0),
//                   const Text(
//                     '10-15 laks',
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14.0,
//                     ),
//                   ),
//                   const SizedBox(width: 16.0),
//                   const Icon(Icons.location_on_outlined, size: 16.0, color: Colors.blue),
//                   const SizedBox(width: 4.0),
//                   const Text(
//                     'Coimbatur, T..',
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14.0,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 8.0),
//               Text(
//                 description,
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 13.0,
//                 ),
//               ),
//               const SizedBox(height: 8.0),
//               Text(
//                 apply,
//                 style: const TextStyle(
//                   color: Colors.blue,
//                   fontSize: 14.0,
//                 ),
//               ),
//               Divider(),
//               const SizedBox(height: 8.0),
//               Text(
//                 details,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 12.0,
//                 ),
//               ),
              
//             ],
            
//           ),
//         ),
//       ),
//     );
    
//   }
  
// }
import 'package:doc_find_app/Screens/profile_screen.dart';
import 'package:doc_find_app/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<String> imageAssets = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image1.png',
    'assets/images/image3.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar remains the same as in the previous implementation
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 3.0),
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage('assets/images/hari1.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                title: const Text(
                  'Dr. Khalid Abbed',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Coimbatore,Tamilnadu',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 28.0,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    // Add notification action here
                  },
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 25, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'Lets Get you '),
                    TextSpan(
                      text: 'Hired',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: ' for the Job you '),
                    TextSpan(
                      text: 'Deserve',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: '!'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Body remains the same
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 100), // Added bottom padding for navigation bar
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic_none_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.tune,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  // Check if it's the first card
                  if (index == 0) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomFullScreenDialog();
                          },
                        );
                      },
                      child: _buildSubCard(
                        imageAsset: imageAssets[index],
                        title: 'Duty Doctor / Medical Officer',
                        subtitle: 'Koval Medical Center and Hospitals',
                        extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
                        description:
                            'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
                        apply: 'Apply the position',
                        details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
                      ),
                    );
                  } else {
                    return _buildSubCard(
                      imageAsset: imageAssets[index],
                      title: 'Duty Doctor / Medical Officer',
                      subtitle: 'Koval Medical Center and Hospitals',
                      extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
                      description:
                          'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
                      apply: 'Apply the position',
                      details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
                    );
                  }
                },
                separatorBuilder: (context, index) => const SizedBox(height: 16.0),
              )
            ],
          ),
        ),
      ),

      // New Floating Bottom Navigation Bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work_outline),
                  activeIcon: Icon(Icons.work_outline),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  activeIcon: Icon(Icons.bookmark),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                  },
                    child: Icon(Icons.person_outline)),
                  activeIcon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubCard({
    required String imageAsset,
    required String title,
    required String subtitle,
    required String extradetails,
    required String description,
    required String apply,
    required String details,
  }) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    imageAsset,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(Icons.work_outline, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    '5+ Year Exp..',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Icon(Icons.currency_rupee, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    '10-15 laks',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Icon(Icons.location_on_outlined, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    'Coimbatur, T..',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                apply,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 14.0,
                ),
              ),
              Divider(),
              const SizedBox(height: 8.0),
              Text(
                details,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}