import 'package:flutter/material.dart';
import 'package:muslim_app/services/audio_service.dart';
import 'package:muslim_app/services/home_dua_card_service.dart';
import '../components/audio_player_card.dart';
import '../components/home_dua_card.dart';
import '../components/sebha.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Muslim App"),
          leading: Icon(Icons.mosque),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.menu_book_rounded),
                text: 'الأدعية',
              ),
              Tab(
                icon: Icon(Icons.headphones),
                text: 'الصوتيات',
              ),
              Tab(
                icon: Icon(Icons.mosque),
                text: 'السبحة',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                ),
              ),
              child: ListView.builder(
                itemCount: homeDuaCard.length,
                itemBuilder: (context, index) {
                  return HomeDuaCard(homeDuaCard: homeDuaCard[index]);
                },
              ),
            ),
            AudioPlayerCard(audioList: myList),
            Sebha(),
          ],
        ),
      ),
    );
  }
}
