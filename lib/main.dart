import 'package:emomapp/bottom.dart';
import 'package:emomapp/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(body: homescreen(),

      
      
      
      ),

    );
  }
}
class cls extends StatefulWidget {
  const cls({ Key? key }) : super(key: key);

  @override
  _clsState createState() => _clsState();
}

class _clsState extends State<cls> {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
  home:
    Scaffold(
      body: bottom(),
    ));
  }
}