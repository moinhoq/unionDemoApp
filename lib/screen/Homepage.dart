// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:union/screen/profile.dart';
import 'package:union/screen/specific_user.dart';
// import 'package:union/screen/profilepage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Loginpage.dart';
import 'demoprofile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  bool isVisible = false;
  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        // debugShowCheckedModeBanner: false,
        title: Text(
          "Union Bank PLC",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 15,
        elevation: 200,
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        actions: [
          IconButton(
              tooltip: 'Logout',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
                // MySnackBar("Logout", context);
              },
              icon: Icon(Icons.logout_outlined))
          // IconButton(onPressed: (){MySnackBar("Search Icon", context);}, icon: Icon(Icons.search)),
          // IconButton(onPressed: (){MySnackBar("Comment", context);}, icon: Icon(Icons.comment)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "statement"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile",)
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("You Clicked Home Button", context);
          }
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SpecificUser()));
          }
          if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));

          }
        },
      ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green.shade400),
                accountName: Text(
                  "Customer Name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(1.0)),
                ),
                accountEmail: Text(
                  "customer@unionbank.com.bd",
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black.withOpacity(1.0)),
                ),
                currentAccountPicture: Image.asset("images/personal.png"),
              )),
          ListTile(
            leading: Icon(Icons.abc_outlined),
            title: Text("About"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse("https://https://www.unionbank.com.bd/#");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.animation_outlined),
            title: Text("Mission and Vision"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse(
                    "https://www.unionbank.com.bd/vision-mission#:~:text=To%20be%20a%20leading%20bank,technologies%20with%20strong%20capital%20base.&text=To%20provide%20fast%2C%20accurate%20and,and%20transparency%20at%20all%20levels.");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Board of Directors"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse(
                    "https://www.unionbank.com.bd/board-of-directors");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.branding_watermark),
            title: Text("Branches"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse(
                    "https://www.unionbank.com.bd/branch-information");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.subject),
            title: Text("Sub-Branches"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse("https://www.unionbank.com.bd/subbranch");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits_sharp),
            title: Text("Products"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse(
                    "https://www.unionbank.com.bd/product/deposit-scheme");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Helps"),
            onTap: () {
              _launchURLBrowser() async {
                var url = Uri.parse("https://www.unionbank.com.bd/contact-us");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }

              _launchURLBrowser();
            },
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 0, bottom: 0),
                child: Card(
                  color: Colors.grey.shade100,
                  child: Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width/1.5,
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              tooltip: 'Show Balance',
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(Icons.amp_stories),
                            )),
                        Visibility(
                            visible: isVisible,
                            child: Container(
                              height: MediaQuery.of(context).size.height/20,
                              width: MediaQuery.of(context).size.width/2.5,
                              color: Colors.grey.shade100,
                              child: Center(child: Text("Balance is: 00 ")),
                            )),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                  child: Card(
                    shadowColor: Colors.black,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*0.015,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 5, bottom: 0),
                child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 5, bottom: 5),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width/6,
                                  MediaQuery.of(context).size.height/4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.add_task,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Add Money",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.transfer_within_a_station,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Fund Transfer",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: height*0.0132,
                                              color:
                                                  Colors.purple.withOpacity(1),
                                            ),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.mobile_friendly,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            "Mobile top up",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.airplane_ticket_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Buy Ticket",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
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
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.3,
                      // margin: const EdgeInsets.all(1.0),
                      // padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                1.0,
                                1.0,
                              ), //Offset
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ] //BoxShadow
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 5, bottom: 0),
                child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 5, bottom: 5),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.note_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Cash Withdraw",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.currency_exchange,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Remittance",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: height*0.0132,
                                              color:
                                                  Colors.purple.withOpacity(1),
                                            ),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.payment,
                                            size:height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Bill Pay",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.home_repair_service_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            "More Service",
                                            style: TextStyle(
                                                fontSize:height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
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
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.3,
                      // margin: const EdgeInsets.all(1.0),
                      // padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                1.0,
                                1.0,
                              ), //Offset
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ] //BoxShadow
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 5, bottom: 0),
                child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 5, bottom: 5),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons
                                                .account_balance_wallet_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Bank A/C",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.panorama_wide_angle_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Cards",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: height*0.0132,
                                              color:
                                                  Colors.purple.withOpacity(1),
                                            ),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(05.0),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.payment_outlined,
                                            size:height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Uni Pay",
                                            style: TextStyle(
                                                fontSize: height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
                                        ), // text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(05.0),
                            child: SizedBox.fromSize(
                              size: Size(
                                  MediaQuery.of(context).size.width / 6,
                                  MediaQuery.of(context).size.height /
                                      4), // button width and height
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child: Material(
                                  color: Colors.grey.shade100, // button color
                                  child: InkWell(
                                    splashColor:
                                        Colors.green.shade200, // splash color
                                    onTap: () {}, // button pressed
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.file_open_outlined,
                                            size: height*0.05,
                                            color: Colors.purple.shade400,
                                          ),
                                        ), // icon
                                        Center(
                                          child: Text(
                                            "Open A/C",
                                            style: TextStyle(
                                                fontSize:height*0.0132,
                                                color: Colors.purple
                                                    .withOpacity(1)),
                                          ),
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
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.3,
                      // margin: const EdgeInsets.all(1.0),
                      // padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                1.0,
                                1.0,
                              ), //Offset
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ] //BoxShadow
                          )),
                ),
              ),
              SizedBox(
                  child: Card(
                    shadowColor: Colors.black,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*0.075,
                    ),
                  )),
              SizedBox(
                    child: Image.asset('assets/images/ublunderhomepage.jpeg',
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.9,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
