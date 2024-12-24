import 'package:flutter/material.dart';
import 'package:union/screen/signUpScreen.dart';
// import 'package:testing/newUserInfo.dart';
import 'ForgerPassword.dart';
import '../controller/login_controller.dart';
import '../main.dart';
import 'newUserInfo.dart';
// import 'newUserInfo.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  _LoginpageState createState() => _LoginpageState();
}
class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool value = false;

  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    var _mediaQuery = MediaQuery.of(context);
    var logoheight = _mediaQuery.size.height * 0.22;
    var logowidth = _mediaQuery.size.width * 0.4;
    bool value = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              icon: Icon(Icons.logout_outlined))
          //
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Container(
                width: logowidth,
                height: logoheight,
                child: Image.asset(
                  "assets/images/onlylogo.png",
                  // width: logowidth,
                  // height: logoheight,
                )
                // decoration: BoxDecoration(
                //   color: Colors.red,
                //   borderRadius: BorderRadius.circular(50.0)),
                ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Union Bank PLC.',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: logowidth * 0.12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
               const EdgeInsets.only  (left: 15.0, right: 15.0, top: 10, bottom: 5),
            child: TextFormField(
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name.'; // Return an error message if the name is empty
                }
                return null;
              },
              decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Email',
                  filled: true, // Needed for adding a fill color
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // No border
                    borderRadius:
                        BorderRadius.circular(12), // Apply corner radius
                  ),
                  labelStyle: const TextStyle(color: Colors.purple),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)),
                  hintText: ''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5, bottom: 5),
            child: TextField(
              controller: passController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscured,
              focusNode: textFieldFocusNode,
              // obscureText: true,
              decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Password*',
                  filled: true, // Needed for adding a fill color
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // No border
                    borderRadius:
                        BorderRadius.circular(12), // Apply corner radius
                  ),
                  prefixIcon: Icon(Icons.lock_rounded, size: logoheight * 0.1),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: logoheight * 0.1,
                      ),
                    ),
                  ),
                  labelStyle: TextStyle(color: Colors.purple),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  hintText: ''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 6.0, right: 12.0, top: 5, bottom: 5),
            child: Center(
              child: Container(
                  width: double.infinity,
                  height: logoheight * 0.1,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                  child: Row(
                    children: [
                      Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                this.value = value!;
                              },
                            );
                          }),

                      Text(
                        "Remember Username",
                        style: TextStyle(
                            fontSize: logoheight * 0.07,
                            color: Colors.purple.withOpacity(1)),
                      ),
                      SizedBox(
                        height: logoheight * 0.07,
                        width: logoheight * 0.43,
                      ),

                      Container(
                        child: InkWell(
                          child: Text(
                            "Forget Password?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: logoheight * 0.07,
                                color: Colors.purple.withOpacity(1)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forgerpassword()));
                          },
                        ),
                      ),
                      //
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5, bottom: 0),
            child: ElevatedButton(
              onPressed: () async {
                LoginController controller = LoginController();
                await controller.loginUser(
                    emailController.text, passController.text,  context);
              },
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Colors.purple, fontSize: logoheight * 0.09),
              ),
            ),
          ),

          TextButton(
            style: TextButton.styleFrom(
              overlayColor: Colors.green,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => newUserInfo()));
            },
            child: Text(
              'New User? Create Account',
              style:
                  TextStyle(fontSize: logoheight * 0.06, color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
