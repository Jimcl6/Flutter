// ignore_for_file: library_private_types_in_public_api

import 'package:destini_flutter/components/btn_choice1.dart';
import 'package:destini_flutter/components/btn_choice2.dart';
import 'package:destini_flutter/models/story_brain.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 39, 11, 116),
              Color.fromARGB(255, 90, 60, 175),
            ])),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(storyBrain.getStory(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 2,
                        ),
                      )),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: BtnChoice1(
                      choiceText: storyBrain.getChoice1(),
                      onTap: () {
                        setState(() {
                          storyBrain.nextStory(1);
                        });
                      })),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: BtnChoice2(
                      choiceText: storyBrain.getChoice2(),
                      onTap: () {
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
