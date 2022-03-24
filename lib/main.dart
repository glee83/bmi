import 'package:bmi_app/routes/route.dart';
import 'package:bmi_app/routes/route_names.dart';
import 'package:bmi_app/screens/bmi.dart';
// import 'package:bmi_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(route: AppRouting()));
}

class MyApp extends StatelessWidget {
  AppRouting route;
  MyApp({Key? key, required this.route}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: RouteName.home,
      onGenerateRoute: route.generatRoutes,
    );
  }
}
