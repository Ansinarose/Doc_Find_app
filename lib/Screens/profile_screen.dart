// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 150,
//             margin: EdgeInsets.all(16.0),
//             padding: EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Colors.blue[700]!, 
//                   Colors.blue[300]!, 
//                 ],
//               ),
//               borderRadius: BorderRadius.circular(20.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.blue.withOpacity(0.3),
//                   spreadRadius: 2,
//                   blurRadius: 10,
//                   offset: Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Dr. Khalid Abbed',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 28.0,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
          
//                       Text(
//                         'dummydr@gmail.com',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Stack(
//                   alignment: Alignment.bottomRight,
//                   children: [
//                     Container(
//                       width: 80.0,
//                       height: 80.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
                        
//                       ),
//                       child: ClipOval(
//                         child: Image.asset(
//                           'assets/images/doctorimg.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: -5,
//                       child: Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               blurRadius: 4,
//                               offset: Offset(0, 2),
//                             ),
//                           ],
//                         ),
//                         child: IconButton(
//                           icon: Icon(
//                             Icons.edit,
//                             color: Colors.white,
//                             size: 20.0,
//                           ),
//                           onPressed: () {},
//                           padding: EdgeInsets.all(4.0),
//                           constraints: BoxConstraints(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           // ListTiles
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               children: [
//                 // First 5 ListTiles with leading, title, and trailing icons
//                 _buildListTile(
//                   leading: Icons.edit,
//                   title: 'Edit profile',
//                   trailing: Icons.arrow_forward_ios,
//                 ),
//                 _buildListTile(
//                   leading: Icons.add_box,
//                   title: 'My jobs',
//                   trailing: Icons.arrow_forward_ios,
//                 ),
//                 _buildListTile(
//                   leading: Icons.privacy_tip,
//                   title: 'Privacy Policy',
//                   trailing: Icons.arrow_forward_ios,
//                 ),
//                 _buildListTile(
//                   leading: Icons.note,
//                   title: 'Terms and conditions',
//                   trailing: Icons.arrow_forward_ios,
//                 ),
//                 _buildListTile(
//                   leading: Icons.settings_outlined,
//                   title: 'Contact us',
//                   trailing: Icons.arrow_forward_ios,
//                 ),
                
//                 // Last 2 ListTiles with different colors and no trailing icons
//                 _buildListTile(
//                   leading: Icons.logout,
//                   title: 'Logout',
//                   color: Colors.red,
//                   trailingColor: Colors.red,
//                 ),
//                 _buildListTile(
//                   leading: Icons.delete,
//                   title: 'Remove account',
//                   color: Colors.grey,
//                   trailingColor: Colors.grey,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Custom ListTile Builder
//   Widget _buildListTile({
//     required IconData leading,
//     required String title,
//     IconData? trailing,
//     Color? color,
//     Color? trailingColor,
//   }) {
//     return ListTile(
//       contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
//       leading: Icon(
//         leading,
//         color: color ?? Colors.blue,
//         size: 24.0,
//       ),
//       title: Text(
//         title,
//         style: TextStyle(
//           color: color ?? Colors.black87,
//           fontSize: 16.0,
//         ),
//       ),
//       trailing: trailing != null
//           ? Icon(
//               trailing,
//               color: trailingColor ?? Colors.grey,
//               size: 20.0,
//             )
//           : null,
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue[700]!, 
                  Colors.blue[300]!, 
                ],
              ),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dr. Khalid Abbed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
          
                      Text(
                        'dummydr@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/doctorimg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -5,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white, // Changed background color to white
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue, // Changed icon color to blue to stand out on white background
                            size: 20.0,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(4.0),
                          constraints: BoxConstraints(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ListTiles
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                // First 5 ListTiles with leading, title, and trailing icons
                _buildListTile(
                  leading: Icons.edit,
                  title: 'Edit profile',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  leading: Icons.add_box,
                  title: 'My jobs',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  leading: Icons.privacy_tip,
                  title: 'Privacy Policy',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  leading: Icons.note,
                  title: 'Terms and conditions',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  leading: Icons.settings_outlined,
                  title: 'Contact us',
                  trailing: Icons.arrow_forward_ios,
                ),
                
                // Last 2 ListTiles with different colors and no trailing icons
                _buildListTile(
                  leading: Icons.logout,
                  title: 'Logout',
                  color: Colors.red,
                  trailingColor: Colors.red,
                ),
                _buildListTile(
                  leading: Icons.delete,
                  title: 'Remove account',
                  color: Colors.grey,
                  trailingColor: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Custom ListTile Builder
  Widget _buildListTile({
    required IconData leading,
    required String title,
    IconData? trailing,
    Color? color,
    Color? trailingColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
      leading: Icon(
        leading,
        color: color ?? Colors.blue,
        size: 24.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: color ?? Colors.black87,
          fontSize: 16.0,
        ),
      ),
      trailing: trailing != null
          ? Icon(
              trailing,
              color: trailingColor ?? Colors.grey,
              size: 20.0,
            )
          : null,
    );
  }
}