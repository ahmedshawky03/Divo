import 'package:flutter/material.dart';

AppBar MyAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title:Column(
        children:[
          SizedBox(height:10.0),
          Text('Delivering to',style: TextStyle(color:Colors.grey[700],fontSize:18.0,),textAlign: TextAlign.center,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 15.0,),
              Text('Home',style: TextStyle(color:Colors.deepOrange,fontSize:18.0,),),
              IconButton(
                      onPressed: (){},
                      icon:const Icon(Icons.keyboard_arrow_down_sharp , size:25.0,color: Colors.deepOrange,),
              ),
            ],
          ),
        ]),
    centerTitle: true,
    elevation:0,
    // leading: IconButton(
    //   onPressed: (){},
    //   icon:Icon(Icons.menu_rounded,color:Colors.black,size: 40.0,),
    // ),
    actions: [
      IconButton(onPressed: (){},
          icon: Icon(Icons.search_rounded,color: Colors.black,size: 40.0,)),
    ],

  );
}

