import 'package:http/http.dart' as http;

// URL base
 const baseUrl =
     'https://api.covid19api.com/live/country';
//const baseUrl =
//    'https://api.covid19api.com/live/country/brazil/status/confirmed/date/2020-03-21T13:13:30Z';

// País a ser consultado
const country = 'brazil';

// TODO: colocar data de seis meses atras de acordo com atara atual do dispositivo
// Data de seis meses atras
const dateSixMonthsAgo = '2020-05-16T13:13:30Z';

const dateTwoWeeksAgo = '2020-11-02T13:13:30Z';


class ApiService {
  // variaveis do tipo Future são para opraçoes do tipo assincrona
  static Future getCases() async {
    var url = Uri.parse('$baseUrl/$country/status/confirmed/date/$dateSixMonthsAgo');
    //var url = Uri.parse(baseUrl);
    return await http.get(url);
  }

  static Future getDeaths() async {
    var url = Uri.parse('$baseUrl/$country/status/confirmed/date/$dateSixMonthsAgo');
    //var url = Uri.parse(baseUrl);
    return await http.get(url);
  }
}