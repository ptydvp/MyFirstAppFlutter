import 'package:firstapp/screens/firstPage.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third Page!!'),
          automaticallyImplyLeading: false,
        ),
        body: tPage(),
      ),
    );
  }
}

class tPage extends StatefulWidget {
  const tPage({Key? key}) : super(key: key);

  @override
  _tPageState createState() => _tPageState();
}

class _tPageState extends State<tPage> {
  var ctl_weight = TextEditingController();
  var ctl_height = TextEditingController();
  var _calculate = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FirstPage();
                      }));
                    },
                    icon: Icon(Icons.ac_unit),
                    label: Text('กลับไปหน้าแรก')),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Image.network(
            'https://lumiere-a.akamaihd.net/v1/images/header-starwars-mobile_07afc302.jpeg?region=0,0,640,400',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
              controller: ctl_weight,
              decoration: InputDecoration(
                  icon: Icon(Icons.monitor_weight),
                  border: OutlineInputBorder(),
                  labelText: 'Weight (kg)')),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
              controller: ctl_height,
              decoration: InputDecoration(
                  icon: Icon(Icons.height),
                  border: OutlineInputBorder(),
                  labelText: 'Height (m)')),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton.icon(
              onPressed: () {
                var w1 = double.parse(ctl_weight.text);
                var h1 = double.parse(ctl_height.text);
                var cal = (w1 / (h1 * 2)).toStringAsFixed(3);
                setState(() {
                  _calculate = 'YOUR BMI : $cal';
                });
              },
              icon: Icon(Icons.calculate),
              label: Text('Calculate')),
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                _calculate,
                style: TextStyle(
                    fontFamily: 'Prompt',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            )),
      ],
    );
  }
}
