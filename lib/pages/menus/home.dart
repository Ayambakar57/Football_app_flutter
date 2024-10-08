import 'package:flutter/material.dart';
import 'package:my_bottom_navbar/widget/footbal_score_card.dart';
import 'package:my_bottom_navbar/widget/my_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
  color: Colors.black, 
  child: Column(
    children: [
      SizedBox(height: 20,),
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Upcoming Matches",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, 
          ),
        ),
      ),
     SizedBox(
  width: 500,
  height: 150,
  child: Stack(
    children: [
      Positioned.fill(
       child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0), 
          child: Image.network(
            "https://m.media-amazon.com/images/M/MV5BZGQ4OTAxZTEtZjVjZS00MTJkLThiMTItNjc1ZTczN2UxYjEzXkEyXkFqcGc@._V1_.jpg",
            fit: BoxFit.cover, 
          ),
        ),
      ),
      Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 5, 
      ),
    ],
  ),
),

  SizedBox(height: 10,),

      Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 54, 52, 52), 
            border: Border.all(
              color: const Color.fromARGB(255, 54, 52, 52),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12), 
          ),
          child: ListView(
            padding: EdgeInsets.zero, 
            children: [
              FootballScoreCard(
                leagueLogoUrl: "lib/assets/ucl.png",
                team1: "Manchester United",
                team2: "Chelsea",
                team1LogoUrl: "lib/assets/emyu.png",
                team2LogoUrl: "lib/assets/chelsea.png",
                date: "7/9/2024",
              ),
              FootballScoreCard(
                leagueLogoUrl: "lib/assets/ucl.png",
                team1: "Real Madrid",
                team2: "Manchester United",
                team1LogoUrl: "lib/assets/madrid.png",
                team2LogoUrl: "lib/assets/emyu.png",
                date: "30/9/2024",
              ),
            ],
          ),
        ),
      ),
    ],
  ),
)


    );
  }
}
