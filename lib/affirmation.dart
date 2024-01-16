import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_birthday/woof.dart';

class Affirmation extends StatefulWidget {
  const Affirmation({super.key});

  @override
  State<Affirmation> createState() => _AffirmationState();
}

class _AffirmationState extends State<Affirmation> {
  final image1 = "https://cdn.pixabay.com/photo/2016/09/08/18/45/cube-1655118_1280.jpg";
  final image2 = "https://cdn.pixabay.com/photo/2016/09/12/09/10/hexagonal-1663344_1280.jpg";
  final image3 = "https://raw.githubusercontent.com/google-developer-training/basic-android-kotlin-compose-training-affirmations/intermediate/app/src/main/res/drawable/image9.jpg";
  final image4 = "https://raw.githubusercontent.com/google-developer-training/basic-android-kotlin-compose-training-affirmations/intermediate/app/src/main/res/drawable/image4.jpg";
  final image5 = "https://raw.githubusercontent.com/google-developer-training/basic-android-kotlin-compose-training-affirmations/intermediate/app/src/main/res/drawable/image5.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(image1),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("I am so Strong",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),),
                      ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(image2),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("I believe in myself",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(image3),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text("Each day is a new opportunity to grow and be a better version of myself",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(image4),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text("Every challenge in my life is an opportunity to learn from",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(image5),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text("I will be present in all the moments that this day brings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (
                            BuildContext context) => const Woof()));
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.black)),
                  child: const Text(
                    "NEXT",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
