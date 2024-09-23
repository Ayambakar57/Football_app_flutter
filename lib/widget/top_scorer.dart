import 'package:flutter/material.dart';

class TopScorerTile extends StatelessWidget {
  final String playerName;
  final String teamName;
  final int goals;
  final String clubIconPath;

  const TopScorerTile({
    Key? key,
    required this.playerName,
    required this.teamName,
    required this.goals,
    required this.clubIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(clubIconPath),
      ),
      title: Text(playerName, style: TextStyle(color: Colors.white),),
      subtitle: Text(teamName, style: TextStyle(color: Colors.white),),
      trailing: Text('$goals goals', style: TextStyle(color: Colors.white),),
    );
  }
}
