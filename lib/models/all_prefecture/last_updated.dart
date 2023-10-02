// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LastUpdated {
  int? casesDate;
  int? deathsDate;
  int? pcrDate;
  int? hospitalizeDate;
  int? severeDate;
  int? dischargeDate;
  int? symptomConfirmingDate;

  LastUpdated(
      this.casesDate,
      this.deathsDate,
      this.pcrDate,
      this.hospitalizeDate,
      this.severeDate,
      this.dischargeDate,
      this.symptomConfirmingDate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'casesDate': casesDate,
      'deathsDate': deathsDate,
      'pcrDate': pcrDate,
      'hospitalizeDate': hospitalizeDate,
      'severeDate': severeDate,
      'dischargeDate': dischargeDate,
      'symptomConfirmingDate': symptomConfirmingDate,
    };
  }

  factory LastUpdated.fromMap(Map<String, dynamic> map) {
    return LastUpdated(
      map['casesDate'] != null ? map['casesDate'] as int : null,
      map['deathsDate'] != null ? map['deathsDate'] as int : null,
      map['pcrDate'] != null ? map['pcrDate'] as int : null,
      map['hospitalizeDate'] != null ? map['hospitalizeDate'] as int : null,
      map['severeDate'] != null ? map['severeDate'] as int : null,
      map['dischargeDate'] != null ? map['dischargeDate'] as int : null,
      map['symptomConfirmingDate'] != null
          ? map['symptomConfirmingDate'] as int
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LastUpdated.fromJson(String source) =>
      LastUpdated.fromMap(json.decode(source) as Map<String, dynamic>);
}
