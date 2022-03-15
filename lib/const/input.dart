import 'package:flutter/material.dart';
import 'package:myonlineshop/const/color.dart';

class InputField extends StatelessWidget {
  final String label;
  final bool obsecureText;
  const InputField({Key? key, required this.label, required this.obsecureText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 16, color: grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            // obscureText: "obsecureText",
            decoration: InputDecoration(
              border: InputBorder.none,

              // hintText: text,
              // hintStyle: TextStyle(
              //   color: grey,
              //   fontSize: 16,
              // ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}


class DetailsInput extends StatelessWidget {
 // final String label;
  final String text;
  final bool obsecureText;
  const DetailsInput({Key? key, required this.obsecureText, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   label,
        //   style: TextStyle(
        //       fontSize: 16, color: grey, fontWeight: FontWeight.bold),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            // obscureText: "obsecureText",
            decoration: InputDecoration(
              border: InputBorder.none,
               hintText: text,
               hintStyle: TextStyle(
                 color: grey,
                 fontSize: 16,
               ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

