// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Japan {
  int? date;
  int? pcr;
  int? hospitalize;
  int? positive;
  int? severe;
  int? discharge;
  int? death;
  int? symptomConfirming;

  Japan(this.date, this.pcr, this.hospitalize, this.positive, this.severe,
      this.discharge, this.death, this.symptomConfirming);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'pcr': pcr,
      'hospitalize': hospitalize,
      'positive': positive,
      'severe': severe,
      'discharge': discharge,
      'death': death,
      'symptomConfirming': symptomConfirming,
    };
  }

  factory Japan.fromMap(Map<String, dynamic> map) {
    return Japan(
      map['date'] != null ? map['date'] as int : null,
      map['pcr'] != null ? map['pcr'] as int : null,
      map['hospitalize'] != null ? map['hospitalize'] as int : null,
      map['positive'] != null ? map['positive'] as int : null,
      map['severe'] != null ? map['severe'] as int : null,
      map['discharge'] != null ? map['discharge'] as int : null,
      map['death'] != null ? map['death'] as int : null,
      map['symptomConfirming'] != null ? map['symptomConfirming'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Japan.fromJson(String source) =>
      Japan.fromMap(json.decode(source) as Map<String, dynamic>);
}
