import 'package:flutter/material.dart';
import '../components/dua_card.dart';
import '../services/dua_service.dart';

class NightDuaPage extends StatelessWidget {
  const NightDuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2e534c),
          leading: Icon(Icons.nightlight_round_outlined),
          title: Text('Night Dua\'s'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView.builder(
              itemCount: nightDuasList.length,
              itemBuilder: (context, index) {
                return DuaCard(dua: nightDuasList[index]);
              }),
        ));
  }
}
