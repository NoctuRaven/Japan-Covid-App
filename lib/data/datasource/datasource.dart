import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:japan_covid_app/models/japan.dart';

class Datasource {
  Future<Map<String, dynamic>> returnJapan() async {
    final url = Uri.parse('https://covid19-japan-web-api.now.sh/api/v1/total');
    final response = await http.get(url);
    final Map<String, dynamic> responseMap = jsonDecode(response.body);
    return responseMap;
  }

  Future<List<Map<String, dynamic>>> returnAllPrefecture() async {
    final url =
        Uri.parse('https://covid19-japan-web-api.now.sh/api/v1/prefectures');
    final response = await http.get(url);
    List<dynamic> responseDecode = jsonDecode(response.body);
    List<Map<String, dynamic>> listObject =
        responseDecode.map((e) => e as Map<String, dynamic>).toList();
    return listObject;
  }

  Future<List<Map<String, dynamic>>>
      returnStatatisticsOfAllPrefectures() async {
    final url =
        Uri.parse('https://covid19-japan-web-api.now.sh/api/v1/statistics');
    final response = await http.get(url);
    List<dynamic> responseDecode = jsonDecode(response.body);
    List<Map<String, dynamic>> listObject =
        responseDecode.map((e) => e as Map<String, dynamic>).toList();
    return listObject;
  }

  Future<List<Map<String, dynamic>>> returnPrefecture() async {
    final url =
        Uri.parse('https://covid19-japan-web-api.now.sh/api/v1/prefectures');
    final response = await http.get(url);
    List<dynamic> responseDecode = jsonDecode(response.body);
    List<Map<String, dynamic>> listObject =
        responseDecode.map((e) => e as Map<String, dynamic>).toList();
    return listObject;
  }

  Future<List<Map<String, dynamic>>> returnPositives(
      String prefectureName) async {
    final url = Uri.parse(
        'https://covid19-japan-web-api.now.sh/api/v1/positives?prefecture=$prefectureName');
    final response = await http.get(url);
    List<dynamic> responseDecode = jsonDecode(response.body);
    List<Map<String, dynamic>> listObject =
        responseDecode.map((e) => e as Map<String, dynamic>).toList();
    return listObject;
  }

  Future<List<Map<String, dynamic>>> returnStatistics() async {
    final url =
        Uri.parse('https://covid19-japan-web-api.now.sh/api/v1/statistics');
    final response = await http.get(url);
    List<dynamic> responseDecode = jsonDecode(response.body);
    List<Map<String, dynamic>> listObject =
        responseDecode.map((e) => e as Map<String, dynamic>).toList();
    return listObject;
  }
}
