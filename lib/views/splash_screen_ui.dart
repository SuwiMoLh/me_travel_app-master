// ignore_for_file: prefer_const_constructors, implementation_imports, unused_import, unnecessary_import, must_call_super

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_travel_app/views/login_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginUI()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'บันทึกการเดินทาง',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'Created by : 6452410004\nAunop Chinnapong',
              textAlign: TextAlign.center,
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
