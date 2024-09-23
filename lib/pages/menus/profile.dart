

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://foto.kontan.co.id/nB_kB6WGDnzSEzuxKLponNXJQlM=/smart/2022/11/15/686454468p.jpg'), // Replace with actual image URL
            ),
            SizedBox(height: 20),

            // User Name
            Text(
              'Kaka',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Email
            Text(
              'muhammadrafifazka27@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),

            // Favorite Teams or Sports
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Favorite Team: Manchester United'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.sports_soccer),
                title: Text('Favorite Sport: Football'),
              ),
            ),

            SizedBox(height: 20),

            // Edit Profile Button
          
          ],
        ),
      ),
    );
  }
}
