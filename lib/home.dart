
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_slider/carousel_slider.dart';


class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

 List<dynamic> lst = [1];

  get items => [bc('Men Fasion', Icons.format_size_outlined,'naem2',Icons.access_alarm_sharp),
  bc(' Fasion', Icons.format_size_outlined,'Toys',Icons.bedroom_baby_sharp)
  ];
  get callbackFunction => null;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Center(child: Text('Ecom App')),
          backgroundColor: Colors.blueGrey,
          toolbarHeight: 40,
        ),
       
           
           floatingActionButton: FloatingActionButton(child: Icon(Icons.search_rounded),
    onPressed: (){},),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            
        drawer: Drawer(

          
        ),
         bottomNavigationBar: BottomAppBar(
         shape: CircularNotchedRectangle(),
         notchMargin: 10,
         child: Container(
height: 60,
child: Row(
  
  children: [




     Padding(
       padding: const EdgeInsets.only(left:15,right: 15,top: 8,bottom: 8),
       child: Align(
         alignment: Alignment.centerLeft,
              child: Container(
    
child:
Column(
  children: [
            Icon(Icons.home,
    
    color: Colors.indigo,
    
    ),
    Text('Home',style: TextStyle(
color: Colors.black
),)
  ],
),


  ),
       ),
     ),
     Padding(
       padding: const EdgeInsets.only(left:15,right: 15,top: 8,bottom: 8),
       child: Align(
         alignment: Alignment.centerLeft,
              child: Container(
    
child:
Column(
  children: [
            Icon(Icons.account_circle_rounded,
    
    color: Colors.indigo,
    
    ),
    Text('Profile',style: TextStyle(
color: Colors.black
),)
  ],
),


  ),
       ),
     ),
     Padding(
       padding: const EdgeInsets.only(left:85,right: 15,top: 8,bottom: 8),
       child: Align(
         alignment: Alignment.centerLeft,
              child: Container(
    
child:
Column(
  children: [
            Icon(Icons.settings_rounded,
    
    color: Colors.indigo,
    
    ),
    Text('Setting',style: TextStyle(
color: Colors.black
),)
  ],
),


  ),
       ),
     ),
     Padding(
       padding: const EdgeInsets.only(left:8,right: 15,top: 8,bottom: 8),
       child: Align(
         alignment: Alignment.centerLeft,
              child: Container(
    
child:
Column(
  children: [
            Icon(Icons.message,
    
    color: Colors.indigo,
    
    ),
    Text('Massege',style: TextStyle(
color: Colors.black
),)
  ],
),


  ),
       ),
     ),
  
  
  

  
     
  
  
  
  
  
  
],
    
 
),

         ),
       ),
        body: 
        SingleChildScrollView(
                  child: Column(
            children: [
              ImageSlideshow(

                /// Width of the [ImageSlideshow].
                width: double.infinity,

                /// Height of the [ImageSlideshow].
                height: 200,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/dress.png',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/tv.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/im.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/lp5.jpg',
                    fit: BoxFit.fill,
                  ),
               
                ],

                /// Called whenever the page in the center of the viewport changes.
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                
              ),
              
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: 
                   CarouselSlider(
   items: items,

     

   options: CarouselOptions(
      height: 45,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   )
 ),
                    
             
             ),
          
           GridView.count(
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             crossAxisCount: 1,
           crossAxisSpacing: 10,
           mainAxisSpacing: 2,
           children: 
             List.generate( lst.length ,(index)  {
               return 
                  Column(
                    children: [
                      Row(
              
              children: [ 
                 
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: pc('assets/dr.jpg','Men Shirt'),
                        ),
                         
                       Padding(
                         padding: const EdgeInsets.only(left: 4),
                         child: pc('assets/im.jpg','Mobile etc'),
                       ),


              ],

                 ),
                 Row(
              
              children: [ 
                 
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: pc('assets/lp6.jpg','Dell Laptop'),
                        ),
                         
                       Padding(
                         padding: const EdgeInsets.only(left: 4),
                         child: pc('assets/vi.jpg','AUS PC'),
                       ),


              ],

                 ),Row(
              
              children: [ 
                 
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: pc('assets/dr.jpg','Men Shirt'),
                        ),
                         
                       Padding(
                         padding: const EdgeInsets.only(left: 4),
                         child: pc('assets/im.jpg',' Mobile etc'),
                       ),


              ],

                 ),
                    ],
                  
               );

             }),
           
           )
            ],

            
          ),
        ),
        
      
   
        
            
          

        
      
      
      
    
    );
  }
}

 // class of bottom



                            // Page Button Widget
