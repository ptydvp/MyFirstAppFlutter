import 'package:firstapp/router.dart';
import 'package:firstapp/screens/firstPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: FirstPage()),
    );
  }
}


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: routes,
//       initialRoute: '/authen',
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text('My Flutter App'),
//               centerTitle: true,
//             ),
//             body: Home()));
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var ctl_product = TextEditingController();
//   var ctl_quantity = TextEditingController();
//   var ctl_price = TextEditingController();
//   var _result = '';

//   final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//     onPrimary: Colors.black87,
//     primary: Colors.cyan[50],
//     minimumSize: Size(88, 36),
//     padding: EdgeInsets.symmetric(horizontal: 16),
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(20)),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Center(
//               child: Text(
//                 'เด็กน้อยยิน',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40.0,
//                   color: Colors.cyan,
//                   fontFamily: 'Prompt',
//                 ),
//               ),
//             ),
//             Icon(
//               Icons.add_comment,
//               size: 70,
//               color: Colors.cyan[900],
//             ),
//           ],
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: Image.network(
//             'https://lumiere-a.akamaihd.net/v1/images/header-starwars-mobile_07afc302.jpeg?region=0,0,640,400',
//             scale: 0.6,
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: TextField(
//             controller: ctl_product,
//             decoration: InputDecoration(
//                 labelText: 'สินค้า', border: OutlineInputBorder()),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: TextField(
//             controller: ctl_quantity,
//             decoration: InputDecoration(
//                 labelText: 'จำนวน', border: OutlineInputBorder()),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: TextField(
//             controller: ctl_price,
//             decoration: InputDecoration(
//                 labelText: 'ราคา', border: OutlineInputBorder()),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: ElevatedButton(
//               style: raisedButtonStyle,
//               child: Row(
//                 children: [Icon(Icons.send), Text('Send')],
//               ),
//               onPressed: () {
//                 var v1 = int.parse(ctl_price.text);
//                 var v2 = int.parse(ctl_quantity.text);
//                 var calculate = v1 * v2;
//                 print('Cal : $calculate ');

//                 var productname = ctl_product.text;
//                 setState(() {
//                   _result =
//                       'สินค้า: $productname\nราคา: $v1\nจำนวน: $v2\nรวมทั้งหมด: $calculate บาท';
//                 });
//               }),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//           child: Text(
//             _result,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20.0,
//               color: Colors.cyan,
//               fontFamily: 'Prompt',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
