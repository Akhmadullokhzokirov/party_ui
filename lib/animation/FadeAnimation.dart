//
// import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';
//
// class F. extends StatefulWidget {
//
//
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
//
//
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1200));
//     _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _controller.dispose();
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Flutter Animation"),
//       ),
//       body: Center(
//           child:  FadeTransition(
//             opacity: _animation,
//             child: Container(
//               height: 200,
//               width: 200,
//               child: Image.asset("assets/images/party.jpeg"),
//             ),
//           )
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.play_arrow),
//         onPressed: (){
//           _controller.forward();
//         },
//       ),
//     );
//   }
// }