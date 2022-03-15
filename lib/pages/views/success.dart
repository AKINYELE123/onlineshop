import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/jobmenu.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Submit Request",
          style: TextStyle(color: first, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              child: Icon(
                Icons.more_vert,
                color: first,
              ),
            ),
          ),
        ],
      ),
      body:  SafeArea(
        child: Container(
            padding: const EdgeInsets.all(20.0),
            color: background,
            child: Column(
              children: [
                SizedBox(height: 180,),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    //color: Colors.blue,
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Success",
                          style: TextStyle(
                              color: gradient2,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Text(
                          "You have successfully submited your job application. If perhaps, you’re selected for this job, kindly remind your prospective client to give you a review after the completion of their job.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: command,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>JobMenuPage())),
                  child: Container(
                    width: 120,
                    child: AppButton(size: 40, color: white,text: "Ok", background: gradient1, borderColor: gradient2),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
