import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white),),
         iconTheme: IconThemeData(
      color: Colors.white, 
         ),
        backgroundColor: Colors.black, // Dark AppBar
      ),
      backgroundColor: Colors.black, // Dark Background
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
                color: Colors.white, // White text
              ),
            ),
            SizedBox(height: 10),

            // Email
            Text(
              'muhammadrafifazka27@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[400], // Light grey for text
              ),
            ),
            SizedBox(height: 20),

            // Favorite Teams or Sports
            Card(
              color: Colors.grey[850], // Dark card color
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.star, color: Colors.white), // White icon
                title: Text(
                  'Favorite Team: Manchester United',
                  style: TextStyle(color: Colors.white), // White text
                ),
              ),
            ),
            Card(
              color: Colors.grey[850], // Dark card color
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.sports_soccer, color: Colors.white), // White icon
                title: Text(
                  'Favorite Sport: Football',
                  style: TextStyle(color: Colors.white), // White text
                ),
              ),
            ),

            SizedBox(height: 20),

            // Edit Profile Button (optional, add here if needed)
          ],
        ),
      ),
    );
  }
}
