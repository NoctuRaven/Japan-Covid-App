import 'package:japan_covid_app/data/datasource/datasource.dart';
import 'package:japan_covid_app/models/all_prefecture/all_prefecture.dart';

import 'package:japan_covid_app/models/japan.dart';
import 'package:japan_covid_app/models/positives.dart';
import 'package:japan_covid_app/models/prefecture.dart';
import 'package:japan_covid_app/models/statistics/statistic.dart';

import '../../models/all_result.dart';

class Database {
  Datasource data = Datasource();

  Future<Japan> getJapan() async {
    var map = await data.returnJapan();
    return Japan.fromMap(map);
  }

  Future<List<AllPrefecture>> getAllPrefecture() async {
    var listMap = await data.returnAllPrefecture();
    return listMap.map((e) => AllPrefecture.fromMap(e)).toList();
  }

  Future<List<Prefecture>> getPrefecture() async {
    var listMap = await data.returnPrefecture();
    return listMap.map((e) => Prefecture.fromMap(e)).toList();
  }

  Future<List<Positives>> getPositives({String prefectureName = '東京都'}) async {
    var listMap = await data.returnPositives(prefectureName);
    return listMap.map((e) => Positives.fromMap(e)).toList();
  }

  Future<List<AllResult>> getAllResult() async {
    Japan japanResult = await getJapan();
    List<Prefecture> allPrefectureResult = await getPrefecture();
    List<AllResult> allResultList = [
      AllResult(
          'Japan',
          '日本',
          48,
          japanResult.date,
          japanResult.pcr,
          japanResult.hospitalize,
          japanResult.positive,
          japanResult.severe,
          japanResult.discharge,
          japanResult.death,
          japanResult.symptomConfirming),
      ...allPrefectureResult
          .map((e) => AllResult(
                e.nameEn,
                e.nameJa,
                e.id,
                e.lastUpdated?.casesDate,
                e.pcr,
                e.hospitalize,
                e.cases,
                e.severe,
                e.discharge,
                e.deaths,
                e.symptomConfirming,
              ))
          .toList()
    ];
    return allResultList;
  }

  Future<List<Statistic>> getAllStatistics() async {
    var listMap = await data.returnStatistics();
    return listMap.map((e) => Statistic.fromJson(e)).toList();
  }
}
