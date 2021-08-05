import 'package:firstapp/screens/fourthPage.dart';
import 'package:firstapp/screens/secondPage.dart';
import 'package:firstapp/screens/thirdPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Page!!'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit_outlined),
                onPressed: () {
                  print('1');
                })
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Pittaya Deeviputh\nMy First Flutter App',
                  style: TextStyle(
                      color: Colors.white, fontSize: 24, fontFamily: 'Prompt'),
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Image.network(
                  'https://lumiere-a.akamaihd.net/v1/images/header-starwars-mobile_07afc302.jpeg?region=0,0,640,400',
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Second Page'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.mouse_outlined),
                title: Text('Third Page'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.catching_pokemon),
                title: Text('Fourth Page'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FourthPage();
                  }));
                },
              ),
            ],
          ),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    }));
                  },
                  icon: Icon(Icons.message),
                  label: Text('ไปหน้าสอง')),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ThirdPage();
                    }));
                  },
                  icon: Icon(Icons.mouse_outlined),
                  label: Text('ไปหน้าสาม')),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FourthPage();
                    }));
                  },
                  icon: Icon(Icons.catching_pokemon),
                  label: Text('ไปหน้าสี่')),
            ),
          ],
        )),
      ),
    );
  }
}
