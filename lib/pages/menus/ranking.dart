import 'package:flutter/material.dart';
import 'package:my_bottom_navbar/widget/top_scorer.dart';

class Ranking extends StatelessWidget {
  const Ranking({super.key});

  // Top scorers data
  final List<Map<String, dynamic>> topScorers = const [
    {
      "name": "Player 1",
      "team": "Team A",
      "goals": 30,
      "clubIcon": "https://akcdn.detik.net.id/community/media/visual/2024/06/19/cristiano-ronaldo-1.jpeg?w=600&q=90",
    },
    {
      "name": "Player 2",
      "team": "Team B",
      "goals": 25,
      "clubIcon": "https://akcdn.detik.net.id/community/media/visual/2024/06/19/cristiano-ronaldo-1.jpeg?w=600&q=90",
    },
    {
      "name": "Player 3",
      "team": "Team C",
      "goals": 20,
      "clubIcon": "https://akcdn.detik.net.id/community/media/visual/2024/06/19/cristiano-ronaldo-1.jpeg?w=600&q=90",
    },
    {
      "name": "Player 4",
      "team": "Team D",
      "goals": 18,
      "clubIcon": "https://akcdn.detik.net.id/community/media/visual/2024/06/19/cristiano-ronaldo-1.jpeg?w=600&q=90",
    },
    {
      "name": "Player 5",
      "team": "Team E",
      "goals": 15,
      "clubIcon": "https://akcdn.detik.net.id/community/media/visual/2024/06/19/cristiano-ronaldo-1.jpeg?w=600&q=90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: const Text('UCL Top Scorers',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
      color: Colors.white, 
         ),
        ),
      ),
      body: ListView.builder(
        itemCount: topScorers.length,
        itemBuilder: (context, index) {
          final scorer = topScorers[index];
          return TopScorerTile(
            playerName: scorer['name'],
            teamName: scorer['team'],
            goals: scorer['goals'],
            clubIconPath: scorer['clubIcon'],
          );
        },
      ),
    );
  }
}
