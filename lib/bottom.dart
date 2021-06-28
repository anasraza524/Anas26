
import "package:flutter/material.dart";

class bottom extends StatefulWidget {
  const bottom({ Key? key }) : super(key: key);

  @override
  _bottomState createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 bottomNavigationBar: BottomAppBar(
         shape: CircularNotchedRectangle(),
         notchMargin: 10,
         child: Container(
height: 60,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

    Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  MaterialButton(
    onPressed: 
  (){
     
        }),
     
  
  
  
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.home,
color: Colors.indigo,

),
Text('Home',style: TextStyle(
color: Colors.black
),)
],
  )
],
    )
  ],
),

         ),
       ),  );
  }
}
