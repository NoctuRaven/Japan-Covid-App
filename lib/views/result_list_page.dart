import 'package:flutter/material.dart';
import 'package:japan_covid_app/controller/home_page_controller.dart';
import 'package:japan_covid_app/core/utils.dart';
import 'package:japan_covid_app/data/database/database.dart';
import 'package:japan_covid_app/views/home_page.dart';
import 'package:japan_covid_app/widgets/prefectures_list_widget.dart';
import 'package:japan_covid_app/widgets/result_bar_widget.dart';
import 'package:japan_covid_app/widgets/total_list_widget.dart';

class ResultListPage extends StatefulWidget {
  const ResultListPage({super.key});

  @override
  State<ResultListPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultListPage> {
  late ResultListPageController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = ResultListPageController(Database());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    stateManagement(int index) {
      setState(() {
        controller.changeSelectedItem(index);
      });
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15)),
                      child: const Icon(Icons.arrow_back),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 50, left: 20, right: 20),
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                    )),
                child: FutureBuilder(
                  future: controller.results,
                  builder: (context, snapshot) {
                    Widget child;
                    if (snapshot.hasData) {
                      child = TotalListWidget(
                          nameEn: snapshot.data![controller.selected].nameEn,
                          nameJa: snapshot.data![controller.selected].nameJa,
                          image: getPrefectureSymbol(
                              snapshot.data![controller.selected].id!),
                          pcr: snapshot.data![controller.selected].pcr!
                              .toString(),
                          hospitalize: snapshot
                              .data![controller.selected].hospitalize!
                              .toString(),
                          positive: snapshot
                              .data![controller.selected].positive!
                              .toString(),
                          severe: snapshot.data![controller.selected].severe!
                              .toString(),
                          discharge: snapshot
                              .data![controller.selected].discharge!
                              .toString(),
                          death: snapshot.data![controller.selected].death!
                              .toString());
                    } else if (snapshot.hasError) {
                      child = const Text('Error');
                    } else {
                      child = const TotalListWidget(
                          nameEn: null,
                          nameJa: null,
                          image: 'assets/images/Japan_search.png',
                          pcr: 'XXXXXXXXX',
                          hospitalize: 'XXXXXXXXX',
                          positive: 'XXXXXXXXX',
                          severe: 'XXXXXXXXX',
                          discharge: 'XXXXXXXXX',
                          death: 'XXXXXXXXX');
                    }
                    return child;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: FutureBuilder(
                  future: controller.results,
                  builder: (context, snapshot) {
                    Widget child;
                    if (snapshot.hasData) {
                      child = ResultBarWidget(
                          nameJa: snapshot.data![controller.selected].nameJa
                              .toString(),
                          nameEn: snapshot.data![controller.selected].nameEn
                              .toString());
                    } else if (snapshot.hasError) {
                      child = const ResultBarWidget();
                    } else {
                      child = Container(
                        width: double.maxFinite,
                        height: 70,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Text('待ってくださう...', style: styleMainTitle1),
                      );
                    }
                    return child;
                  },
                ),
              ),
              FutureBuilder(
                future: controller.results,
                builder: (context, snapshot) {
                  Widget child;
                  if (snapshot.hasData) {
                    child = Expanded(
                        child: PrefecruresListWidget(
                            prefecturesList: snapshot.data!,
                            stateManagement: stateManagement));
                  } else if (snapshot.hasError) {
                    child = const Icon(Icons.error);
                  } else {
                    child = const Expanded(
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return child;
                },
              ),
            ],
          ),
        ));
  }
}
