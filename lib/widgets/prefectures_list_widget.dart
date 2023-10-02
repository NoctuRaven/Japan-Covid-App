// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:japan_covid_app/core/utils.dart';

class PrefecruresListWidget extends StatelessWidget {
  final List prefecturesList;
  final void Function(int)? stateManagement;

  const PrefecruresListWidget({
    Key? key,
    required this.prefecturesList,
    required this.stateManagement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: prefecturesList.length,
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 2),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => stateManagement!(index),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 1,
                              blurStyle: BlurStyle.normal,
                              spreadRadius: 2,
                              color: Colors.grey)
                        ]),
                    child: SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Image.asset(
                        getPrefectureSymbol(prefecturesList[index].id!),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(prefecturesList[index].nameEn.toString()),
                Text(prefecturesList[index].nameJa.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
