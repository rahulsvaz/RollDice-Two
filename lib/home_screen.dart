import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final randomizer = Random();

class _HomeScreenState extends State<HomeScreen> {
  int count = 1;
  String? number;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent])),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString().toUpperCase(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 250,
                  child: Image.asset('assets/images/dice-$count.png')),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = randomizer.nextInt(6) + 1;
                      if (count == 1) {
                        number = 'One';
                      }
                      if (count == 2) {
                        number = 'Two';
                      }
                      if (count == 3) {
                        number = 'Three';
                      }
                      if (count == 4) {
                        number = 'Four';
                      }
                      if (count == 5) {
                        number = 'Five';
                      }
                      if (count == 6) {
                        number = 'Six';
                      }
                    });
                  },
                  child: const Text('Roll the Dice '))
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
