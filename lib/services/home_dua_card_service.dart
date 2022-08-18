import 'package:muslim_app/screens/morning_dua_page.dart';
import 'package:muslim_app/screens/night_dua_page.dart';
import 'package:muslim_app/screens/prayer_dua_page.dart';

import '../models/home_dua_class.dart';
import 'package:flutter/material.dart';

final List<HomeDuaCardItem> homeDuaCard = const [
  HomeDuaCardItem(
      title: 'أدعية الصباح',
      subtitle: 'أدعية عند القيام من النوم',
      duaIcon: Icons.sunny,
      newPage: MorningDuaPage()),
  HomeDuaCardItem(
      title: 'أدعية المساء',
      subtitle: 'أدعية قبل الذهاب للنوم',
      duaIcon: Icons.nightlight_round_outlined,
      newPage: NightDuaPage()),
  HomeDuaCardItem(
      title: 'أدعية الصلاة',
      subtitle: 'أدعية اثناء وبعد الصلاة',
      duaIcon: Icons.mosque_sharp,
      newPage: PrayerDuaPage()),
];
