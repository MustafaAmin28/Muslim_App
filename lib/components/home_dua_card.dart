import 'package:flutter/material.dart';
import '../models/home_dua_class.dart';

class HomeDuaCard extends StatelessWidget {
  const HomeDuaCard({required this.homeDuaCard});

  final HomeDuaCardItem homeDuaCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Color(0xff2e534c),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return homeDuaCard.newPage;
          }));
        },
        child: ListTile(
          leading: Icon(
            homeDuaCard.duaIcon,
            color: Colors.white,
          ),
          title: Text(
            homeDuaCard.title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            homeDuaCard.subtitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
