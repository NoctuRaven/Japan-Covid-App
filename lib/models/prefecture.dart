// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Prefecture {
  int? id;
  String? nameJa;
  String? nameEn;
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

  Prefecture(
      {this.id,
      this.nameJa,
      this.nameEn,
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
      this.symptomConfirming});

  Prefecture.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nameJa = json['name_ja'];
    nameEn = json['name_en'];
    lat = json['lat'];
    lng = json['lng'];
    population = json['population'];
    lastUpdated = json['last_updated'] != null
        ? new LastUpdated.fromMap(json['last_updated'])
        : null;
    cases = json['cases'];
    deaths = json['deaths'];
    pcr = json['pcr'];
    hospitalize = json['hospitalize'];
    severe = json['severe'];
    discharge = json['discharge'];
    symptomConfirming = json['symptom_confirming'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_ja'] = this.nameJa;
    data['name_en'] = this.nameEn;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['population'] = this.population;
    if (this.lastUpdated != null) {
      data['last_updated'] = this.lastUpdated!.toMap();
    }
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['pcr'] = this.pcr;
    data['hospitalize'] = this.hospitalize;
    data['severe'] = this.severe;
    data['discharge'] = this.discharge;
    data['symptom_confirming'] = this.symptomConfirming;
    return data;
  }
}

class LastUpdated {
  int? casesDate;
  int? deathsDate;
  int? pcrDate;
  int? hospitalizeDate;
  int? severeDate;
  int? dischargeDate;
  int? symptomConfirmingDate;

  LastUpdated(
      {this.casesDate,
      this.deathsDate,
      this.pcrDate,
      this.hospitalizeDate,
      this.severeDate,
      this.dischargeDate,
      this.symptomConfirmingDate});

  LastUpdated.fromMap(Map<String, dynamic> json) {
    casesDate = json['cases_date'];
    deathsDate = json['deaths_date'];
    pcrDate = json['pcr_date'];
    hospitalizeDate = json['hospitalize_date'];
    severeDate = json['severe_date'];
    dischargeDate = json['discharge_date'];
    symptomConfirmingDate = json['symptom_confirming_date'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cases_date'] = this.casesDate;
    data['deaths_date'] = this.deathsDate;
    data['pcr_date'] = this.pcrDate;
    data['hospitalize_date'] = this.hospitalizeDate;
    data['severe_date'] = this.severeDate;
    data['discharge_date'] = this.dischargeDate;
    data['symptom_confirming_date'] = this.symptomConfirmingDate;
    return data;
  }
}
