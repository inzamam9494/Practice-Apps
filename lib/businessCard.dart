import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_birthday/diceRollerApp.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  final icon = "https://logowik.com/content/uploads/images/flutter5786.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlueAccent,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(icon)))),
                const Text("Jennifier Doe",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w300
                ),),
                const Text("Flutter Devloper Extrarodinaire",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),)
          ]),
           Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 80),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("+11 (123) 444 555 666")
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(width: 80),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("@FlutterDev")
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(width: 80),
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("jen.doe@flutter.com")
                  ],
                ),
                 const SizedBox(height: 15),
                 SizedBox(
                   width: 350,
                   child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                BuildContext context) => const DiceRollerApp()));
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.white)),
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// https://logowik.com/content/uploads/images/flutter5786.jpg
