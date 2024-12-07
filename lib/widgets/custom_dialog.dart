
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomFullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero, // Remove any default padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width, // Set width to full screen
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top Section with Leading Icon, Title, and Trailing Icon
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.black),), // Leading Icon
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
                 Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfoContainer(
                      icon: Icons.work_outline,
                      text: '5+ Years Exp..',
                    ),
                    _buildInfoContainer(
                      icon: Icons.currency_rupee,
                      text: '10-15 laks',
                    ),
                    _buildInfoContainer(
                      icon: Icons.location_on_outlined,
                      text: 'Coimbatore',
                    ),
                  ],
                ),
              ),
              // Job Description Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'We are seeking experienced Doctors with a minimum of 5 years of clinical experience to join our team.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Position Description Section
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Position Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'As a Doctor at HealthOk, you will play a vital role in providing exceptional medical care to our patients. Your responsibilities will include:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Required Skills Section
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Required skills:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildBulletPoint('Valid medical license and relevant certifications'),
                        _buildBulletPoint('Strong clinical skills and knowledge in your speci'),
                        _buildBulletPoint('Excellent communication and interpersonal skills'),
                        _buildBulletPoint('Preferred language Hindi, English, Malayalam, Tamil,'),
                        _buildBulletPoint('Telugu, Kannada, Marathi, Bengal')
                      ],
                    ),
                  ],
                ),
              ),

              // Additional Job Details
             Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildJobDetailRow('Role:', 'Doctor - Other'),
                    SizedBox(height: 4),
                    _buildJobDetailRow('Industry Type:', 'Medical services / Hospital'),
                    SizedBox(height: 4),
                    _buildJobDetailRow('Department:', 'Healthcare & Life Sciences'),
                    SizedBox(height: 4),
                    _buildJobDetailRow('Employment Type:', 'Full Time, Permanent'),
                    SizedBox(height: 4),
                    _buildJobDetailRow('Role Category:', 'Doctor'),
                  ],
                ),
              ),

              // Bottom Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close Dialog
                      },
                      child: Text('Call Directly',style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                    SizedBox(width: 10,),
                   OutlinedButton(
  onPressed: () {}, 
  style: OutlinedButton.styleFrom(
    backgroundColor: Colors.blue, // Set the background color here
    side: BorderSide(color: Colors.blue), // Optional: adjust the border color
   // Optional: rounded corners
    
  ),
  child: Text(
    'Apply this job',
    style: TextStyle(fontSize: 18, color: Colors.white), // Ensure text color contrasts with background
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
Widget _buildInfoContainer({
    required IconData icon,
    required String text,
  }) {
    return Container(
      width: 120, // Adjust width as needed
      height: 40, // Adjust height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        
        //boxShadow: [
          // BoxShadow(
          //   color: Colors.grey.withOpacity(0.2),
          //   spreadRadius: 2,
          //   blurRadius: 5,
          //   offset: Offset(0, 3),
          // ),
       // ],
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.blue,
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildJobDetailRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
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
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}