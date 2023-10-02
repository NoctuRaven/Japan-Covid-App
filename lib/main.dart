import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:japan_covid_app/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
              primary: Color.fromARGB(255, 37, 215, 221))),
      home: const HomePage(),
    );
  }
}
