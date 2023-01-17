import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../main.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<OnBoardingData> onBoardingData = [
    OnBoardingData(
      title: "Be Together",
      description:
          "Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.",
      image: 'assets/images/onboarding/p1.png',
    ),
    OnBoardingData(
      title: "Choose A Tasty Dish",
      description: "Order anything you want from your Favorite restaurant.",
      image: 'assets/images/onboarding/p2.png',
    ),
    OnBoardingData(
      title: "Easy Payment",
      description:
          "Payment made easy through debit card, credit card  & more ways to pay for your food",
      image: 'assets/images/onboarding/p3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');
    return Scaffold(
      body: IntroductionScreen(
        bodyPadding: const EdgeInsets.only(top: 100),
        controlsMargin: const EdgeInsets.all(8.0),
        isTopSafeArea: true,
        isBottomSafeArea: true,
        showSkipButton: true,
        pages: [
          PageViewModel(
            title: onBoardingData[0].title,
            body: onBoardingData[0].description,
            image: Image.asset(
              onBoardingData[0].image,
              width: 250,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
          PageViewModel(
            title: onBoardingData[1].title,
            body: onBoardingData[1].description,
            image: Image.asset(
              onBoardingData[1].image,
              height: 320,
              width: 232,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
          PageViewModel(
            title: onBoardingData[2].title,
            body: onBoardingData[2].description,
            image: Image.asset(
              onBoardingData[2].image,
              height: 320,
              width: 232,
            ),
            decoration: PageDecoration(
              pageColor: Theme.of(context).scaffoldBackgroundColor,
              bodyTextStyle: const TextStyle(),
              titleTextStyle: const TextStyle(fontSize: 28),
            ),
          ),
        ],
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onDone: () {
          box.put('introduction', false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const HomePage(),
            ),
          );
        },
        onSkip: () {
          box.put('introduction', false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const HomePage(),
            ),
          );
        },
        done: const Icon(Icons.done_outline_rounded),
        next: const Icon(Icons.navigate_next_outlined),
        skip: const Text(
          "Skip",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class OnBoardingData {
  OnBoardingData({
    required this.title,
    required this.description,
    required this.image,
  });

  String description;
  String image;
  String title;
}
