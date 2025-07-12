import 'package:flutter/material.dart';

class TopTextHomePage extends StatelessWidget {
  const TopTextHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
         crossAxisAlignment:CrossAxisAlignment.start ,
         mainAxisAlignment:MainAxisAlignment.start ,
      children: [
        Text(
          "Hi Hira",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Want to order delisios food?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
