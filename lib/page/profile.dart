import 'package:flutter/material.dart';


class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Center(child: 
      Text('Profile',style: TextStyle(
        fontSize: 40,
      ),)
      ,),
      
    );
  }
}