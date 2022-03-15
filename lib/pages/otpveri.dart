import 'package:flutter/material.dart';
import 'package:myonlineshop/const/agreement.dart';
import 'package:myonlineshop/const/bottomnavigation.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';

import 'package:myonlineshop/pages/profile.dart';
import 'package:myonlineshop/pages/signup.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        title: Image(
          image: AssetImage("images/logo.png"),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(right: 20, top: 20, left: 20),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
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
                      SizedBox(height: 60,),
                      Text(
                        "OTP VERIFICATION",
                        style: TextStyle(
                            color: gradient2,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 320,
                        child: Text("We’ve sent a one time password to you registered phone number (OTP) Please, type it in.",textAlign: TextAlign.center, style: TextStyle(
                          color: grey,
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                        ),),
                      ),
                      SizedBox(height: 60,),
                      OtpForm(),
                      SizedBox(height: 60,),
                      GestureDetector(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomBar())),
                        child: Container(
                          width: double.maxFinite,
                          child: AppButton(
                            size: 60,
                            color: Colors.white,
                            background: gradient2,
                            borderColor: gradient1,
                            text: ("Next"),
                          ),
                        ),
                      ),
                      SizedBox(height: 60,),
                      GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()) ),
                          child: Agreement(text: "Sign Up"))
                    ],
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              style: TextStyle(fontSize: 24),
              autofocus: true,
              obscureText: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
              ),
              onChanged: (value){
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              style: TextStyle(fontSize: 24),
              focusNode: pin2FocusNode,
              obscureText: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
              ),
              onChanged: (value){
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              style: TextStyle(fontSize: 24),
              focusNode: pin3FocusNode,
              obscureText: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
              ),
              onChanged: (value){
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              style: TextStyle(fontSize: 24),
              obscureText: false,
              focusNode: pin4FocusNode,
              autofocus: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: grey),
                ),
              ),
              onChanged: (value){
                pin4FocusNode.unfocus();
              },
            ),
          )
        ],
      ),
    );
  }
}
