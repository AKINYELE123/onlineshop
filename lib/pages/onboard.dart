import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';
import 'package:myonlineshop/pages/signup.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List images = [
    "one.png",
    "two.png",
    "three.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: color1.withOpacity(0.7),
                image: DecorationImage(
                  image: AssetImage("images/" + images[index],),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                ),
              ),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          //width: 380,
                          alignment: Alignment.center,
                          child: const Center(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Aliquam tellus enim aenean turpis\n morbi viverra.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp())),
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(colors: [
                              gradient1,
                              gradient2,
                            ]),
                          ),
                          child: const Center(
                              child: Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(3, (indexDots) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                  width: 12,
                                  height: index==indexDots?12:12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index==indexDots?gradient2:Colors.white
                                  )
                              );
                            }),
                          ),
                        ],
                      )
                    ],

                  )

            );
          }),
    );
  }
}
