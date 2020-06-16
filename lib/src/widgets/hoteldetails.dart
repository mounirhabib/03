import 'package:fin/src/models/hotel.dart';
import 'package:fin/src/screens/accomodation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class HotelDetailPage extends StatelessWidget{
   final Hotel hotel;
   HotelDetailPage({this.hotel});
     @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
          height: 550,
          child:ClipRRect(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight:Radius.circular(30),
           ),
          child: Image.asset('images/${hotel.image}',
          fit: BoxFit.cover)
          ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(hotel.title ,style: TextStyle(
                color: Colors.lightBlue,
                fontSize:30.0,
                fontWeight:FontWeight.bold,
              ),
              ),
              Row(
                children: <Widget>[
                  const SizedBox(width:16.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical:8.0,
                      horizontal:16.0,

                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Text('Laghouat',
                        style: TextStyle( color: Colors.white),
                        ),
                        ),
                        Spacer(),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.favorite_border),
                           onPressed: () {  },
                        )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                   Icon(Icons.star, color:Colors.purple,
                                   ),
                                Icon(Icons.star, color:Colors.purple,
                                ),
                                Icon(Icons.star_border, color:Colors.purple,
                                ),
                                Icon(Icons.star_border, color:Colors.purple,
                                ),
                               Icon(Icons.star_border, color:Colors.purple,
                               ),
                                ]
                              ),
                              Text.rich(TextSpan(children: [
                              WidgetSpan(
                                child:
                                Icon(Icons.location_on,size:20.0,),
                                 ),
                                 TextSpan(
                                   text: " 1km to centre ville",style: TextStyle(color:Colors.black,fontSize: 15.0,
                                   fontWeight:FontWeight.bold,
                                 )
                                 )
                              ]), 
                              style: TextStyle(color: Colors.purple,fontSize: 12.0),
                              )
                            ],
                          ),
                           ),
                           Column(
                             children: <Widget>[
                               Text('\$ 10',style: TextStyle(
                                 color:Colors.purple,
                                 fontWeight:FontWeight.bold,
                                 fontSize:20.0,
                               ),),
                               Text('/ Prix par night'),
                             ],
                           )     
                      ],
                    ),    
                    const  SizedBox(
                      height:20.0 ,
                    ),
                    SizedBox(
                      width:double.infinity,

                      child: RaisedButton(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.purple,
                        textColor: Colors.white,
                        child: Text('Maps', style: TextStyle(
                        fontWeight:FontWeight.normal,
                        )
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical:16.0, horizontal:32.0,
                        ),
                        onPressed: () {  },
                      ),
                    ),
                    const SizedBox(
                      height:10.0),
                      Text('Description'.toUpperCase(), style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                    SingleChildScrollView(
                    child: Text(
                          ' this  is  good  hotels  in  laghouat hhhhhhhhhhhhhhhhhhhhh ',
                        style: TextStyle(fontWeight:FontWeight.bold,
                          fontSize: 16.0,
                          ),
                        ),
                      ),
                      
                      ],
                ),
                
              ),
            ],
            ),
          Align(
            alignment: Alignment.topLeft,
            child: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              centerTitle: true,
              title: Text('Hotels',style: TextStyle(
                fontSize:25.0,color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.email),
                    SizedBox(
                      width: 10,
                    ),
                    Text(hotel.email),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(
                      width: 10,
                      height:30,
                    ),
                    Text(hotel.phonenumber),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                
              ],
            ),
          ),
           Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.pink,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Accomodation()));
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {}),
                    //IconButton(icon: Icon(Icons.security, color: Colors.black, size: 30,), onPressed: (){}),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 19.0, 0.0),
                      child: Text(
                        "SOS",
                        style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              )
          
          
                
          
          
        ],
     
        
      ),
      
      
    );
  }



 }