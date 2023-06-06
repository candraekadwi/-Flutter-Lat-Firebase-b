import 'package:flutter/material.dart';

import 'package:latihan_firebaseauthetication/auth.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailcon = TextEditingController(text: "");
  TextEditingController passcon = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 75,
              child: TextField(
                controller: emailcon,
              ),
            ),
            Container(
              width: 200,
              height: 75,
              child: TextField(
                controller: passcon,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await AuthServices.signInn(emailcon.text, passcon.text);
                },
                child: Text("sign in")),
            ElevatedButton(
                onPressed: () async {
                  await AuthServices.signUp(emailcon.text, passcon.text);
                },
                child: Text("SignUp"))
          ],
        ),
      ),
    );
  }
}
