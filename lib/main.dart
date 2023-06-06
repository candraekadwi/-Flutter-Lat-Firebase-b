import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:latihan_firebaseauthetication/auth.dart';
import 'package:provider/provider.dart';

import 'Wrapper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream, 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
      );
  }
}