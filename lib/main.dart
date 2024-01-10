import 'package:flutter/material.dart';
import 'package:happy_birthday/quadrant.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/birthday.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Happy Birthday Sam!",
                style: TextStyle(fontSize: 80, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text("Form Emma",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (
                                    BuildContext context) => const Quadrant()));
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
