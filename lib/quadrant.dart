import 'package:flutter/material.dart';

class Quadrant extends StatelessWidget {
  const Quadrant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.purpleAccent),
                child: const Text("Text Widgets"),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Text("Image Widgets"),
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}
