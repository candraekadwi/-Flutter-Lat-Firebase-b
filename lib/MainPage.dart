import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:latihan_firebaseauthetication/auth.dart';

class MainPage extends StatelessWidget {


  final User user;
  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: Column(
          children: [
            Text(user.email),
            ElevatedButton(onPressed: () async{
              await AuthServices.signOut();
            },
            child: Text("sign Out"),
            )
          ],
        ),
      ),
    );
  }
}

