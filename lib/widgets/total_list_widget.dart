// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:japan_covid_app/data/database/database.dart';
import 'package:japan_covid_app/models/statistics/gender.dart';
import 'package:japan_covid_app/models/statistics/statistic.dart';
import 'package:japan_covid_app/views/chart_page.dart';
import 'package:japan_covid_app/widgets/loading_page.dart';

import '../core/utils.dart';

class TotalListWidget extends StatelessWidget {
  final String? nameEn;
  final String? nameJa;
  final String image;
  final String pcr;
  final String hospitalize;
  final String positive;
  final String severe;
  final String discharge;
  final String death;
  const TotalListWidget({
    Key? key,
    required this.nameEn,
    required this.nameJa,
    required this.image,
    required this.pcr,
    required this.hospitalize,
    required this.positive,
    required this.severe,
    required this.discharge,
    required this.death,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   'PCR',
                          //   style: styleMiniTitle,
                          // ),
                          // textWidget(pcr),
                          Text(
                            'HOSPITALIZE',
                            style: styleMiniTitle,
                          ),
                          textWidget(hospitalize),
                          Text(
                            'POSITIVE',
                            style: styleMiniTitle,
                          ),
                          textWidget(positive),
                          Text(
                            'SEVERE',
                            style: styleMiniTitle,
                          ),
                          textWidget(severe),
                          Text(
                            'DISCHARGE',
                            style: styleMiniTitle,
                          ),
                          textWidget(discharge),
                          Text(
                            'DEATH',
                            style: styleMiniTitle,
                          ),
                          textWidget(death),
                          // const Text('symptom confirming'),
                          // Text(snapshot.data!.symptomConfirming
                          //         .toString() ??
                          //     ''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => FutureBuilder(
                  future: Database().getAllStatistics(),
                  builder: (context, snapshot) {
                    Widget child;

                    if (snapshot.hasData) {
                      if (nameJa != '日本') {
                        child = ChartPage(
                            prefectureStatistic: snapshot.data!.firstWhere(
                                (element) => element.nameJa == nameJa));
                      } else {
                        Statistic prefectureStatistic;

                        child = ChartPage(
                            prefectureStatistic:
                                getJapanStatistic(snapshot.data!));
                      }
                    } else if (snapshot.hasError) {
                      child = CircularProgressIndicator();
                    } else {
                      child = LoadingPage();
                    }
                    return child;
                  },
                ),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('CHART'),
                  Icon(
                    Icons.insert_chart_outlined,
                    size: 30,
                  ),
                  Text('チャート')
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  int accumulator(List<int?> generation) {
    int acc = 0;
    for (var i in generation) {
      acc = acc + (i ?? 0);
    }
    return acc;
  }

  getJapanStatistic(List<Statistic> list) {
    return Statistic(
      nameEn: 'Japan',
      nameJa: '日本',
      totalCount: 10,
      unknownGender: Gender(
        generationsCount: GenerationsCount(
          i00s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i00s)
              .toList()),
          i10s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i10s)
              .toList()),
          i20s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i20s)
              .toList()),
          i30s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i30s)
              .toList()),
          i40s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i40s)
              .toList()),
          i50s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i50s)
              .toList()),
          i60s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i60s)
              .toList()),
          i70s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i70s)
              .toList()),
          i80s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i80s)
              .toList()),
          i90s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i90s)
              .toList()),
          i100s: accumulator(list
              .map((e) => e.unknownGender!.generationsCount!.i100s)
              .toList()),
        ),
      ),
      female: Gender(
        generationsCount: GenerationsCount(
          i00s: accumulator(
              list.map((e) => e.female!.generationsCount!.i00s).toList()),
          i10s: accumulator(
              list.map((e) => e.female!.generationsCount!.i10s).toList()),
          i20s: accumulator(
              list.map((e) => e.female!.generationsCount!.i20s).toList()),
          i30s: accumulator(
              list.map((e) => e.female!.generationsCount!.i30s).toList()),
          i40s: accumulator(
              list.map((e) => e.female!.generationsCount!.i40s).toList()),
          i50s: accumulator(
              list.map((e) => e.female!.generationsCount!.i50s).toList()),
          i60s: accumulator(
              list.map((e) => e.female!.generationsCount!.i60s).toList()),
          i70s: accumulator(
              list.map((e) => e.female!.generationsCount!.i70s).toList()),
          i80s: accumulator(
              list.map((e) => e.female!.generationsCount!.i80s).toList()),
          i90s: accumulator(
              list.map((e) => e.female!.generationsCount!.i90s).toList()),
          i100s: accumulator(
              list.map((e) => e.female!.generationsCount!.i100s).toList()),
        ),
      ),
      male: Gender(
        generationsCount: GenerationsCount(
          i00s: accumulator(
              list.map((e) => e.male!.generationsCount!.i00s).toList()),
          i10s: accumulator(
              list.map((e) => e.male!.generationsCount!.i10s).toList()),
          i20s: accumulator(
              list.map((e) => e.male!.generationsCount!.i20s).toList()),
          i30s: accumulator(
              list.map((e) => e.male!.generationsCount!.i30s).toList()),
          i40s: accumulator(
              list.map((e) => e.male!.generationsCount!.i40s).toList()),
          i50s: accumulator(
              list.map((e) => e.male!.generationsCount!.i50s).toList()),
          i60s: accumulator(
              list.map((e) => e.male!.generationsCount!.i60s).toList()),
          i70s: accumulator(
              list.map((e) => e.male!.generationsCount!.i70s).toList()),
          i80s: accumulator(
              list.map((e) => e.male!.generationsCount!.i80s).toList()),
          i90s: accumulator(
              list.map((e) => e.male!.generationsCount!.i90s).toList()),
          i100s: accumulator(
              list.map((e) => e.male!.generationsCount!.i100s).toList()),
        ),
      ),
    );
  }

  Widget textWidget(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), border: Border.all()),
      child: Text(
        text,
        style: styleMiniTitle,
      ),
    );
  }
}
