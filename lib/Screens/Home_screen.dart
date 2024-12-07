

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> imageAssets = [
//     'assets/images/image1.png',
//     'assets/images/image2.png',
//     'assets/images/image3.png',
//     'assets/images/image4.png',
//     'assets/images/image1.png',
//     'assets/images/image3.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(180.0),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: AppBar(
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               flexibleSpace: Container(
//                 height: 70.0,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/appbarimage.png'),
//                   //  fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(80.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 0.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Let\'s Get you Hired for the Job',
//                             style: TextStyle(fontSize: 23, color: Colors.black),
//                           ),
//                           Text(
//                             'you Deserved..!',
//                             style: TextStyle(fontSize: 23, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search...',
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 16.0),
//                 Container(
//                   width: 50.0,
//                   height: 50.0,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Center(
//                     child: Icon(
//                       Icons.tune,
//                       color: Colors.black,
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Expanded(
//               child: ListView.separated(
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return _buildSubCard(
//                     imageAsset: imageAssets[index],
//                     title: 'Duty Doctor / Medical Officer',
//                     subtitle: 'Koval Medical Center and Hospitals',
//                     extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
//                     description:
//                         'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
//                     apply: 'Apply the position',
//                     details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
//                   );
//                 },
//                 separatorBuilder: (context, index) => SizedBox(height: 16.0),
//               ),
//             ),
//           ],
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
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Image.asset(
//                   imageAsset,
//                   width: 50.0,
//                   height: 50.0,
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(width: 16.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                       Text(
//                         subtitle,
//                         style: TextStyle(
//                           fontWeight: FontWeight.normal,
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 8.0),
//             Row(
//               children: [
//                 Icon(Icons.work_outline, size: 16.0, color: Colors.blue),
//                 SizedBox(width: 4.0),
//                 Text(
//                   '5+ Year Exp..',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//                 SizedBox(width: 16.0),
//                 Icon(Icons.currency_rupee, size: 16.0, color: Colors.blue),
//                 SizedBox(width: 4.0),
//                 Text(
//                   '10-15 laks',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//                 SizedBox(width: 16.0),
//                 Icon(Icons.location_on_outlined, size: 16.0, color: Colors.blue),
//                 SizedBox(width: 4.0),
//                 Text(
//                   'Coimbatur, T..',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               description,
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13.0,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               apply,
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 14.0,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               details,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> imageAssets = [
//     'assets/images/image1.png',
//     'assets/images/image2.png',
//     'assets/images/image3.png',
//     'assets/images/image4.png',
//     'assets/images/image1.png',
//     'assets/images/image3.png',
//   ];

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
//                 leading: CircleAvatar(
                  
//                   radius: 40,
//                   backgroundImage: AssetImage('assets/images/hari1.png',),
                  
//                 ),
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
//               Text('Lets Get you Hired for the Job you Deserve!',style: TextStyle(
//                 fontSize: 25
//               ),)
//             ],
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 16.0, right: 16.0,),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search...',
//                       prefixIcon: const Icon(Icons.search),
//                       suffixIcon: Icon(Icons.mic_none_sharp),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 16.0),
//                 Container(
//                   width: 50.0,
//                   height: 50.0,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: const Center(
//                     child: Icon(
//                       Icons.tune,
//                       color: Colors.black,
//                       size: 24.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Expanded(
//               child: ListView.separated(
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return _buildSubCard(
//                     imageAsset: imageAssets[index],
//                     title: 'Duty Doctor / Medical Officer',
//                     subtitle: 'Koval Medical Center and Hospitals',
//                     extradetails: '5+ Year Exp.. | 10-15 laks | Coimbatur, T..',
//                     description:
//                         'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
//                     apply: 'Apply the position',
//                     details: 'Posted 30+ days ago | Openings 2 | Applicants 1110',
//                   );
//                 },
//                 separatorBuilder: (context, index) => const SizedBox(height: 16.0),
//               ),
//             ),
//           ],
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
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Image.asset(
//                   imageAsset,
//                   width: 50.0,
//                   height: 50.0,
//                   fit: BoxFit.cover,
//                 ),
//                 const SizedBox(width: 16.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         title,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                       Text(
//                         subtitle,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.normal,
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8.0),
//             Row(
//               children: [
//                 const Icon(Icons.work_outline, size: 16.0, color: Colors.blue),
//                 const SizedBox(width: 4.0),
//                 const Text(
//                   '5+ Year Exp..',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//                 const SizedBox(width: 16.0),
//                 const Icon(Icons.currency_rupee, size: 16.0, color: Colors.blue),
//                 const SizedBox(width: 4.0),
//                 const Text(
//                   '10-15 laks',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//                 const SizedBox(width: 16.0),
//                 const Icon(Icons.location_on_outlined, size: 16.0, color: Colors.blue),
//                 const SizedBox(width: 4.0),
//                 const Text(
//                   'Coimbatur, T..',
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 14.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               description,
//               style: TextStyle(
//                 color: Colors.grey[600],
//                 fontSize: 13.0,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               apply,
//               style: const TextStyle(
//                 color: Colors.blue,
//                 fontSize: 14.0,
//               ),
//             ),
//             Divider(

//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               details,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_find_app/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageAssets = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image1.png',
    'assets/images/image3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
          child: Column(
            children: [
              ListTile(
                leading: Container(
  width: 80.0, // Adjust the size of the circle
  height: 80.0, // Ensure the width and height are the same to maintain a circular shape
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.blue, width: 3.0), // Border color and width
  ),
  child: ClipOval(
    child: Padding(
      padding: const EdgeInsets.all(4.0), // Adjust padding to create a gap between the image and border
      child: CircleAvatar(
        radius: 36, // Reduced radius to allow space for padding
        backgroundImage: AssetImage('assets/images/hari1.png',),
        backgroundColor: Colors.transparent, // Ensure transparency around the image
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
    style: TextStyle(fontSize: 25, color: Colors.black), // Default style for the rest of the text
    children: <TextSpan>[
      TextSpan(
        text: 'Lets Get you ', // First part of the text
      ),
      TextSpan(
        text: 'Hired', // "Hired" in blue
        style: TextStyle(color: Colors.blue),
      ),
      TextSpan(
        text: ' for the Job you ', // Next part of the text
      ),
      TextSpan(
        text: 'Deserve', // "Deserve" in blue
        style: TextStyle(color: Colors.blue),
      ),
      TextSpan(
        text: '!', // Final punctuation
      ),
    ],
  ),
)

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(  // Make the body scrollable
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
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
          // Add the onTap action for the first card here
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomFullScreenDialog(); // Use the custom dialog here
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
