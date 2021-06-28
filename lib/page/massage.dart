import 'package:flutter/material.dart';
class msg extends StatefulWidget {
  const msg({ Key? key }) : super(key: key);

  @override
  _msgState createState() => _msgState();
}

class _msgState extends State<msg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Center(child: 
      Text('dashboard',style: TextStyle(
        fontSize: 40,
      ),)
      ,),
      
    );
  }
}