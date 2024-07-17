import 'package:flutter/material.dart';

import 'home_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage(
                numberOfQuestion: 20,
                rightAnswers: 8,
                time: Duration(minutes: 20),
                timeTaken: Duration(minutes: 12, seconds: 30),
              );
            }));
          },
        ),
      ),
    );
  }
}
