import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_art/models/checkout_screens.dart';
import 'package:local_art/models/home_screens.dart';
import 'package:local_art/models/welcome_screens.dart';


void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

Widget mainview = const CheckoutScreenView();
// Widget mainview = const RegisterView();
// Widget mainview = const HomeScreenView();
// Widget mainview = const DetailProductView();
// Widget mainview = const CheckoutScreenView();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: mainview);
  }
}