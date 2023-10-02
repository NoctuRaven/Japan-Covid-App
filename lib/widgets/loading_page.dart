// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoadingPage extends StatefulWidget {
  MaterialPageRoute? route;
  LoadingPage({
    Key? key,
    this.route,
  }) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    if (widget.route != null) {
      Future.delayed(Duration(seconds: 2)).whenComplete(
          () => Navigator.of(context).pushReplacement(widget.route!));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator(), Text('Loading...')],
        ),
      ),
    );
  }
}
