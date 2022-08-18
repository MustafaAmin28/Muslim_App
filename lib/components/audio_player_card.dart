import 'package:muslim_app/services/audio_service.dart';
import 'package:flutter/material.dart';
import '../models/home_audio_class.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerCard extends StatefulWidget {
  AudioPlayerCard({required this.audioList});
  List<HomeAudio> audioList;

  @override
  State<AudioPlayerCard> createState() => _AudioPlayerCardState();
}

class _AudioPlayerCardState extends State<AudioPlayerCard> {
  final player = AudioPlayer();
  IconData ico = Icons.play_arrow;
  bool playing = false;
  int current = 0;
  String title = myList[0].title, subtitle = myList[0].subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
        ),
      ),
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          color: Colors.green.shade200,
          child: Column(
            children: [
              Image.asset(
                'assets/images/headphones.png',
                height: 250,
                width: 250,
              ),
              Spacer(
                flex: 2,
              ),
              Text(title),
              Text(subtitle),
              Spacer(
                flex: 1,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
                indent: 16,
                endIndent: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        current = current > 0 ? current - 1 : myList.length - 1;
                        title = myList[current].title;
                        subtitle = myList[current].subtitle;
                        player.setSource(
                            AssetSource(widget.audioList[current].audioPath));
                        player.resume();
                        ico = Icons.pause;
                        playing = true;
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        player.setSource(
                            AssetSource(widget.audioList[current].audioPath));

                        if (!playing) {
                          player.resume();
                          playing = !playing;
                          ico = Icons.pause;
                        } else {
                          player.pause();
                          playing = !playing;
                          ico = Icons.play_arrow;
                        }
                      });
                    },
                    icon: Icon(ico),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        current = (current + 1) % myList.length;
                        title = myList[current].title;
                        subtitle = myList[current].subtitle;
                        player.setSource(
                            AssetSource(widget.audioList[current].audioPath));
                        player.resume();
                        ico = Icons.pause;
                        playing = true;
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
            ],
          )),
    );
  }
}
