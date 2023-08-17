import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas10/HomeScreen.dart';
import 'package:sanberappflutter/tugas/tugas10/LoginScreeSendiri.dart';
import 'package:sanberappflutter/tugas/tugas10/LoginScreen.dart';
import 'package:sanberappflutter/tugas/tugas12/GetAllData.dart';
import 'package:sanberappflutter/tugas/tugas12/GetDetailScreen.dart';
import 'package:sanberappflutter/tugas/tugas9/telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primarySwatch: Colors.blue),
      home: GetAllData(),
    );
  }
}
