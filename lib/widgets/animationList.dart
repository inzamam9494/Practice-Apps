import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({super.key});

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {

  final bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Card(
        child: Row(
          children: [
            Column(
              children: []

            )
          ],
        ),
      ),
    );
  }
}
