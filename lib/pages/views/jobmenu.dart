import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/appliedjobs.dart';
import 'package:myonlineshop/pages/views/hired.dart';
import 'package:myonlineshop/pages/views/managerequest.dart';

class JobMenuPage extends StatefulWidget {
  const JobMenuPage({Key? key}) : super(key: key);

  @override
  _JobMenuPageState createState() => _JobMenuPageState();
}

class _JobMenuPageState extends State<JobMenuPage> {
  List images = ["whatsapp.png", "facebook.png", "instagram.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(children: [
        Container(

          color: background,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.895,
          child: Column(
            children: [
              Container(
                // alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(right: 5, left: 20),
                width: 500,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: white,
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: range, width: 3),
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.all(4),
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("images/pro.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Column(
                        children: [
                          Text(
                            "Devon Lane",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: text),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "DevonLane@gmail.com",
                            style: TextStyle(fontSize: 20, color: text),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: grey,
                              ),
                              Text(
                                "Ikeja, Lagos.",
                                style: TextStyle(fontSize: 24, color: text),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                            width: 90,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 120.0, top: 10),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage(
                                    "images/facebook.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage("images/whatsapp.png"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage("images/instagram.png"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: background,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ManageRequest())),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.wallet_membership_outlined, color: range,),
                                      SizedBox(width: 10,),
                                      Text("Manage Job Request", style: TextStyle(color: command, fontSize: 16),)
                                    ],
                                  ),

                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: range,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AppliedJobPage())),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.insights_rounded, color: range,),
                                      SizedBox(width: 10,),
                                      Text("Applied Jobs", style: TextStyle(color: command, fontSize: 16),)
                                    ],
                                  ),

                                ),
                                Icon(Icons.arrow_forward_ios_outlined, color: range,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HiredPage())),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.insights_rounded, color: range,),
                                      SizedBox(width: 10,),
                                      Text("Manage Hired", style: TextStyle(color: command, fontSize: 16),)
                                    ],
                                  ),

                                ),
                                Icon(Icons.arrow_forward_ios_outlined, color: range,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        )
      ]),
    );
  }
}
