import 'package:flutter/material.dart';
import 'package:myonlineshop/const/agreement.dart';
import 'package:myonlineshop/const/button.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/const/input.dart';
import 'package:myonlineshop/pages/otpveri.dart';
import 'package:myonlineshop/pages/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image(
          image: AssetImage("images/logo.png"),
        ),
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(right: 20, top: 20, left: 20),
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
                         Text("Welcome Back!", style: TextStyle(
                           fontSize: 20,
                           color: gradient2,
                           fontWeight: FontWeight.bold
                         ),),
                          SizedBox(height: 20,),
                          Text("Login with the phone number that you entered\n during your registration.", textAlign: TextAlign.center,style: TextStyle(color: grey, fontSize: 14, fontWeight: FontWeight.bold),),
                          SizedBox(height: 40,),
                          InputField(
                            label: 'Phone Number',
                            obsecureText: false,
                          ),
                          SizedBox(height: 60,),
                          GestureDetector(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpVerification())),
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
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp())),
                              child: const Agreement(
                                text: 'sign up',
                              )),
                        ],
                      ),
                    )
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
