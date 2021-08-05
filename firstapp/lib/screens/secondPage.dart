import 'package:firstapp/screens/firstPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Page!!'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FirstPage();
                  }));
                })
          ],
        ),
        body: sPage(),
      ),
    );
  }
}

class sPage extends StatefulWidget {
  const sPage({Key? key}) : super(key: key);

  @override
  _sPageState createState() => _sPageState();
}

class _sPageState extends State<sPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstPage();
                }));
              },
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('ไปหน้าแรก'),
            ),
          ),
        ),
      ]),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!!\nThis is first line.',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ]),
      Divider(),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!! \nThis is second line.',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ]),
      Divider(),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!!',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ]),
      Divider(),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!!',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ]),
      Divider(),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!!',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ]),
      Divider(),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(30),
          child: FlutterLogo(
            size: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Second Page!!',
              style: TextStyle(
                fontFamily: 'Prompt',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ])
    ]);
  }
}
