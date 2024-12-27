import 'package:destini_flutter/models/story_brain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Text(
                    storyBrain.getStory(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red)),
                  child: Text(
                    storyBrain.getChoice1(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: OutlinedButton(
                  onPressed: () {
                    //Choice 2 made by user.

                    setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  child: Text(
                    storyBrain.getChoice2(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
