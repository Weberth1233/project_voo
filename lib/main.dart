import 'package:flutter/material.dart';
import 'package:project_decolar/pages/buscas_page.dart';
import 'components/botom_component.dart';
import 'pages/companhias_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Companhias'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions:<Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ]
      ),
      
      bottomNavigationBar:BottomNavigator(),
      body: Container(
        child: const BuscasPage(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
