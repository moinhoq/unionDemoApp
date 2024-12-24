import 'package:flutter/material.dart';
import 'package:union/phoneauth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Loginpage.dart';
import 'newUserInfo.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    var containerHeight = _mediaQuery.size.height * 0.38;
    var containerWidth = _mediaQuery.size.width * 0.8;
    var innerContainerHeight = containerHeight * 0.3;
    var innerContainerWidth = containerWidth * 0.95;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              // color: Colors.teal,
              child: Image.asset(
                  'assets/images/new-union-logo-for-office-note 2.png'),
              height: _mediaQuery.size.height * 0.17,
              width: _mediaQuery.size.width * 0.85,
            ),
          ),
          Container(
            height: containerHeight,
            width: containerWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: innerContainerHeight,
                    width: innerContainerWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 5, left: 0, bottom: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200, // splash color
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Phoneauth()));
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                        child: Icon(Icons.people_rounded, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Merchant",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 5, left: 5, bottom: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.account_balance_outlined, size: 70, color: Colors.purple,)
                                        ),
                                      // icon
                                      Text(
                                        "Instant A/C",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 2, left: 5, bottom: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.contact_mail_outlined, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Contact",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: innerContainerHeight,
                    width: innerContainerWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 5, left: 0, bottom: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.location_on_outlined, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Location",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 5, left: 5, bottom: 5),
                            child: ClipOval(
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor:
                                      Colors.green.shade200, // splash color
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Loginpage()),
                                    );
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.6,
                                        width: innerContainerWidth * 0.32,
                                        child: ImageIcon(
                                          AssetImage("assets/icons/account.png"),
                                          color: Colors.purple.shade500,
                                          size: 1,
                                        ),
                                      ), // icon
                                      Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 2, left: 5, bottom: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.production_quantity_limits_outlined, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Products",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: innerContainerHeight,
                    width: innerContainerWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 5, left: 0, bottom: 10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.currency_exchange, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Exchange Rate",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 5, left: 5, bottom: 10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.help_center_outlined, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "Help",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 0, left: 5, bottom: 10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15.0),
                              ),
                              child: Material(
                                color: Colors.grey.shade200, // button color
                                child: InkWell(
                                  splashColor: Colors.green.shade200,
                                  // splash color
                                  // onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const newUserInfo()));}, // button pressed // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: innerContainerHeight * 0.7,
                                        width: innerContainerWidth * 0.30,
                                          child: Icon(Icons.newspaper_outlined, size: 70, color: Colors.purple,)
                                      ), // icon
                                      Text(
                                        "News Event",
                                        style: TextStyle(
                                            fontSize: innerContainerHeight * 0.11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple.withOpacity(1)),
                                      ), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
