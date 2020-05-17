import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components.dart';

Widget gridPorto() {
  return SliverToBoxAdapter(
      child: Column(
    children: <Widget>[
      textH1("My Portofolio", Colors.black87),
      Container(
        height: 260,
        child: GridView.builder(
          itemCount: myPortos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return cardPorto(myPortos[index].url, myPortos[index].urlImage,
                myPortos[index].name);
          },
        ),
      ),
    ],
  ));
}

class Portofolio {
  String url;
  String name;
  String urlImage;

  Portofolio(this.url, this.name, this.urlImage);
}

final List<Portofolio> myPortos = [
  Portofolio(
      "https://play.google.com/store/apps/details?id=id.tgb.linov.ntb",
      "Tanggap Bencana",
      "https://lh3.googleusercontent.com/jE0gUSY1LesLC27T7A-tbCF4Z8xBNIvEphDz3vY9M7YCTAWhLNxHoXZwLCWlRTCxUEUz=s180-rw"),
  Portofolio(
      "https://play.google.com/store/apps/details?id=com.jiadibo.kajianislamic",
      "Islamic Center NTB App",
      "https://lh3.googleusercontent.com/cSc5Ijmys-Wwq7K_BZq68jdKcBvWTgyKvLGuONPTCeFJ-Ei0PWh6g8xVx0I52k6Vk6DH=s180-rw"),
  Portofolio(
      "https://play.google.com/store/apps/details?id=com.lumbunginovasi.ludesid",
      "LUDES POS",
      "https://lh3.googleusercontent.com/n_7BposJtAfTZ5uAFEtODhSOW1gnbIyCkt4ggL4gqYEmVrdVuuTYQjZCqlpS3pZ4Pg=s180-rw"),
  Portofolio(
      "https://play.google.com/store/apps/details?id=tripat.com.beta.testing",
      "SmartQueue RSUD TRIPAT",
      "https://lh3.googleusercontent.com/8SxmFV0FA-xire-smuMzpNGPCLU-TeWoF4VzYS-TEIbbDuRKttyl2CPb72PO1iT82g=s180-rw"),
];

Widget cardPorto(String url, String imgUrl, String name) {
  return InkWell(
    onTap: () {
      print("Klik Url");
      launch(url);
    },
    child: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(imgUrl, fit: BoxFit.cover, width: 1000.0),
        ),
         Positioned(
          left: 10,
          bottom: 6,
          child: Text(name, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
        )
      ],
    ),
  );
}
