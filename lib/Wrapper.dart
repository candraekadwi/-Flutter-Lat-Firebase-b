
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:latihan_firebaseauthetication/auth.dart';
import 'package:provider/provider.dart';

import 'LoginPage.dart';
import 'MainPage.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user == null) ? LoginPage() : MainPage(user);
  }
}