import 'package:apointment/pages/phone_call_page.dart';
import 'package:apointment/pages/profile_page_one.dart';
import 'package:apointment/pages/profile_page_two.dart';
import 'package:apointment/pages/trainer_profile_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appointment',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: ProfilePageTwo(),
      
    );
  }
}
