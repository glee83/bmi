import 'package:bmi_app/routes/route_names.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
        children: [
          Positioned(
            right: -100.0,
            top: -50.0,
            width: 250.0,
            height: 250.0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(200.0),
              ),
            ),
          ),
          Positioned(
            left: -150.0,
            bottom: -100.0,
            width: 250.0,
            height: 250.0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(200.0),
              ),
            ),
          ),
          Positioned(
            top: 300.0,
            left: 15.0,
            width: 330.0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hi welcome to BMI app',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Do you want to know you body mass index?',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print('you clicked me dude!!!');
                        Navigator.of(context).pushNamed(RouteName.bmi);
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
