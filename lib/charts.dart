
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MySkill {
  final String skillname;
  final int rate;
  final charts.Color color;

  MySkill(this.skillname, this.rate, Color color) : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

var data = [
  new MySkill("Kotlin", 60, Colors.indigoAccent),
  new MySkill("Java", 70, Colors.deepOrangeAccent),
  new MySkill("Flutter",80, Colors.blue),
  new MySkill("Python", 60, Colors.yellow),
  new MySkill("Design Graphics", 90, Colors.pink),
];

var series = [
  new charts.Series(
    id: 'Clicks',
    domainFn: (MySkill clickData, _) => clickData.skillname,
    measureFn: (MySkill clickData, _) => clickData.rate,
    colorFn: (MySkill clickData, _) => clickData.color,
    data: data,
  ),
];

var chart = new charts.BarChart(
  series,
  animate: true,
);

var chartWidget = new Padding(
  padding: new EdgeInsets.all(32.0),
  child: new SizedBox(
    height: 200.0,
    child: chart,
  ),
);