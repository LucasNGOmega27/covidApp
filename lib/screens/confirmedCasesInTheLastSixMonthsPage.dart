// ignore: file_names
// ignore_for_file: file_names

import 'dart:convert';

import 'package:covid_app_5/sevices/api.dart';
import 'package:covid_app_5/sevices/casesJson.dart';
import 'package:flutter/material.dart';

class ConfirmedCasesPage extends StatefulWidget {
  const ConfirmedCasesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ConfirmedCasesPage> createState() => _ConfirmedCasesPageState();
}

class _ConfirmedCasesPageState extends State<ConfirmedCasesPage> {
  // variável que irá receber os casos do json
  var cases = <Cases>[];

  // metodo privado que irá usar a api
  _getCases() {
    ApiService.getCases().then((response) {
      // Iterable - representa a uma coleção de elementos que podem ser acessados de maneira sequencial
      // recebendo os dados da fução getCases da API
      Iterable casesInTheLastSixMonths = json.decode(response.body);
      // converte os dados json
      cases = casesInTheLastSixMonths
          .map((model) => Cases.fromJson(model))
          .toList();
    });
  }

  // usando o construtor da classe para chamar o método privado _getCases
  // e salvar os dados em cases
  _ConfirmedCasesPageState (){
    _getCases();
  }

  @override
  Widget build(BuildContext context) {

    confirmedCasesInTheLastSixMonths() {

      var casesFromSixMonthsAgo = cases.last.confirmed;
      var currentCases = cases.first.confirmed;

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
      body: confirmedCasesInTheLastSixMonths(),
    );
  }
}