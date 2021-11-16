// ignore_for_file: file_names

import 'dart:convert';

import 'package:covid_app_5/sevices/api.dart';
import 'package:covid_app_5/sevices/casesJson.dart';
import 'package:flutter/material.dart';

class DeathsPage extends StatefulWidget {
  const DeathsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DeathsPage> createState() => _DeathsPageState();
}

class _DeathsPageState extends State<DeathsPage> {
  // variável que irá receber os casos do json
  var deaths = <Cases>[];

  // metodo privado que irá usar a api
  _getCases() {
    ApiService.getDeaths().then((response) {
      // Iterable - representa a uma coleção de elementos que podem ser acessados de maneira sequencial
      // recebendo os dados da fução getCases da API
      Iterable deathsFromTwoWeeksAgo = json.decode(response.body);
      // converte os dados json
      deaths = deathsFromTwoWeeksAgo
          .map((model) => Cases.fromJson(model))
          .toList();
    });
  }

  // usando o construtor da classe para chamar o método privado _getCases
  // e salvar os dados em cases
  _DeathsPageState (){
    _getCases();
  }

  @override
  Widget build(BuildContext context) {

    movingAverageOfDeaths() {

      var casesFromSixMonthsAgo = deaths.last.deaths;
      var currentCases = deaths.first.deaths;

      debugPrint('$currentCases');
      var casesConfirmed = (currentCases! - casesFromSixMonthsAgo!);
      debugPrint('$casesConfirmed');
      return Column(
        children: <Widget>[
          Text('Deliver features faster'),
          Text('$casesConfirmed'),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: movingAverageOfDeaths(),
    );
  }
}