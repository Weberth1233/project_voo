import 'package:flutter/material.dart';
import 'package:project_decolar/components/profile_component.dart';
import 'package:project_decolar/pages/companhias_page.dart';
import 'package:project_decolar/pages/inicio_page.dart';
import 'components/botom_component.dart';
import 'models/usuario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Your Travel'),
    );
  }
}

