import 'package:flutter/material.dart';
import '../models/dua_class.dart';

class DuaCard extends StatelessWidget {
  const DuaCard({required this.dua});
  final Dua dua;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      color: Colors.green.shade300,
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
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
            indent: 6,
            endIndent: 6,
          ),
          Container(
            color: Colors.green.shade200,
            height: 150,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    dua.title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    dua.description,
                    textDirection: TextDirection.rtl,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
