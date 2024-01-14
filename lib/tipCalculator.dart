import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Calculate Tip"),
            TextField(
              controller: billAmount,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Bill Amount",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            TextField(
              controller: tipPercentage,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Tip Percentage",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            Row(
              children: [
                const Text("Round up tip"),
                Switch(value: isSwitch,
                    onChanged: (value){
                  setState(() {
                    isSwitch = value;
                    if(value == true){
                      double bill = double.parse(billAmount.text);
                      double tip = double.parse(tipPercentage.text);
                      total = (tip/bill)*100;
                    }
                  });
                    }),
              ],
            ),
            Text("Tip Amount: \$ $total"),
          ],
        ),
      ),
    );
  }
}
