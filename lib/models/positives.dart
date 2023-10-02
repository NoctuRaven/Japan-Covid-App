// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Positives {
  String? code;
  String? announcementDate;
  String? src;
  String? prefecture;
  String? residencePrefecture;
  String? age;
  String? gender;
  String? attribute;
  String? prefectureNumber;
  String? travelOrContact;
  String? detail;
  String? id;
  String? diagnosisDate;
  String? onset;
  String? symptom;
  String? deathOrDischargeDate;
  String? comment;
  String? outcome;
  String? outcomeSrc;

  Positives(
      {this.code,
      this.announcementDate,
      this.src,
      this.prefecture,
      this.residencePrefecture,
      this.age,
      this.gender,
      this.attribute,
      this.prefectureNumber,
      this.travelOrContact,
      this.detail,
      this.id,
      this.diagnosisDate,
      this.onset,
      this.symptom,
      this.deathOrDischargeDate,
      this.comment,
      this.outcome,
      this.outcomeSrc});

  Positives.fromMap(Map<String, dynamic> json) {
    code = json['code'];
    announcementDate = json['announcement_date'];
    src = json['src'];
    prefecture = json['prefecture'];
    residencePrefecture = json['residence_prefecture'];
    age = json['age'];
    gender = json['gender'];
    attribute = json['attribute'];
    prefectureNumber = json['prefecture_number'];
    travelOrContact = json['travel_or_contact'];
    detail = json['detail'];
    id = json['id'];
    diagnosisDate = json['diagnosis_date'];
    onset = json['onset'];
    symptom = json['symptom'];
    deathOrDischargeDate = json['death_or_discharge_date'];
    comment = json['comment'];
    outcome = json['outcome'];
    outcomeSrc = json['outcome_src'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['announcement_date'] = this.announcementDate;
    data['src'] = this.src;
    data['prefecture'] = this.prefecture;
    data['residence_prefecture'] = this.residencePrefecture;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['attribute'] = this.attribute;
    data['prefecture_number'] = this.prefectureNumber;
    data['travel_or_contact'] = this.travelOrContact;
    data['detail'] = this.detail;
    data['id'] = this.id;
    data['diagnosis_date'] = this.diagnosisDate;
    data['onset'] = this.onset;
    data['symptom'] = this.symptom;
    data['death_or_discharge_date'] = this.deathOrDischargeDate;
    data['comment'] = this.comment;
    data['outcome'] = this.outcome;
    data['outcome_src'] = this.outcomeSrc;
    return data;
  }
}
