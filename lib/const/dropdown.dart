// import 'package:flutter/material.dart';
//
// class Dropdown extends StatefulWidget {
//   const Dropdown({Key? key}) : super(key: key);
//
//   @override
//   _DropdownState createState() => _DropdownState();
// }
//
// class _DropdownState extends State<Dropdown> {
//
//   late String valueChoose;
//   List listItem = [
//     "What is your Mother’s Maiden name?",
//     "What was your  childhood nickname?",
//     "What high school did attend?",
//     "What is the name of your favorite childhood friend?",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<T>(
//       hint: Text("select Item"),
//       dropdownColor: Colors.transparent,
//       isExpanded: true,
//       value: valueChoose,
//         items: listItem.map((valueItem){
//           return DropdownMenuItem(
//               child: Text(valueItem),
//           );
//         }).toList(),
//         onChanged: (newValue) {
//         setState(() {
//           valueChoose = newValue = valueChoose;
//         });
//         }
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// //
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //
// //   // Initial Selected Value
// //   String dropdownvalue = 'Item 1';
// //
// //   // List of items in our dropdown menu
// //   var items = [
// //     'Item 1',
// //     'Item 2',
// //     'Item 3',
// //     'Item 4',
// //     'Item 5',
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // appBar: AppBar(
// //       //   title: const Text("Geeksforgeeks"),
// //       // ),
// //       // body: Center(
// //       //   child: Column(
// //       //     mainAxisAlignment: MainAxisAlignment.center,
// //       //     children: [
// //             DropdownButton(
// //
// //               // Initial Value
// //               value: dropdownvalue,
// //
// //               // Down Arrow Icon
// //               icon: const Icon(Icons.keyboard_arrow_down),
// //
// //               // Array list of items
// //               items: items.map((String items) {
// //                 return DropdownMenuItem(
// //                   value: items,
// //                   child: Text(items),
// //                 );
// //               }).toList(),
// //               // After selecting the desired option,it will
// //               // change button value to selected value
// //               onChanged: (String? newValue) {
// //                 setState(() {
// //                   dropdownvalue = newValue!;
// //                 });
// //               },
// //             );
// //       //     ],
// //       //   ),
// //       // ),
// //    // );
// //   }
// // }
