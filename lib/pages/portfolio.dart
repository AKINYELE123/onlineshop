// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myonlineshop/const/button.dart';
// import 'package:myonlineshop/const/color.dart';
// import 'package:dotted_line/dotted_line.dart';
// import 'package:myonlineshop/pages/add%20work.dart';
//
// class Portfolio extends StatefulWidget {
//   const Portfolio({Key? key}) : super(key: key);
//
//   @override
//   _PortfolioState createState() => _PortfolioState();
// }
//
// class _PortfolioState extends State<Portfolio> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: icon,
//         toolbarHeight: 80,
//         leading: const Icon(Icons.arrow_back, color: Colors.black, size: 25,),
//         centerTitle: true,
//         title: Text("Profile", style: TextStyle(color: Colors.black),),
//         actions: [
//           Container(
//             // height:50,
//             // width: 50,
//             // decoration: BoxDecoration(
//             //     border: Border.all(color: range, width: 3),
//             //     borderRadius: BorderRadius.circular(60)
//             // ),
//             //padding: EdgeInsets.all(4),
//             child: const CircleAvatar(
//               radius: 30,
//               backgroundImage: AssetImage("images/pro.png"),
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//           color: background,
//           padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
//           width: double.maxFinite,
//           height: MediaQuery.of(context).size.height,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(height: 10,),
//               Container(
//                 // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 20,  left: 20),
//                 width: 500,
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: white,
//                 ),
//                 child: Column(
//                   //mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 32,),
//                     Text("Work Portfolio", style: TextStyle(
//                       color: gradient2,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w500,
//                     ),),
//                     SizedBox(height: 24,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.only(right: 10,  left: 10),
//                           width: 300,
//                           child: Column(
//                             children: [
//                               Text("Portfolio is empty! Showcase your best work to increase your chances of getting hired", textAlign: TextAlign.justify,style: TextStyle(
//                                 color: text,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,),)
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 50, width: 100,),
//                     GestureDetector(
//                       onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AddWork())),
//                       child: Container(
//                         width: 120,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: range, width: 1.0),
//                           borderRadius: BorderRadius.circular(50),
//                           color: range,
//                         ),
//                           alignment: Alignment.center,
//                           child: Center(
//                               child: Text("Add Work")
//                           )
//                         ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//
//         ),
//       ),
//       bottomNavigationBar: Container(
//           height: 100,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//             boxShadow: [
//               BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//             ],
//           ),
//           child: ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(30.0),
//               topRight: Radius.circular(30.0),
//             ),
//             child: BottomNavigationBar(
//               showUnselectedLabels: true,
//               selectedIconTheme: IconThemeData(color: gradient2),
//               selectedItemColor: gradient1,
//               unselectedItemColor: grey,
//               // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
//               type: BottomNavigationBarType.fixed,
//               currentIndex: _currentIndex,
//               items: const <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.print,
//                     size: 30,
//                   ),
//                   label:"Timeline",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.card_travel_rounded,
//                     size: 30,
//                   ),
//                   label:"Jobs",),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.search,
//                     size: 30,
//                   ),
//                   label:"Search",),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.notifications_none_outlined,
//                     size: 30,
//                   ),
//                   label:"Alerts",),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.person_outline_sharp,
//                     size: 30,
//                   ),
//                   label:"Profile",)
//               ],
//               onTap:(index) =>
//                   setState(() {
//                     _currentIndex = index;
//                   }),
//             ),
//           )
//       ),
//     );
//   }
// }
