import 'dart:convert';

class AllResult {
  String? nameEn;
  String? nameJa;
  int? id;
  int? date;
  int? pcr;
  int? hospitalize;
  int? positive;
  int? severe;
  int? discharge;
  int? death;
  int? symptomConfirming;

  AllResult(
      this.nameEn,
      this.nameJa,
      this.id,
      this.date,
      this.pcr,
      this.hospitalize,
      this.positive,
      this.severe,
      this.discharge,
      this.death,
      this.symptomConfirming);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameEn': nameEn,
      'nameJa': nameJa,
      'id': id,
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

  factory AllResult.fromMap(Map<String, dynamic> map) {
    return AllResult(
      map['nameEn'] != null ? map['nameEn'] as String : null,
      map['nameJa'] != null ? map['nameJa'] as String : null,
      map['id'] != null ? map['id'] as int : null,
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

  factory AllResult.fromJson(String source) =>
      AllResult.fromMap(json.decode(source) as Map<String, dynamic>);
}
