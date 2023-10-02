// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'last_updated.dart';

class AllPrefecture {
  int? id;
  String? name_ja;
  String? name_en;
  double? lat;
  double? lng;
  int? population;
  LastUpdated? lastUpdated;
  int? cases;
  int? deaths;
  int? pcr;
  int? hospitalize;
  int? severe;
  int? discharge;
  int? symptomConfirming;

  AllPrefecture(
      this.id,
      this.name_ja,
      this.name_en,
      this.lat,
      this.lng,
      this.population,
      this.lastUpdated,
      this.cases,
      this.deaths,
      this.pcr,
      this.hospitalize,
      this.severe,
      this.discharge,
      this.symptomConfirming);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name_ja': name_ja,
      'name_en': name_en,
      'lat': lat,
      'lng': lng,
      'population': population,
      'lastUpdated': lastUpdated?.toMap(),
      'cases': cases,
      'deaths': deaths,
      'pcr': pcr,
      'hospitalize': hospitalize,
      'severe': severe,
      'discharge': discharge,
      'symptomConfirming': symptomConfirming,
    };
  }

  factory AllPrefecture.fromMap(Map<String, dynamic> map) {
    return AllPrefecture(
      map['id'] != null ? map['id'] as int : null,
      map['name_ja'] != null ? map['name_ja'] as String : null,
      map['name_en'] != null ? map['name_en'] as String : null,
      map['lat'] != null ? map['lat'] as double : null,
      map['lng'] != null ? map['lng'] as double : null,
      map['population'] != null ? map['population'] as int : null,
      map['lastUpdated'] != null
          ? LastUpdated.fromMap(map['lastUpdated'] as Map<String, dynamic>)
          : null,
      map['cases'] != null ? map['cases'] as int : null,
      map['deaths'] != null ? map['deaths'] as int : null,
      map['pcr'] != null ? map['pcr'] as int : null,
      map['hospitalize'] != null ? map['hospitalize'] as int : null,
      map['severe'] != null ? map['severe'] as int : null,
      map['discharge'] != null ? map['discharge'] as int : null,
      map['symptomConfirming'] != null ? map['symptomConfirming'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AllPrefecture.fromJson(String source) =>
      AllPrefecture.fromMap(json.decode(source) as Map<String, dynamic>);
}
