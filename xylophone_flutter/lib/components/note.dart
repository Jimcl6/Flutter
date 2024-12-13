import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerBtn extends StatefulWidget {
  final int noteNumber;
  final Color color;
  const AudioPlayerBtn({
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
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource('note${widget.noteNumber}.wav'));
        },
        child: Container(
          width: double.infinity,
          color: widget.color,
        ),
      ),
    );
  }
}
