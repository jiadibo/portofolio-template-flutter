import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:webflutter/components.dart';

Widget sliderMyActivity() {
  return SliverToBoxAdapter(
      child: Column(
    children: <Widget>[
      SizedBox(
        height: 26,
      ),
      textH1("Daily Activity", Colors.black87),
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
      SizedBox(
        height: 6,
      ),
    ],
  ));
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item.url, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: textH1(item.name, Colors.white)),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

final List<ModelActivity> imgList = [
  ModelActivity("Tidur",
      "https://ak.picdn.net/shutterstock/videos/1020748930/thumb/1.jpg"),
  ModelActivity("Makan",
      "https://asset.kompas.com/crops/9hkkTg57k4jwUwabJQdlBwJ3vXw=/0x0:1000x667/750x500/data/photo/2018/10/24/1835023710.jpg"),
  ModelActivity("Ngoding",
      "https://4.bp.blogspot.com/-TSVhgYQ8HOg/UE3Tlx-ACGI/AAAAAAAAARk/10TFo7s_sJk/s1600/Cute+Cat+Using+Laptop.jpg"),
  ModelActivity("Nyapu Halaman",
      "https://2.bp.blogspot.com/_CGX7HCw73nA/TCk_yf9NsjI/AAAAAAAAByY/ZdHCRG594GU/s1600/kaka+karisna+menyapu+halaman+rumah+giriwoyo.jpg"),
  ModelActivity("Nyuci Baju",
      "https://cdn2.tstatic.net/jambi/foto/bank/images/nct-dream-di-bantargebang.jpg"),
];

class ModelActivity {
  String name;
  String url;

  ModelActivity(this.name, this.url);
}
