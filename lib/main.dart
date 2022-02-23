import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'BERITA TERBARU',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'TRANSFER HARIAN',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/images/costa.jpg'),
                SizedBox(
                  height: 30,
                ),
                Text('Costa Merapat ke Palmeiras',
                    style: TextStyle(fontSize: 30)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              color: Colors.pink,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text('Transfer', style: TextStyle(fontSize: 10)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Image.asset('assets/images/pique.jpg'),
                ),
                SizedBox(
                  width: 50,
                  height: 20,
                ),
                Text('Pique Bilang Wasit Untungkan Madrid, Koeman Tepuk Jidat'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Barcelona, 21 Februrari 2022',
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset('assets/images/pique.jpg'),
                ),
                SizedBox(width: 50, height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Text(
                      'Pique Bilang Wasit Untungkan Madrid, Koeman Tepuk Jidat'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Barcelona, 21 Februrari 2022'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