Widget bc(name,icn,name2,icon2){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

  
        Container(
    
    
    
      height: 40,
    
      width: 130,
    
      decoration: BoxDecoration(color: Colors.blueGrey.shade100,
    
      borderRadius: BorderRadius.circular(10),
    
      border: Border.all(color:Colors.black,width:1,),
    
      boxShadow: [
    
        BoxShadow(
    
          color: Colors.grey.shade200.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
    
        )
    
      ]
    
      ),
    
      child:Expanded(child: Column(
    
        children:[ Center(
    
          child: Row  
    
          ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
            
    
            children: [
    
            
    
             TextButton(onPressed: (){},child:Row(
    
               children: [
    
                 
    
                 Icon(icn,size: 30,color: Colors.black,),
    
                Text(name,style: TextStyle(
    
                  fontWeight: FontWeight.bold,
    
                  fontSize: 21,
    
                  color: Colors.black
    
    
    
                ),),
    
               ],
    
             )
    
             )
    
            
    
          ],),
    
        )
    
    
    
        ]
    
      )
    
    
    
      )
    
    
    
          // TextButton(onPressed: (){},child:Icon(Icons.home,)
    
      
    
            ),
            Container(

  height: 40,
  width: 130,
  decoration: BoxDecoration(color: Colors.blueGrey.shade100,
  borderRadius: BorderRadius.circular(10),
  border: Border.all(color:Colors.black,width:1,),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade200.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
    )
  ]
  ),
  child:Expanded(child: Column(
    children:[ Center(
      child: Row  
      ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
        
         TextButton(onPressed: (){},child:Row(
           children: [
             
             Icon(icon2,size: 30,color: Colors.black,),
            Text(name2,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.black

            ),),
           ],
         )
         )
        
      ],),
    )

    ]
  )

  )

      // TextButton(onPressed: (){},child:Icon(Icons.home,)
      
  
  
      
  
),
  ],
  
);

}


                 




                            // Image box Widget

Widget pc(img,po){
return SingleChildScrollView(
  
  child:   Container(
  
    height: 179,
  
    width: 175,
  
    decoration: BoxDecoration(color: Colors.black12,
  
    borderRadius: BorderRadius.circular(10),
  
    boxShadow: [
  
      BoxShadow(
  
        color:Colors.black12.withOpacity(0.1),
  
        spreadRadius: 3
  
        ,blurRadius: 10,
  
      )
  
    ]
  
    ),
  
    child:
  
    TextButton(onPressed: (){},child: 

  
    Column(

     children: [
  
               Container(
  
                 
  
       margin: EdgeInsets.all(2),
  
           height: 175,
  
           width: 170,
  
           decoration: BoxDecoration(
  
    borderRadius: BorderRadius.circular(10),
  
    boxShadow: [
  
      BoxShadow(
  
        color:Colors.black12.withOpacity(0.0),
  
        spreadRadius: 3
  
        ,blurRadius: 15,
  
      )
  
    ]
  
    ),
  
  
  
             child: Column(
  
               children: [
  
                 Image.asset(img),
  
                 Text(po,style:TextStyle(
  
                  fontSize: 21,
  
                  fontWeight: FontWeight.bold,
  
                  color: Colors.black,
  
  
                 )),
  
                 Row(
  
           
  
                   children: [
  
                      
  
                     Icon(Icons.star,color: Colors.yellow,size: 10,),SizedBox(width:0.1,),
  
                     Icon(Icons.star,color: Colors.yellow,size: 10,),SizedBox(width:0.1,),
  
                     Icon(Icons.star,color: Colors.yellow,size: 10,),SizedBox(width:0.1,),
  
                     Icon(Icons.star,color: Colors.yellow,size: 10,),SizedBox(width:0.1,),
  
                     Icon(Icons.star,color: Colors.yellow,size: 10,),SizedBox(width:0.1,),
  
                    Text('(5.0) Review ',style:TextStyle(
  
                      fontSize: 15,
  
                      color: Colors.black,
  
  
  
                       
  
                     )),
  
                   ],
  
                 ),
                 SizedBox(height: 3,),
  Container(
    width: 178,
    height: 7,
    color: Colors.black,)
               ],
               
  
             ),
  
              
  
       )
  
   
     ],
  
    )
  
  )),
);

}