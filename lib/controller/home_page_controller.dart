import 'package:japan_covid_app/data/database/database.dart';
import 'package:japan_covid_app/models/all_result.dart';
import 'package:japan_covid_app/models/prefecture.dart';

import '../models/japan.dart';

class ResultListPageController {
  Database database;
  late Future<List<AllResult>> results;
  int selected = 0;
  ResultListPageController(this.database) {
    results = database.getAllResult();
  }

  changeSelectedItem(int newSelectedItem) {
    selected = newSelectedItem;
  }
}
