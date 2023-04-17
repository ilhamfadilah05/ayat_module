import 'dart:convert';

import 'package:http/http.dart' as http;

import 'ayat_model.dart';

Future<List<AyatModel>> getAyat(String idSurah) async {
  var request = http.Request(
      'GET', Uri.parse("http://api.alquran.cloud/v1/surah/" + idSurah));

  http.StreamedResponse response = await request.send();
  var responseString = await response.stream.bytesToString();
  final data = json.decode(responseString);
  List dataa = data['data']['ayahs'];
  if (response.statusCode == 200) {
    return dataa.map((data) => AyatModel.fromJson(data)).toList();
  } else {
    print(response.reasonPhrase);
  }

  return dataa.map((data) => AyatModel.fromJson(data)).toList();
}
