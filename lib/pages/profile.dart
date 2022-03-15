//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myonlineshop/const/bottomnavigation.dart';
// import 'package:myonlineshop/const/color.dart';
// import 'package:myonlineshop/pages/personal_details.dart';
// import 'package:myonlineshop/pages/portfolio.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//  // int _currentIndex = 0;
//   int gottenStars=4;
//
//
//   List images = [
//     "whatsapp.png",
//     "facebook.png",
//     "instagram.png"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         toolbarHeight: 80,
//         centerTitle: true,
//         leading: const Icon(Icons.arrow_back, color: Colors.black, size: 25,),
//         title: const Text("Profile",style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//           fontSize: 27
//         ),),
//       ),
//       body: Container(
//         color: background,
//         padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
//         width: double.maxFinite,
//         height: MediaQuery
//             .of(context)
//             .size
//             .height,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 15,  left: 20),
//                 width: 500,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: white,
//                 ),
//                 child: Row(
//                   children: [
//                     Stack(
//                       children: [
//                          Container(
//                           height:100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                               border: Border.all(color: range, width: 3),
//                               borderRadius: BorderRadius.circular(100)
//                           ),
//                           padding: EdgeInsets.all(4),
//                           child: const CircleAvatar(
//                             radius: 25,
//                             backgroundImage: AssetImage("images/pro.png"),
//                           ),
//                         ),
//                         Positioned(
//                           right: 40,
//                           child: Container(
//                             child: MaterialButton(
//                               color: icon,
//                               onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> PersonalDetails())),
//                               child: Icon(Icons.edit, color: Colors.black, size: 20, ),
//                               padding: EdgeInsets.all(9),
//                               shape: CircleBorder(),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(width: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Column(
//                         children: [
//                           Text("Devon Lane",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: text),),
//                           const SizedBox(height: 10,),
//                           Text("DevonLane@gmail.com",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: text),),
//                           const SizedBox(height: 8),
//                           Row(
//                             children: [
//                               Icon(Icons.location_on_outlined, size: 20, color: grey, ),
//                               Text("Ikeja, Lagos.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: text),)
//                             ],
//                           ),
//                           const SizedBox(height: 0, width: 100,),
//                              Padding(
//                                padding: const EdgeInsets.only(left: 140.0, top: 10),
//                                child: Row(
//                                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: const [
//                                   SizedBox(width: 10,),
//                                   Image(
//                                     image: AssetImage("images/facebook.png", ),
//                                   ),
//                                   SizedBox(width: 10,),
//                                   Image(
//                                     image: AssetImage("images/whatsapp.png"),
//                                   ),
//                                   SizedBox(width: 10,),
//                                   Image(
//                                     image: AssetImage("images/instagram.png"),
//                                   )
//                                 ],
//                             ),
//                              ),
//                         ],
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10,),
//               Container(
//                 // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 20,  left: 20),
//                 width: 500,
//                 height: 180,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: white,
//                 ),
//                 child: Column(
//                   //mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 32,),
//                     Text("Interior Decorator", style: TextStyle(
//                       color: gradient2,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w500
//                     ),),
//                     SizedBox(height: 16,),
//                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."
//                         " Urna aliquet vitae lectus bibendum neque ut. Lorem ipsum dolor sit amet,"
//                         " consectetur adipiscing elit.", textAlign: TextAlign.justify,
//                     style: TextStyle(
//                       color: text,
//                       fontWeight: FontWeight.normal,
//                       fontSize: 15,
//                     ),
//
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 15,  left: 20),
//                 width: 500,
//                 // height: MediaQuery.of(context).size.height,
//                 height: 700,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: white,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 32,),
//                       Text("Work History", style: TextStyle(
//                           color: gradient2,
//                           fontSize: 25,
//                           fontWeight: FontWeight.w500
//                       ),),
//                       SizedBox(height: 16,),
//                       Text("Completed Jobs(3)", textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           color: text,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 18,
//                         ),
//                       ),
//                       SizedBox(height: 12,),
//                       Divider(color: range, thickness: 3,endIndent: 0,),
//                       SizedBox(height: 10,),
//                       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           color: gradient2,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 18,
//                         ),),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Wrap(
//                             children: List.generate(5, (index) {
//                               return Icon(Icons.star,size: 15, color: index<gottenStars?range:Colors.grey,);
//                             }),
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Text("\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium faucibus et imperdiet ipsum. Vitae sit ut dolor semper turpis tellus suspendisse. Suscipit quisque quis sit volutpat turpis pellentesque sit.\"",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           color: text,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 15,
//                           fontStyle: FontStyle.italic
//                         ),),
//                       SizedBox(height: 10,),
//                       Divider(color: grey, thickness: 3,endIndent: 0,),
//                       SizedBox(height: 10,),
//                       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           color: gradient2,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 18,
//                         ),),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Wrap(
//                             children: List.generate(5, (index) {
//                               return Icon(Icons.star,size: 15, color: index<gottenStars?range:Colors.grey,);
//                             }),
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Text("\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium faucibus et imperdiet ipsum. Vitae sit ut dolor semper turpis tellus suspendisse. Suscipit quisque quis sit volutpat turpis pellentesque sit.\"",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                             color: text,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 15,
//                             fontStyle: FontStyle.italic
//                         ),),
//                       SizedBox(height: 10,),
//                       Divider(color: grey, thickness: 3,endIndent: 0,),
//                       SizedBox(height: 10,),
//                       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           color: gradient2,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 18,
//                         ),),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Wrap(
//                             children: List.generate(5, (index) {
//                               return Icon(Icons.star,size: 15, color: index<gottenStars?range:Colors.grey,);
//                             }),
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Text("\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium faucibus et imperdiet ipsum. Vitae sit ut dolor semper turpis tellus suspendisse. Suscipit quisque quis sit volutpat turpis pellentesque sit.\"",textAlign: TextAlign.justify,
//                         style: TextStyle(
//                             color: text,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 15,
//                             fontStyle: FontStyle.italic
//                         ),),
//                     ],
//                 ),
//               ),
//               const SizedBox(height: 10,),
//               Container(
//                 // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 20,  left: 20),
//                 width: 500,
//                 height: 360,
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
//                         color: gradient2,
//                         fontSize: 25,
//                         fontWeight: FontWeight.w500,
//                     ),),
//                     SizedBox(height: 24,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           child: Column(
//                             children: [
//                               Image(image: AssetImage("images/popo.png")),
//                               SizedBox(height: 20,),
//                               Text("Project Name", textAlign: TextAlign.start,style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,),)
//                             ],
//                           ),
//                         ),
//                         Container(
//                           child: Column(
//                             children: [
//                               Image(image: AssetImage("images/wewe.png",)),
//                               SizedBox(height: 20,),
//                               Text("Project Name", textAlign: TextAlign.start,style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,),),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 50,),
//                     Container(
//                       alignment: Alignment.centerRight,
//                       child: MaterialButton(
//                         color: range,
//                         onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Portfolio())),
//                         child: Icon(Icons.add, color: Colors.white, size: 40, ),
//                         padding: EdgeInsets.all(16),
//                         shape: CircleBorder(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10,),
//               Container(
//                 // alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(right: 20,  left: 20),
//                 width: 500,
//                 height: 250,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: white,
//                 ),
//                 child: Column(
//                   //mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 32,),
//                     Text("Work Statistics", style: TextStyle(
//                         color: gradient2,
//                         fontSize: 25,
//                         fontWeight: FontWeight.w500
//                     ),),
//                     SizedBox(height: 16,),
//                     Divider(color: grey, thickness: 3,),
//                     SizedBox(height: 16,),
//                     Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Ongoing Work:",style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//                       fontWeight: FontWeight.w500,),),
//                               Text("0", textAlign: TextAlign.start,style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,),),
//                             ],
//                           ),
//                         SizedBox(height: 30,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Work Successfully Completed:",style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//                           fontWeight: FontWeight.w500,) ),
//                               SizedBox(height: 20,),
//                               Text("0", textAlign: TextAlign.start,style: TextStyle(
//                                 color: text,
//                                 fontSize: 20,
//           fontWeight: FontWeight.w500,),),
//                             ],
//                           ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//         // bottomNavigationBar: Container(
//         //   child: BottomNavigation(),
//       //  ),
//         // bottomNavigationBar: Container(
//         //   height: 100,
//         //     decoration: const BoxDecoration(
//         //       borderRadius: BorderRadius.only(
//         //           topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//         //       boxShadow: [
//         //         BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//         //       ],
//         //     ),
//         //     child: ClipRRect(
//         //       borderRadius: const BorderRadius.only(
//         //         topLeft: Radius.circular(30.0),
//         //         topRight: Radius.circular(30.0),
//         //       ),
//         //       child: BottomNavigationBar(
//         //         showUnselectedLabels: true,
//         //         selectedIconTheme: IconThemeData(color: gradient2),
//         //         selectedItemColor: gradient1,
//         //          unselectedItemColor: grey,
//         //          // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
//         //         type: BottomNavigationBarType.fixed,
//         //         currentIndex: _currentIndex,
//         //         items: const <BottomNavigationBarItem>[
//         //           BottomNavigationBarItem(
//         //               icon: Icon(
//         //                 Icons.print,
//         //                 size: 30,
//         //               ),
//         //               label:"Timeline",
//         //           ),
//         //           BottomNavigationBarItem(
//         //               icon: Icon(
//         //                 Icons.card_travel_rounded,
//         //                 size: 30,
//         //               ),
//         //               label:"Jobs",),
//         //           BottomNavigationBarItem(
//         //             icon: Icon(
//         //               Icons.search,
//         //               size: 30,
//         //             ),
//         //             label:"Search",),
//         //           BottomNavigationBarItem(
//         //             icon: Icon(
//         //               Icons.notifications_none_outlined,
//         //               size: 30,
//         //             ),
//         //             label:"Alerts",),
//         //           BottomNavigationBarItem(
//         //             icon: Icon(
//         //               Icons.person_outline_sharp,
//         //               size: 30,
//         //             ),
//         //             label:"Profile",)
//         //         ],
//         //         onTap:(index) =>
//         //             setState(() {
//         //               _currentIndex = index;
//         //             }),
//         //       ),
//         //     )
//         // ),
//     );
//   }
// }
