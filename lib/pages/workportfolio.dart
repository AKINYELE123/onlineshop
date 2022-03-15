import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';

class WOtkPort extends StatefulWidget {
  const WOtkPort({Key? key}) : super(key: key);

  @override
  _WOtkPortState createState() => _WOtkPortState();
}

class _WOtkPortState extends State<WOtkPort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        toolbarHeight: 80,
        leading: const Icon(Icons.arrow_back, color: Colors.black, size: 25,),
        centerTitle: true,
        title: Text("Portfolio", style: TextStyle(color: first),),
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/pro.png"),
          ),
        ],
      ),
      body: Container(
          // alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(right: 20,  left: 20),
          width: 500,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: white,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32,),
              Text("Work Portfolio", style: TextStyle(
                color: gradient2,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 24,),
              Row(
                children: [
                  Container(
                     width: 300,
                    // height: 100,
                    child: Column(
                      children: [
                        Image(image: AssetImage("images/okay.png"),fit: BoxFit.cover,),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ],
              ),
              Text("Project Name", textAlign: TextAlign.start,style: TextStyle(
                color: text,
                fontSize: 20,
                fontWeight: FontWeight.w500,),),
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  color: range,
                  onPressed: (){},
                  child: Icon(Icons.add, color: Colors.white, size: 40, ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
