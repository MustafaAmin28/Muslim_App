import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counts = 0, current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            tasbeh[current],
            style: TextStyle(fontSize: 28),
          ),
          Spacer(),
          Text(
            counts.toString(),
            style: TextStyle(fontSize: 36),
          ),
          Spacer(),
          ElevatedButton(
            child: const Text(
              'اضغط',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              HapticFeedback.heavyImpact();
              setState(() {
                counts++;
                if (counts == 34 ||
                    counts == 67 ||
                    counts == 100 ||
                    counts == 101) {
                  current = (current + 1) % tasbeh.length;
                  if (counts == 101) counts = 0;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff2e534c),
              fixedSize: const Size(100, 100),
              shape: const CircleBorder(),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

List<String> tasbeh = [
  "سبحان الله",
  " الحمد لله",
  " الله اكبر",
  "لا إله إلا الله وحده لا شريك له، له الملك، وله الحمد، وهو على كل شيء قدير"
];
