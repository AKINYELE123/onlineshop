import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/editapplication.dart';

class AppliedJobPage extends StatefulWidget {
  const AppliedJobPage({Key? key}) : super(key: key);

  @override
  _AppliedJobPageState createState() => _AppliedJobPageState();
}

class _AppliedJobPageState extends State<AppliedJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: white,
        leading: Icon(Icons.arrow_back_outlined, color: first,),
        centerTitle: true,
        title: Text("My Applications", style: TextStyle(color: first, fontSize: 16, fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/pro.png"),
            ),
          )
        ],
      ),
      body: Container(
          color: background,
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.maxFinite,
                    height: 300,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("November 23, 2022"),
                        SizedBox(height: 20,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis in ullamcorper amet diam tincidunt...", textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16),),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            Text("Budget \n#10000")
                          ],
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>EditApplication())),
                          child: Container(
                            width: double.maxFinite,
                            child: AppButton(
                                text: "View Applications",
                                size: 60,
                                color: white,
                                background: gradient1,
                                borderColor: gradient2
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(child: Text("Cancel Request", textAlign: TextAlign.center,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.maxFinite,
                    height: 300,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("November 23, 2022"),
                        SizedBox(height: 20,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis in ullamcorper amet diam tincidunt...", textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16),),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            Text("Budget \n#10000")
                          ],
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>EditApplication())),
                          child: Container(
                            width: double.maxFinite,
                            child: AppButton(
                                text: "View Applications",
                                size: 60,
                                color: white,
                                background: gradient1,
                                borderColor: gradient2
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(child: Text("Cancel Request", textAlign: TextAlign.center,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.maxFinite,
                    child: AppButton(
                        size: 60,
                        text: "Post a job",
                        color: white,
                        background: gradient2,
                        borderColor: gradient1
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}
