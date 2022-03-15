import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/views/success.dart';


class SubmitRequest extends StatefulWidget {
  const SubmitRequest({Key? key}) : super(key: key);

  @override
  _SubmitRequestState createState() => _SubmitRequestState();
}

class _SubmitRequestState extends State<SubmitRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(Icons.arrow_back_outlined, color: first,),
        title: Text("Submit Request",
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text("What is the rate you’d like to bid for this job?", style: TextStyle(color: command, fontWeight: FontWeight.bold, fontSize: 16.5),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  // obscureText: "obsecureText",
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Amount",
                    hintStyle: TextStyle(
                      color: grey,
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text("Additional details", style: TextStyle(color: command, fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text("Introduce yourself and explain why you’re a strong candidate for this job.", style: TextStyle(color: command, fontSize: 16),),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                //alignment: Alignment.centerLeft,
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  // obscureText: "obsecureText",
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add request note",
                    hintStyle: TextStyle(
                      color: hint,
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage())),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                      size: 60,
                      text: "Submit",
                      color: white,
                      background: gradient1,
                      borderColor: gradient2
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
