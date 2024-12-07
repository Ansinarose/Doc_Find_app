
// import 'package:flutter/material.dart';

// class CustomFullScreenDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16), // Rounded corners
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Top Section with Leading Icon, Title, and Trailing Icon
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   Icon(Icons.arrow_back_ios, color: Colors.black), // Leading Icon
//                   Spacer(),
//                   Text(
//                     'Job Details',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   Spacer(),
//                   IconButton(
//                     icon: Icon(Icons.ios_share_outlined, color: Colors.black),
//                     onPressed: () {
//                       Navigator.of(context).pop(); // Close Dialog
//                     },
//                   ),
//                 ],
//               ),
//             ),

//             // Image Section
//             ListTile(
//               leading: Image(image: AssetImage('assets/images/image1.png')),
//               title: Text('Duty Doctor/ Medical Officer '),
//               subtitle: Text('Koval Medical Center and Hospitals'),
//             ),

//             // Title and Subtitle Section
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Job Description',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'We are seeking experienced Doctors with a minimum of 5 years of clinical experience to join our team.',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Position Description',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'As a Doctor at HealthOk, you will play a vital role in provide exceptional medical care to our patients.\nYour responsibilities will include:',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

           

//             // Bottom Section (Optional)
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).pop(); // Close Dialog
//                 },
//                 child: Text('Close'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomFullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top Section with Leading Icon, Title, and Trailing Icon
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.black), // Leading Icon
                  Spacer(),
                  Text(
                    'Job Details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.ios_share_outlined, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close Dialog
                    },
                  ),
                ],
              ),
            ),

            // Image Section
            ListTile(
              leading: Image(image: AssetImage('assets/images/image1.png')),
              title: Text('Duty Doctor/ Medical Officer '),
              subtitle: Text('Koval Medical Center and Hospitals'),
            ),

            // Title and Subtitle Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We are seeking experienced Doctors with a minimum of 5 years of clinical experience to join our team.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Position Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'As a Doctor at HealthOk, you will play a vital role in providing exceptional medical care to our patients. Your responsibilities will include:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Additional Requirements Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Required skills:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Bullet Points
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBulletPoint('Valid medical license and relevant certifications'),
                      _buildBulletPoint('Strong clinical skills and knowledge in your speci'),
                      _buildBulletPoint('Ability to work in a team and collaborate with other healthcare professionals'),
                      _buildBulletPoint('Willing to work flexible hours and shift schedules'),
                    ],
                  ),
                ],
              ),
            ),

            // Bottom Section (Optional)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close Dialog
                },
                child: Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create bullet points
  Widget _buildBulletPoint(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8, color: Colors.black), // Bullet point icon
        SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
