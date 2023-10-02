import 'package:flutter/material.dart';

class PreventTopicsWidget extends StatelessWidget {
  final String title;
  final String content;
  const PreventTopicsWidget(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(8),
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              color: Theme.of(context).colorScheme.primary),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(width: 0.5),
                right: BorderSide(width: 0.5),
                bottom: BorderSide(width: 0.5)),
            color: Color.fromARGB(255, 169, 216, 255),
          ),
          child: Text(content),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
