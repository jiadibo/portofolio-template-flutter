import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sosmeds {
  String url;
  String img;

  Sosmeds(this.url, this.img);
}

List<Sosmeds> listSosmed = [
  Sosmeds("https://github.com/jiadibo", "assets/github.png"),
  Sosmeds("https://www.linkedin.com/in/miftahuljihad/", "linkedin.png"),
  Sosmeds("https://twitter.com/JeehadKt", "twitter.png"),
  Sosmeds("https://www.facebook.com/miftahuljihad97/", "facebook.png"),
  Sosmeds("https://dribbble.com/jiadibo", "dribbble.png"),
  Sosmeds("https://www.instagram.com/jeehad.kt/", "instagram.png"),
];

List<Widget> sosmedWidget = listSosmed
    .map(
      (e) => InkWell(
        onTap: () {
          launch(e.url);
        },
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(-2, 0), // changes position of shadow
            ),
          ]),
          height: 20,
          width: 30,
          child: Image.asset(e.img),
        ),
      ),
    )
    .toList();
