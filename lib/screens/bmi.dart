import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  // GlobalKey key;
  BmiPage({Key? key}) : super(key: key);

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final heightController = TextEditingController();

  final weightController = TextEditingController();

  // double calBMI(double height, double weight) {
  //  double result;

  void calBmi() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double hSqr = height * height;
    double result = weight / hSqr;

    setState(() {
      result = result;
    });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'height in m',
                ),
              ),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'weight in kg',
                ),
              ),
              TextButton(onPressed: calBmi, child: Text('Cal')),
              // Text(result == null
              //     ? "enter value"
              //     : "${result.toStringAsFixed(2)}")
            ],
          ),
        ),
      ),
    );
  }
}
