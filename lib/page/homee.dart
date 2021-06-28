import 'package:emomapp/bottom.dart';
import 'package:emomapp/page/massage.dart';
import 'package:emomapp/page/profile.dart';
import 'package:emomapp/page/setting.dart';
import 'package:flutter/material.dart';


class hom extends StatefulWidget {
  const hom({ Key? key }) : super(key: key);

  @override
  _homState createState() => _homState();
}

class _homState extends State<hom> {

  int currentTab = 0;
  final List<Widget> screen=[
msg(),
profile(),
setting(),
bottom(),
  ];
final PageStorageBucket bucket= PageStorageBucket();
Widget currentScreen = bottom();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(child: currentScreen,
     bucket: bucket,
     ),
    floatingActionButton: FloatingActionButton(child: Icon(Icons.search_rounded),
    onPressed: (){},),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BottomAppBar(
         shape: CircularNotchedRectangle(),
         notchMargin: 10,
         child: Container(
height: 60,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[

    Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  MaterialButton(
    onPressed: 
  (){
        setState(() {
          currentScreen = bottom();
          currentTab= 0;
        });
     
  }
  
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.home,

color :currentTab == 0? Colors.blue: Colors.grey
),
Text('Home',style: TextStyle(

),)
],
  )
],
    )
  ],
),

         ),
       )
      
    );
  }
}