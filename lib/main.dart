import 'package:firebase_core/firebase_core.dart';
import 'package:union/screen/splash_screen.dart';
import 'firebase_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen/openingPage.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
//
// class HomeActivity extends StatelessWidget {
//   const HomeActivity({super.key});
//   MySnackBar(message, context) {
//     return ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
//   @override
//   Widget build(BuildContext context) {
//     var _mediaQuery = MediaQuery.of(context);
//     var conheight = _mediaQuery.size.height * 0.38;
//     var conwidth = _mediaQuery.size.width * 0.8;
//     var inerconheight = conheight * 0.3;
//     var inerconwidth = conwidth * 0.95;
//     return Scaffold(
//       // appBar: AppBar(
//       //   flexibleSpace: Container(),
//       //   title: Text(
//       //     "Union Bank PLC",
//       //     style: TextStyle(fontWeight: FontWeight.bold),
//       //   ),
//       //   shape: RoundedRectangleBorder(
//       //     borderRadius: BorderRadius.vertical(
//       //       bottom: Radius.circular(50),
//       //     ),
//       //   ),
//       //   titleSpacing: 0,
//       //   centerTitle: true,
//       //   toolbarHeight: _mediaQuery.size.height*0.1,
//       //   toolbarOpacity: 1,
//       //   backgroundColor: Colors.deepPurple.shade100,
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('images/new-union-logo-for-office-note 2.png',
//                 height: _mediaQuery.size.height * 0.2),
//             Container(
//               height: conheight,
//               width: conwidth,
//               decoration: BoxDecoration(
//                 color: Colors.white54,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     height: inerconheight,
//                     width: inerconwidth,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 onTap: () {
//                                   // Navigator.push(context, MaterialPageRoute(builder: (context) =>const newUserInfo()));
//                                 }, // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.home_repair_service_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Merchant",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.account_box_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Instant A/C",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.contact_mail_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Contact",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: inerconheight,
//                     width: inerconwidth,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.location_on_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Location",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipOval(
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Loginpage()),
//                                   );
//                                 }, // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.6,
//                                       width: inerconwidth * 0.32,
//                                       child: Icon(
//                                         Icons.login_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.5,
//                                       ),
//                                     ), // icon
//                                     Text("Login",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.12,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons
//                                             .production_quantity_limits_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Products",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: inerconheight,
//                     width: inerconwidth,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.currency_exchange,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Exchange Rate",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.help_center_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "Help",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(2.0),
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(15),
//                               bottomRight: Radius.circular(15.0),
//                             ),
//                             child: Material(
//                               color: Colors.grey.shade200, // button color
//                               child: InkWell(
//                                 splashColor:
//                                     Colors.green.shade200, // splash color
//                                 // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Container(
//                                       height: inerconheight * 0.7,
//                                       width: inerconwidth * 0.30,
//                                       child: Icon(
//                                         Icons.newspaper_outlined,
//                                         color: Colors.purple.shade400,
//                                         size: inerconheight * 0.55,
//                                       ),
//                                     ), // icon
//                                     Text(
//                                       "News Event",
//                                       style: TextStyle(
//                                           fontSize: inerconheight * 0.11,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.purple.withOpacity(1)),
//                                     ), // text
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
