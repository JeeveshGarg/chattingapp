import 'package:flutter/material.dart';
class Chatmes extends StatelessWidget {
  final String text;
    
  Chatmes({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(vertical:10.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin :EdgeInsets.only(right:16.0),
            child:CircleAvatar(
              child:Text("J"),
            )
         
          ),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("jeevesh",
              style:Theme.of(context).textTheme.subhead,
              ),
              Container(margin:EdgeInsets.only(top:5.0),
              child:Text(text)
              ),

            ],
            )
        ],
      ),
    );
  }
}