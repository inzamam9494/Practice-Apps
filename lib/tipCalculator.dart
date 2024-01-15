import 'package:flutter/material.dart';

import 'diceRollerApp.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  final TextEditingController billAmount = TextEditingController();
  final TextEditingController tipPercentage = TextEditingController();
  bool isSwitch = false;
  double total = 0.0;
  double roundUp = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    "Calculate Tip",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: billAmount,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.price_change_outlined),
                    hintText: "Bill Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: tipPercentage,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.percent),
                    hintText: "Tip Percentage",
                    filled: true,
                    fillColor: Colors.greenAccent, ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Round up tip?",
                  style: TextStyle(
                    fontSize: 20
                  ),),

                  Switch(
                      value: isSwitch,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = value;
                          if (value == true) {
                            double bill = double.parse(billAmount.text);
                            double tip = double.parse(tipPercentage.text);
                            total = (tip / bill) * 100;
                            roundUp = double.parse(total.toStringAsPrecision(2));
                          }
                        });
                      }),
                ],
              ),
              const SizedBox(height: 20),
              Text("Tip Amount: \$ $roundUp",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
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
                        MaterialStatePropertyAll(Colors.black)),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
