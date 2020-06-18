import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listView/Animations/FadeAnimation.dart';
import 'package:listView/clippath.dart';
// import 'CustomShapeClipper.dart';

void main() {
  runApp(Winnerlistview());

}
class Winnerlistview extends StatelessWidget {
  

Color firstColor = Color(0xFFff758c);
Color secondColor = Color(0xFFff7eb3);
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      
      home: Scaffold  (
        resizeToAvoidBottomPadding: true,
              body: SingleChildScrollView(
          
           scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: <Widget>[
                SizedBox(height: 14,),
                Stack(
                  children: <Widget>[
                    
                     
                   FadeAnimation(1.2,  ClipPath(
                      clipper: CustomClipPath(),
                      
                      child:Image.asset("images/winners3.png",fit: BoxFit.cover,)
                      // Container(
                      //   decoration: BoxDecoration(
                      //     // gradient: LinearGradient(colors: [firstColor, secondColor]),
                      //   ),
                      //   height: 250,
                      //   child: Column(
                      //     children: <Widget>[
                      //       SizedBox(height:50),

                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //         Container(
                      //           padding: EdgeInsets.all(8),
                      //           // decoration: BoxDecoration(
                      //           //   border: Border.all(
                      //           //     color: Colors.white
                                    
                      //           //   ),
                      //           //   borderRadius: BorderRadius.circular(25)
                      //           // ),
                      //           child: Image.asset("images/winners.png",fit:BoxFit.cover,width:350,height: 180,)
                      //           // Text("Winners",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.white,fontSize: 24,fontWeight:FontWeight.w600 ),),textAlign: TextAlign.center,
                      //           // )
                                
                      //           )


                      //       ],)
                      //     ],
                      //   ),

                      // ) ,
                      )),

                      // Column(
                      //   children: <Widget>[
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: <Widget>[
                      //       SizedBox(height: 50,),
                             
                      //       ],
                      //     )
                      //     // Transform.translate(
                      //     //   offset:Offset(0,43),
                      //     //                           child:
                      //     //                            Card(
                      //     //     shape: RoundedRectangleBorder(
                      //     //     borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      //     //     margin: EdgeInsets.symmetric(horizontal: 16.0),
                      //     //     elevation: 10.0,
                      //     //     child: Container(
                      //     //       padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
                      //     //       child: Row(
                      //     //         mainAxisAlignment: MainAxisAlignment.center,
                      //     //         children: <Widget>[
                      //     //           Text("Winners",style: GoogleFonts.oxygen(textStyle: TextStyle(fontSize: 20),
                                  

                      //     //           )
                      //     //           )
                      //     //           ],
                      //     //       ),


                      //     //     ),
                      //     //   ),
                      //     // ),
                      //   ],
                      // )
                  ],

                ),
                WinnerListBottomPart(),            

            ],
            
            
            
            ),
          ),

        ),
      ),
      
      
    );
    
  }

 
}

class WinnerListBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
     Container(
      margin: EdgeInsets.only(bottom:30),
      child: Padding(
        padding: EdgeInsets.fromLTRB( 16.0,0,15,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
              offset: Offset(120, -17),
                child: Row(
                children: <Widget>[
                 FadeAnimation(1.4,  Card(
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Winners",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.black,fontSize: 24,fontWeight:FontWeight.w400 ),),textAlign: TextAlign.center,),
                        )
                      ],

                    ),
                  )
                 )],
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            
            _buildWinnerlist()
          ],
        ),
        
      ),
    );
    
  }
  Widget _buildWinnerlist(){
// Color discountBackgroundColor = Color(0xFFFFE08D);
Color flightBorderColor = Color(0xFFE6E6E6);
Color chipBackgroundColor = Color(0xFFF6F6F6);
    return Transform.translate(
        offset: Offset(0, -30),
          child: 
          FadeAnimation(1.6,ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),

        itemBuilder: (BuildContext context,index){
          return GestureDetector(
            onTap: (){
              print("Hello");
            },
          child: Container(
            margin: EdgeInsets.only(bottom:10),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(200),
            //   border: Border.all(color:Colors.black)
            // ),
            child: Card(
              elevation: 0,
              // color: Colors.grey[500],
               shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(17.0),
    
  ),

                child: Container(
                  // margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(17.0),
                    ),
                    border: Border.all(color: flightBorderColor),
                  
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                
                                    child: Material(
                                      // elevation: 10,
                                    
                                      child: InkWell(
                                        // splashColor: Colors.red, // inkwell color
                                        child: SizedBox(
                                          
                                            width: 50,
                                            height: 50,
                                            child: Image.asset("images/user.png")),
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                 Column(children: <Widget>[
                                  Transform.translate(
                                    offset: Offset(-60,0),
                                    child: Text("John Doe",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.black,fontSize: 18,fontWeight:FontWeight.w300 ),),)),
                                  Transform.translate(
                                    offset: Offset(-70,0),

                                    child: Text("Dehradun",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.grey,fontSize: 11,fontWeight:FontWeight.w500 ),
                                    
                                    ),)
                                    )
                                 ],),
                                 Column(
                                   children: <Widget>[
                                     Transform.translate(
                                       offset: Offset(5, 18),child: Text("Won",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.black,fontSize: 14,fontWeight:FontWeight.w400 ),),)),
                                     Transform.translate(
                                       offset: Offset(0, 18),
                                       child: Text("₹10",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.green,fontSize: 21,fontWeight:FontWeight.w200 ,),),)),

                                   ],
                                   

                                 ) 

                        ],
                        ),
                        // Transform.translate(
                        //   offset: Offset(20, 6),
                        //         child: Row(
                        //     children: <Widget>[
                        //       Column(
                        //     // mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: <Widget>[
                            
                        //     Text("Date :",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.grey,fontSize: 11,fontWeight:FontWeight.w500 ),
                                      
                        //               ),),
                        //      Text("28 June 2020",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight:FontWeight.w600 ),
                                      
                        //            ),),         

                            
                        //   ],),
                        //   SizedBox(width:55),
                        //    Column(
                        //     // mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: <Widget>[
                            
                        //     Text("Time :",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.grey,fontSize: 11,fontWeight:FontWeight.w500 ),
                                      
                        //               ),),
                        //      Text("7:35 PM",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight:FontWeight.w600 ),
                                      
                        //            ),),         

                            
                        //   ],),

                        //     ],
                        //   ),
                        // ),
                        
                        // Row(
                        //   children: <Widget>[
                        //     
                        //             SizedBox(width: 20),
                        //      Text("Time",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.grey,fontSize: 11,fontWeight:FontWeight.w500 ),
                                    
                        //             ),)       

                        //   ],
                        // ), Row(
                        //   children: <Widget>[
                        //     
                        //             SizedBox(width: 20),
                        //      Text("7:35",style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.grey,fontSize: 15,fontWeight:FontWeight.w600 ),
                                    
                        //             ),)       

                        //   ],
                        // )
                        Transform.translate(
                          offset: Offset(0, 12),
                            child: Row(
                            children: <Widget>[
                              Chip(
                                 avatar: CircleAvatar(
                                 backgroundColor: chipBackgroundColor,
                                 child: Icon(Icons.calendar_today,color: Colors.grey,size: 17,),
                                  ),
                               label: Text('Date : 28/06/2020',style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.black,fontSize: 10,fontWeight:FontWeight.w200 ,),),),
                                backgroundColor: chipBackgroundColor,
                                ),
                                SizedBox(
                                  width: 30,
                                ),

                                Chip(
                                 avatar: CircleAvatar(
                                backgroundColor:chipBackgroundColor ,
                                 child: Icon(Icons.access_time,color: Colors.grey,size: 17),
                                  ),
                               label: Text('Time : 7:35 PM',style: GoogleFonts.oxygen(textStyle: TextStyle(color:Colors.black,fontSize: 10,fontWeight:FontWeight.w200 ,),),),
                                backgroundColor: chipBackgroundColor,
                                )

                          ],),
                        )

                       
                      ],
                    ),

                  ),

                )

      ),
          ),
          );
      }
      ),
    ));
  }
 

}

 