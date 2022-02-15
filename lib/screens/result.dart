import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double result;
  const ResultPage({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Here is your result',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: result <= 21.0
                    ? const AssetImage('images/feeling_blue.png')
                    : const AssetImage('images/feeling_happy.png'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                result.toStringAsFixed(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
