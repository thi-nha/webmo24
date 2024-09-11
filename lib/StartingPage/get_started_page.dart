import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mensa_app/StartingPage/login_page.dart';
import 'package:mensa_app/widgets/input_decoration.dart';
import 'package:mensa_app/widgets/login_form.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: CircleAvatar(
            backgroundColor: HexColor('#f5f6f8'),
            child: Column(children: [
              Spacer(),
              Text("Essensplan App",
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(
                height: 15,
              ),
              Text("Geiler Slogan",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 29)),
              SizedBox(
                height: 50,
              ),
              TextButton.icon(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: HexColor('#69639f'),
                      textStyle: TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  icon: Icon(Icons.login_rounded),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Sign in to get started',
                        style: TextStyle(color: Colors.white)),
                  )),
              Spacer()
            ])));
  }
}
