import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myonlineshop/const/agreement.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/const/dropdown.dart';
import 'package:myonlineshop/const/input.dart';
import 'package:myonlineshop/pages/Login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


   String? valueChoose;
  List listItem = [
    "Whats is your mother maiden's name",
    "what was your childhood nickname",
    "What is your date of birth",
    "what high school did you attend",
    "What is the name of your childhood friend"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
        title: Container(
          child: Image(
            image: AssetImage("images/logo.png"),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(right: 20, top: 20, left: 20),
        width: double.maxFinite,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Create an Account",
                            style: TextStyle(
                                color: gradient2,
                                 fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InputField(
                            label: "Full Name",
                            //hintText: "My online Shop",
                            obsecureText: false,
                          ),
                          InputField(
                            label: "Phone Number",
                            //hintText: "+2348139137898",
                            obsecureText: false,
                          ),
                          InputField(
                            label: "Phone Number",
                            //hintText: "+2348139137898",
                            obsecureText: false,
                          ),
                          Row(
                            children: [
                              Text("Secret Questions", style: TextStyle(
                              fontSize: 16, color: grey, fontWeight: FontWeight.bold),
                    ),
                              Icon(Icons.messenger_outline_sharp, size: 12,color: range,)
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),),
                              child: DropdownButton(
                                hint: Text("Select a question"),
                                  dropdownColor: Colors.white,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 30,
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  value: valueChoose,
                                  onChanged: (newValue){
                                    setState(() {
                                      valueChoose = newValue as String;
                                    });
                                  },
                                items: listItem.map((valueItem){
                                  return DropdownMenuItem(
                                    value: valueItem,
                                          child: Text(valueItem),
                                  );
                                }).toList()
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          InputField(
                            label: "Answer",
                            //hintText: "who knows?",
                            obsecureText: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => LoginPage())),
                            child: Container(
                              width: double.maxFinite,
                              child: AppButton(
                                text: "Sign Up",
                                size: 50,
                                color: Colors.white,
                                background: gradient2,
                                borderColor: gradient1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())),
                              child: const Agreement(
                                text: 'Login',
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

