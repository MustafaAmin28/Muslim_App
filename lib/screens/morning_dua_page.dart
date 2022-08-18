import 'package:flutter/material.dart';
import '../components/dua_card.dart';
import '../services/dua_service.dart';

class MorningDuaPage extends StatelessWidget {
  const MorningDuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2e534c),
        leading: Icon(Icons.sunny),
        title: Text('Morning Dua\'s'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView.builder(
            itemCount: morningDuasList.length,
            itemBuilder: (context, index) {
              return DuaCard(dua: morningDuasList[index]);
            }),
      ),
    );
  }
}
