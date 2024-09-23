import 'package:flutter/material.dart';
import 'package:my_bottom_navbar/widget/my_colors.dart'; // Import your colors

class FootballScoreCard extends StatelessWidget {
  final String leagueLogoUrl;
  final String team1;
  final String team2;
  final String team1LogoUrl;
  final String team2LogoUrl;
  final String date;

  FootballScoreCard({
    required this.leagueLogoUrl,
    required this.team1,
    required this.team2,
    required this.team1LogoUrl,
    required this.team2LogoUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: gradient2, // Use your gradient from my_colors.dart
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 0,
        color: Colors.transparent, 
        child: Column(
          children: [
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // League logo
                  Row(
                    children: [
                      Image.asset(
                        leagueLogoUrl,
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  Center(
                    child: Text(
                      '$date',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 52),
                ],
              ),
            ),

            Padding(
  padding: const EdgeInsets.symmetric(vertical: 5),
  child: Row(
    children: [
      // Team 1 Logo and Name
      Expanded(
        child: Column(
          children: [
            Image.asset(
              team1LogoUrl,
              width: 40,
              height: 40,
            ),
            SizedBox(height: 3),
            Text(
              team1,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Center align the text
            ),
          ],
        ),
      ),
      // VS
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "VS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // Team 2 Logo and Name
      Expanded(
        child: Column(
          children: [
            Image.asset(
              team2LogoUrl,
              width: 40,
              height: 40,
            ),
            SizedBox(height: 3),
            Text(
              team2,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Center align the text
            ),
          ],
        ),
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }
}
