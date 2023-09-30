import 'package:flutter/material.dart';
import 'package:ingles/telas/Home.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.brown,
          scaffoldBackgroundColor: Color(0xfff5e9b9)),
    ));
