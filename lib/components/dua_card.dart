import 'package:flutter/material.dart';
import '../models/dua_class.dart';

class DuaCard extends StatelessWidget {
  const DuaCard({required this.dua});
  final Dua dua;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Color(0xff2e534c),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/pngwing.com.png',
                  height: 60,
                  width: 60,
                ),
                Text(
                  dua.header,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
            indent: 6,
            endIndent: 6,
          ),
          Container(
            color: Color(0xff2e534c),
            height: 150,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      dua.title,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      dua.description,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
