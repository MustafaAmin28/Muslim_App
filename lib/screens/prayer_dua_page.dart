import 'package:flutter/material.dart';
import '../components/dua_card.dart';
import '../services/dua_service.dart';

class PrayerDuaPage extends StatelessWidget {
  const PrayerDuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          leading: Icon(Icons.mosque),
          title: Text('Prayer Dua\'s'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView.builder(
              itemCount: prayerDuasList.length,
              itemBuilder: (context, index) {
                return DuaCard(dua: prayerDuasList[index]);
              }),
        ));
  }
}
