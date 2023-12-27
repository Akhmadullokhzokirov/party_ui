import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 bool _islogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/images/party.jpeg"),
           fit: BoxFit.cover
         )
       ),
       child: Container(
         padding: EdgeInsets.all(30),
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             colors: [
               Colors.black.withOpacity(.8),
               Colors.black.withOpacity(.5),
               Colors.black.withOpacity(.3),//"Let us find a party for your interest"
               Colors.black.withOpacity(.2),//"Find the best parties near you"
             ]
           )
         ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30,),
              Text("Find the best parties near you",style: TextStyle(color: Colors.yellow,fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Let us find a party for your interest",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 25),),
              SizedBox(height: 150,),

             _islogin?
             Container(
               height: 55,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(55),
                 color: Colors.yellow.shade900
               ),
               child: Center(
                 child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 30),),

               ),
             ) :
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                      // padding: EdgeInsets.only(right: 20),
                       margin: EdgeInsets.all(10),
                       width: 140,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.red.shade900
                       ),
                       child: Center(
                         child: Text("Google",style: TextStyle(color: Colors.white,fontSize: 15),),

                       ),
                     ) ,
                     Container(

                       margin: EdgeInsets.all(10),
                      width: 140,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.blue
                       ),
                       child: Center(
                         child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 15),),

                       ),
                     ) ,
                   ],
                 ),
              SizedBox(height: 10,)
            ],
          ),
       ),
     ),
    );
  }
}
