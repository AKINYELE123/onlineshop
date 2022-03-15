import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';

class Agreement extends StatelessWidget {
  final String text;
  const Agreement({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("By creating, you acknowledge and agree to", textAlign: TextAlign.center, style: TextStyle(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Term of Use", style: TextStyle(
                      color: gradient1,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    )),
                    Text(" & ", style: TextStyle(
                      color: grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )),
                    Text("Privacy Policy", style: TextStyle(
                      color: gradient2,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    )),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account? ", style: TextStyle(
                  color: grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                )),
                    Text(text, style: TextStyle(
                      color: color1,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ))
                  ],
                )
              ],
            ),
          );
  }
}
