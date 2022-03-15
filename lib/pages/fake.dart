import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';

// class FakePage extends StatefulWidget {
//   const FakePage({Key? key}) : super(key: key);
//
//   @override
//   _FakePageState createState() => _FakePageState();
// }
//
// class _FakePageState extends State<FakePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }

class FakePage extends StatelessWidget {
  const FakePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_outlined),
                Text("Profile"),
                Container(
                  height:50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: range, width: 3),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.all(4),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/pro.png"),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

