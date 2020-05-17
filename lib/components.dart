import 'package:flutter/material.dart';

Widget textH1(String text, Color color){
  return Text(text, style: TextStyle(color: color, fontWeight: FontWeight.w800, fontSize: 32, fontFamily: "Ubuntu"),);
}

Widget textH2(String text, Color color){
  return Text(text, style: TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: 22, fontFamily: "Ubuntu"),);
}

Widget textH3(String text, Color color){
  return Text(text, style: TextStyle(color: color, fontWeight: FontWeight.w300, fontSize:16, fontFamily: "Ubuntu"),);
}

Widget textRow(String key, String value){
  return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              textH3(key, Colors.black54),
              SizedBox(
                width: 8,
              ),
              textH2(value, Colors.black87),
              SizedBox(
                width: 26,
              ),
            ],
          );
}