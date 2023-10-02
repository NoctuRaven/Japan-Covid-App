class Gender {
  int? count;
  GenerationsCount? generationsCount;

  Gender({this.count, this.generationsCount});

  Gender.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    generationsCount = json['generations_count'] != null
        ? new GenerationsCount.fromJson(json['generations_count'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.generationsCount != null) {
      data['generations_count'] = this.generationsCount!.toJson();
    }
    return data;
  }
}

class GenerationsCount {
  int? i00s;
  int? i10s;
  int? i20s;
  int? i30s;
  int? i40s;
  int? i50s;
  int? i60s;
  int? i70s;
  int? i80s;
  int? i90s;
  int? i100s;
  int? unknown;

  GenerationsCount(
      {this.i00s,
      this.i10s,
      this.i20s,
      this.i30s,
      this.i40s,
      this.i50s,
      this.i60s,
      this.i70s,
      this.i80s,
      this.i90s,
      this.i100s,
      this.unknown});

  GenerationsCount.fromJson(Map<String, dynamic> json) {
    i00s = json['00s'];
    i10s = json['10s'];
    i20s = json['20s'];
    i30s = json['30s'];
    i40s = json['40s'];
    i50s = json['50s'];
    i60s = json['60s'];
    i70s = json['70s'];
    i80s = json['80s'];
    i90s = json['90s'];
    i100s = json['100s'];
    unknown = json['unknown'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['00s'] = this.i00s;
    data['10s'] = this.i10s;
    data['20s'] = this.i20s;
    data['30s'] = this.i30s;
    data['40s'] = this.i40s;
    data['50s'] = this.i50s;
    data['60s'] = this.i60s;
    data['70s'] = this.i70s;
    data['80s'] = this.i80s;
    data['90s'] = this.i90s;
    data['100s'] = this.i100s;
    data['unknown'] = this.unknown;
    return data;
  }
}
