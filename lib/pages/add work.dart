// import 'package:flutter/material.dart';
// import 'package:myonlineshop/const/button.dart';
// import 'package:myonlineshop/const/color.dart';
// import 'package:myonlineshop/const/input.dart';
// import 'package:myonlineshop/pages/workportfolio.dart';
//
// class AddWork extends StatefulWidget {
//   const AddWork({Key? key}) : super(key: key);
//
//   @override
//   _AddWorkState createState() => _AddWorkState();
// }
//
// class _AddWorkState extends State<AddWork> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         toolbarHeight: 80,
//         leading: const Icon(Icons.arrow_back, color: Colors.black, size: 25,),
//         centerTitle: true,
//         title: Text("Portfolio", style: TextStyle(color: first),),
//         actions: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: AssetImage("images/pro.png"),
//           ),
//         ],
//       ),
//       body: Container(
//         color: background,
//         padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
//         width: double.maxFinite,
//         height: MediaQuery.of(context).size.height,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(20),
//             width: 500,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: white,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Add Work", style: TextStyle(color: gradient2, fontWeight: FontWeight.normal, fontSize: 22),),
//                 SizedBox(height: 10,),
//                 Divider(height: 5, thickness: 3, color: grey,),
//                 SizedBox(height: 20,),
//                 Text("Select Image format", style: TextStyle(color: first, fontSize: 18, fontWeight: FontWeight.w700),),
//                 SizedBox(height: 20,),
//                 Text("Work Title", style: TextStyle(color: first, fontSize: 18, fontWeight: FontWeight.w700),),
//                 SizedBox(height: 10,),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Colors.grey), ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Title your Project",
//                       border: InputBorder.none,
//                       hintStyle: TextStyle(
//                         color: grey,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: grey),
//                   ),
//                   padding: EdgeInsets.all(10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 150,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: color,
//                           borderRadius: BorderRadius.circular(2),
//                           border: Border.all(color: color)
//                         ),
//                         child: Center(child: Text("Choose File", style: TextStyle(color: first, fontSize: 18),)),
//                       ),
//                       Text("No File Choosen", style: TextStyle(color: first, fontSize: 18),),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 50, width: 100,),
//                 GestureDetector(
//                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> WOtkPort())),
//                   child: Container(
//                       width: 120,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: range, width: 1.0),
//                         borderRadius: BorderRadius.circular(50),
//                         color: range,
//                       ),
//                       //alignment: Alignment.center,
//                       child: Center(
//                           child: Text("Add Work",style: TextStyle(color: Colors.white, fontSize: 18),)
//                       )
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }
//
