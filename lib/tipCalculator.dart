import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Calculate Tip"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Bill Amount",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            TextField(
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
                    value = true;
                  });
                    }),
                const Text("Tip Amount: \$0.00")
              ],
            )
          ],
        ),
      ),
    );
  }
}
