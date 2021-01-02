import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/welcome.dart';

class OnboardingScreen extends StatelessWidget {

  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyTextStyle: TextStyle(fontSize: 19.0),
    descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: musicWhite,
    imagePadding: EdgeInsets.zero,
  );

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset(assetName, width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Gene Information",
          body: "Learn about DNA, genes and the nucleotides.",
          image: _buildImage('assets/images/learngene.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Play your DNA",
          body: "Generate music as unique as your DNA",
          image: _buildImage('assets/images/genemusic.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Keyboard Tutorials",
          body: "Watch videos to learn how to play the keyboard.",
          image: _buildImage('assets/images/watchtutorial.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Visualise Music",
          body: "Play songs which use 4 chords to visualise them using DNA sequence!",
          image: _buildImage('assets/images/watchmusic.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}