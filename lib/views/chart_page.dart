// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:characters/characters.dart';
import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:d_chart/ordinal/combo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:japan_covid_app/data/database/database.dart';
import 'package:japan_covid_app/models/statistics/statistic.dart';
import 'package:japan_covid_app/views/home_page.dart';
import 'package:japan_covid_app/views/result_list_page.dart';
import 'package:japan_covid_app/widgets/loading_page.dart';

class ChartPage extends StatefulWidget {
  final Statistic prefectureStatistic;

  const ChartPage({
    Key? key,
    required this.prefectureStatistic,
  }) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  chartData() {
    ordinalGroupMale.addAll([
      OrdinalGroup(id: '1', data: [
        OrdinalData(
            domain: '00s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i00s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '10s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i10s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '20s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i20s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '30s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i30s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '40s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i40s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '50s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i50s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '60s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i60s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '70s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i70s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '80s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i80s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '90s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i90s ?? 0,
            color: Colors.blue),
        OrdinalData(
            domain: '100s',
            measure:
                widget.prefectureStatistic.male!.generationsCount!.i100s ?? 0,
            color: Colors.blue),
      ]),
    ]);
    ordinalGroupFemale.addAll([
      OrdinalGroup(id: '1', data: [
        OrdinalData(
            domain: '00s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i00s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '10s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i10s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '20s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i20s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '30s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i30s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '40s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i40s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '50s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i50s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '60s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i60s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '70s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i70s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '80s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i80s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '90s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i90s ?? 0,
            color: Colors.redAccent),
        OrdinalData(
            domain: '100s',
            measure:
                widget.prefectureStatistic.female!.generationsCount!.i100s ?? 0,
            color: Colors.redAccent),
      ]),
    ]);
  }

  @override
  void initState() {
    chartData();
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  List ordinalGroupMale = [];
  List ordinalGroupFemale = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoadingPage(
                    route: MaterialPageRoute(
                      builder: (context) => const ResultListPage(),
                    ),
                  ),
                ),
              );
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.landscapeRight,
                DeviceOrientation.landscapeLeft,
                DeviceOrientation.portraitUp,
                DeviceOrientation.portraitDown,
              ]);
            },
            child: const Icon(Icons.arrow_back),
          ),
          actions: [
            Row(
              children: [
                const Text(
                  'Man-男',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                const Text(
                  'Woman-女',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  color: Colors.redAccent,
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: DChartBarO(
              groupList: [...ordinalGroupMale, ...ordinalGroupFemale],
              fillColor: (group, ordinalData, index) {
                return ordinalData.color;
              },
            ),
          ),
        )

        // Center(
        //   child: FutureBuilder(
        //     future: Database().getAllStatistics(),
        //     builder: (context, snapshot) {
        //       Widget child;
        //       if (snapshot.hasData) {
        //         child = ListView.builder(
        //           itemCount: snapshot.data!.length,
        //           itemBuilder: (context, index) {
        //             return Text(snapshot.data![index].nameJa.toString());
        //           },
        //         );
        //       } else if (snapshot.hasError) {
        //         child = const Text('error');
        //       } else {
        //         child = const CircularProgressIndicator();
        //       }
        //       return child;
        //     },
        //   ),
        // ),
        );
  }
}
