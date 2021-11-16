// ignore_for_file: file_names

import 'dart:convert';

import 'package:covid_app_5/sevices/api.dart';
import 'package:covid_app_5/sevices/casesJson.dart';
import 'package:flutter/material.dart';

import 'confirmedCasesInTheLastSixMonthsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    homePageView() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConfirmedCasesPage(title: 'Casos confirmados no Brasil');
                }));
              },
              child: Text('CONTAINED BUTTON'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConfirmedCasesPage(title: 'Casos confirmados no Brasil');
                }));
              },
              child: Text('CONTAINED BUTTON'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConfirmedCasesPage(title: 'Casos confirmados no Brasil');
                }));
              },
              child: Text('CONTAINED BUTTON'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: homePageView(),
    );
  }
}

