import 'package:flutter/material.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';

class HiredPage extends StatefulWidget {
  const HiredPage({Key? key}) : super(key: key);

  @override
  _HiredPageState createState() => _HiredPageState();
}

class _HiredPageState extends State<HiredPage> {
  int gottenStars = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: first,
          size: 16,
        ),
        centerTitle: true,
        title: Text(
          "Hired",
          style: TextStyle(color: text, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: first,
              size: 16,
            ),
          )
        ],
      ),
      body: Container(
        color: background,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dianne Russell",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: text),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      size: 18,
                                      color: index < gottenStars
                                          ? range
                                          : Colors.grey,
                                    );
                                  }),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Hired",
                          style: TextStyle(color: red, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: AppButton(
                          size: 60,
                          text: "Give Review",
                          color: white,
                          background: gradient1,
                          borderColor: gradient2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "View Contact",
                      style: TextStyle(color: text, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
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
                            backgroundImage: AssetImage("images/six.png"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kristin Watson",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: text),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      size: 18,
                                      color: index < gottenStars
                                          ? range
                                          : Colors.grey,
                                    );
                                  }),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Hired",
                          style: TextStyle(color: red, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: AppButton(
                          size: 60,
                          text: "Give Review",
                          color: white,
                          background: gradient1,
                          borderColor: gradient2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "View Contact",
                      style: TextStyle(color: text, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
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
                            backgroundImage: AssetImage("images/seven.png"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Esther Howard",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: text),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      size: 18,
                                      color: index < gottenStars
                                          ? range
                                          : Colors.grey,
                                    );
                                  }),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Hired",
                          style: TextStyle(color: red, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: AppButton(
                          size: 60,
                          text: "Give Review",
                          color: white,
                          background: gradient1,
                          borderColor: gradient2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "View Contact",
                      style: TextStyle(color: text, fontSize: 16),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
