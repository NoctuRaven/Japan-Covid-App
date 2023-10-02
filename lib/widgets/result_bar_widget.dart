import 'package:flutter/material.dart';
import '../core/utils.dart';

class ResultBarWidget extends StatelessWidget {
  final String? nameJa;
  final String? nameEn;

  const ResultBarWidget({super.key, this.nameJa, this.nameEn});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 70,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Visibility(
          visible: nameJa != null || nameEn != null,
          replacement: const Text('Error'),
          child: Text(
            "$nameJa - $nameEn",
            style: styleMainTitle1,
          ),
        ));
  }
}
