import 'package:japan_covid_app/models/statistics/gender.dart';

class Statistic {
  String? nameJa;
  String? nameEn;
  int? totalCount;
  Gender? male;
  Gender? female;
  Gender? unknownGender;

  Statistic(
      {this.nameJa,
      this.nameEn,
      this.totalCount,
      this.male,
      this.female,
      this.unknownGender});

  Statistic.fromJson(Map<String, dynamic> json) {
    nameJa = json['name_ja'];
    nameEn = json['name_en'];
    totalCount = json['total_count'];
    male = json['male'] != null ? new Gender.fromJson(json['male']) : null;
    female =
        json['female'] != null ? new Gender.fromJson(json['female']) : null;
    unknownGender = json['unknown_gender'] != null
        ? new Gender.fromJson(json['unknown_gender'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_ja'] = this.nameJa;
    data['name_en'] = this.nameEn;
    data['total_count'] = this.totalCount;
    if (this.male != null) {
      data['male'] = this.male!.toJson();
    }
    if (this.female != null) {
      data['female'] = this.female!.toJson();
    }
    if (this.unknownGender != null) {
      data['unknown_gender'] = this.unknownGender!.toJson();
    }
    return data;
  }
}
