import 'package:flutter/material.dart';
import 'package:happy_birthday/businessCard.dart';

class Quadrant extends StatelessWidget {
  const Quadrant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    color: Colors.cyanAccent,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Text Widgets",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(20),
                            child: Text("Displays text and follows the recommended Material Design guidelines."))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    color: Colors.purpleAccent,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Image Widgets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Creates a composable that lays out and draws a given Painter class object."))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    color: Colors.greenAccent,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Row Widgets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("A layout composable that places its children in a horizontal sequence."))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    color: Colors.amberAccent,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Column Widgets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("A layout composable that places its children in a vertical sequence."))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 350,
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => const BusinessCard()));
            },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),
                child: const Text("NEXT",
                style: TextStyle(color: Colors.white),)),
          )
        ],
      ),
    );
  }
}
