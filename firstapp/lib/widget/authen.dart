// import 'package:flutter/material.dart';

// class Authen extends StatefulWidget {
//   const Authen({Key? key}) : super(key: key);

//   @override
//   _AuthenState createState() => _AuthenState();
// }

// class _AuthenState extends State<Authen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Authen Page'),
//         centerTitle: true,
//       ),
//       body: AuthenPage(),
//     );
//   }
// }

// class AuthenPage extends StatefulWidget {
//   const AuthenPage({Key? key}) : super(key: key);

//   @override
//   _AuthenPageState createState() => _AuthenPageState();
// }

// class _AuthenPageState extends State<AuthenPage> {
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
//     return ListView(children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
//             child: Image.network(
//               'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-371-456323-256.png',
//             ),
//           ),
//         ],
//       ),
//       Padding(
//           padding: EdgeInsets.all(30),
//           child: Center(
//             child: Text(
//               'Sign In',
//               style: TextStyle(
//                 fontFamily: 'Prompt',
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           )),
//       Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//             child: TextField(
//               decoration: InputDecoration(
//                   labelText: 'Username', border: OutlineInputBorder()),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//             child: TextField(
//               decoration: InputDecoration(
//                   labelText: 'Password', border: OutlineInputBorder()),
//             ),
//           ),
//           Padding(
//               padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
//               child: ElevatedButton(
//                 style: raisedButtonStyle,
//                 child: Row(
//                   children: [Icon(Icons.settings_cell), Text('Sign in')],
//                 ),
//                 onPressed: () => {Navigator.pop(context)},
//               )),
//         ],
//       )
//     ]);
//   }
// }
