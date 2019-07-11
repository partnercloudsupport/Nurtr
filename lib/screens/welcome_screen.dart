import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/components/RoundedButton.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = '/';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<int> alpha;

  @override
  void initState() {
    super.initState();
    this.controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    alpha = IntTween(begin: 0, end: 90).animate(controller);
    alpha.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 90.0,
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: ["Nurtr"],
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundedButton(
              text: 'Log in',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            RoundedButton(
              text: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
