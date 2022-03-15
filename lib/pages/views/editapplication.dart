import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';

class EditApplication extends StatefulWidget {
  const EditApplication({Key? key}) : super(key: key);

  @override
  _EditApplicationState createState() => _EditApplicationState();
}

class _EditApplicationState extends State<EditApplication> {

  int gottenStars=4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: first,
        ),
        centerTitle: true,
        title: Text(
          "My Applications",
          style: TextStyle(
              color: first, fontSize: 16, fontWeight: FontWeight.bold),
        ),
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
                    height: 500,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(color: range, width: 3),
                                  borderRadius: BorderRadius.circular(100)),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/pro.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dianne Russell", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: text),),
                                SizedBox(width: 10,),
                                Row(
                                  children: [
                                    Wrap(
                                      children: List.generate(5, (index) {
                                        return Icon(Icons.star,size: 18, color: index<gottenStars?range:Colors.grey,);
                                      }),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 50,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis in ullamcorper amet diam tincidunt Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis in ullamcorper amet diam tincidunt in. In lectus tortor tortor, risus. Sed mauris arcu dignissim tellus. Interdum ipsum faucibus et et mattis viverra malesuada nisl sodales. In et laoreet ipsum, eget", textAlign: TextAlign.justify,
                        style: TextStyle(color: text, fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Text("Bid", style: TextStyle(color: text, fontSize: 15, fontWeight: FontWeight.bold),),
                            SizedBox(width: 60,),
                            Text("Location", style: TextStyle(color: text, fontSize: 15, fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("#5000", style: TextStyle(color: text, fontSize: 15),),
                            SizedBox(width: 40,),
                            Text("Lagos", style: TextStyle(color: text, fontSize: 15),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.maxFinite,
                          child: AppButton(
                              size: 60,
                              color: white,
                              background: gradient2,
                              borderColor: gradient1,
                            text: "Edit Application",
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Cancel Application", style: TextStyle(color: text, fontSize: 16),)
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
