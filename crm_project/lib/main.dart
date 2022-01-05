import 'package:crm_project/screens/next_sign_in_page.dart';
import 'package:crm_project/screens/sign_in_page.dart';
import 'package:crm_project/screens/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const SignInPage(),
    );
  }
}
