import 'package:flutter/material.dart';

class Adventeur extends StatefulWidget {
  @override
  _AdventeurState createState() => _AdventeurState();
}

class _AdventeurState extends State<Adventeur> {
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios,
          color:Colors.black,
          ),
           onPressed: () {  },


        ),
        title: new Text('Adventeur', 
        style: TextStyle(color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          
          itemBuilder:(_,index){
            return Card(
              shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15.0),
             
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage('images/sechel.jpg',
                  ),
                  fit: BoxFit.cover,
                  ),
                  ),
                  child:Stack(
                    children: <Widget>[
                      Positioned(
                        
                        bottom:0,
                        left:0,

                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors:[Colors.black45,Colors.black87]
                              ),
                              ),
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
                                  ]),
                                  SizedBox(
                                    height:10,
                                  ),
                             Text("Description",
                             style:TextStyle(color:Colors.white,fontSize: 15.0,
                             fontWeight:FontWeight.bold,),),
                             
                             SizedBox(
                               height:10 ,
                               
                               ),
                               Text(
                          'dqsnkldqskldjqskldjsqkdjlkqsjdklqsdjkqsljdqskldjqslkjdqskldjqskldjqskldjqslk',
                               style:TextStyle(color:Colors.white,fontSize: 15.0,
                             fontWeight:FontWeight.bold,),
                               )
                           ],
                         ),

      
                        )
                        
                        ),
                        
                        Positioned(
                          bottom: 160,
                          left: 0,
                          child:Text('Gaicha', style: TextStyle(color:Colors.white,fontSize: 20.0),
                          ),

                        ),
                        
                        
                    ],
                    

                  ),
                  

              ),
            ),
            );
            

          }),
          
      ),
      
      
      
      
    );
      
    
  }
}