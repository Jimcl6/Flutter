import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerBtn extends StatefulWidget {
  int noteNumber;
  Color color;
  AudioPlayerBtn({
    super.key,
    required this.noteNumber,
    required this.color,
  });

  @override
  State<AudioPlayerBtn> createState() => _AudioPlayerBtnState();
}

class _AudioPlayerBtnState extends State<AudioPlayerBtn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: widget.color,
        child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note${widget.noteNumber}.wav'));
            },
            child: const Text('Testing')),
      ),
    );
  }
}
