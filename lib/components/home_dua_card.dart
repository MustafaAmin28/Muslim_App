import 'package:flutter/material.dart';
import '../models/home_dua_class.dart';

class HomeDuaCard extends StatelessWidget {
  const HomeDuaCard({required this.homeDuaCard});

  final HomeDuaCardItem homeDuaCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Colors.green.shade200,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return homeDuaCard.newPage;
          }));
        },
        child: ListTile(
          leading: Icon(homeDuaCard.duaIcon),
          title: Text(homeDuaCard.title),
          subtitle: Text(homeDuaCard.subtitle),
        ),
      ),
    );
  }
}
