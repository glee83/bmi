// import 'package:bmi_app/routes/route_names.dart';
import 'package:bmi_app/screens/result.dart';
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
  var _result;

  void calBmi() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double hSqr = height * height;
    double result = weight / hSqr;

    _result = result;
    setState(() {});
    // print(_result);
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
                decoration: const InputDecoration(
                  labelText: 'height in cm',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'weight in kg',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextButton(
                    onPressed: () {
                      calBmi();
                      heightController.text = '';
                      weightController.text = '';
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultPage(result: _result),
                      ));
                    },
                    child: const Text(
                      'Cal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                height: 50.0,
              ),
              // Text(_result == null ? " " : "${_result.toStringAsFixed(2)}")
            ],
          ),
        ),
      ),
    );
  }
}
