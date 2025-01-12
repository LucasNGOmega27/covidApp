import 'dart:convert';

import 'package:covid_app_5/screens/confirmedCasesInTheLastSixMonthsPage.dart';
import 'package:covid_app_5/screens/covidDeathsPage.dart';
import 'package:covid_app_5/screens/homePage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const HomePage(title: 'Home'),
    );
  }
}

