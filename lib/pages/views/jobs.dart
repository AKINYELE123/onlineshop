import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/submitRequest.dart';

class JobPage extends StatefulWidget {
  const JobPage({Key? key}) : super(key: key);

  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(Icons.arrow_back_outlined, color: first,),
        title: Text("Job Details",
        style: TextStyle(color:first, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              child: Icon(Icons.more_vert, color: first,),
            ),
          ),
        ],
      ),
      body: Container(
        color: white,
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Interior Decorator", style: TextStyle(color: command,fontSize: 20 ),),
                Text("Posted 1h ago", style: TextStyle(color: command,fontSize: 16 ),)
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis in ullamcorper amet diam tincidunt in. In lectus tortor tortor, risus. Sed mauris arcu dignissim tellus. Interdum ipsum faucibus et et mattis viverra malesuada nisl sodales. In et laoreet ipsum, eget.",textAlign: TextAlign.justify,
                 style: TextStyle(color: command,fontSize: 16 ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: first,),
                SizedBox(width: 10,),
                Text("Lagos", style: TextStyle(color: command, fontSize: 14),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Job Type", style: TextStyle(color: command, fontWeight: FontWeight.bold, fontSize: 16),),
                Text("One-time Job", style: TextStyle(color: command, fontSize: 16),)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text("Skill Requirement",textAlign: TextAlign.start, style: TextStyle(color: command, fontWeight: FontWeight.bold, fontSize: 16),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text("Interior decoration expert", style: TextStyle(color: command, fontSize: 16),),
                ],
              ),
            ),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitRequest())),
              child: Container(
                width: double.maxFinite,
                child: AppButton(
                    size: 60,
                    text: "Apply",
                    color: white,
                    background: gradient1,
                    borderColor: gradient2
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
