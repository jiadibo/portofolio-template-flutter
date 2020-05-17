import 'package:flutter/material.dart';
import 'package:webflutter/actions.dart';
import 'package:webflutter/components.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:webflutter/charts.dart';
import 'package:webflutter/portofolio.dart';
import 'package:webflutter/sliders.dart';
import 'package:webflutter/taghobby.dart';

void main() {
  runApp(MyApp());
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.black,
        primarySwatch: createMaterialColor(Colors.black),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverAppBar(
              actions: sosmedWidget,
              title: Text(
                "Miftahul Jihad",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "Ubuntu"),
              ),
              backgroundColor: Colors.black,
              expandedHeight: MediaQuery.of(context).size.height,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    "assets/backgrounds.png",
                    fit: BoxFit.cover,
                  ),
                ),
                centerTitle: true,
                title: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Center(
                      child: RotateAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          isRepeatingAnimation: true,
                          displayFullTextOnTap: true,
                          duration: Duration(milliseconds: 2500),
                          text: [
                            "AWESOME",
                            "OPTIMISTIC",
                            "DIFFERENT",
                            "HONEST",
                            "RAJIN\nMENABUNG",
                            "DISAYANG\nEMAK-EMAK",
                            "DAN TIDAK\nSOMBONG"
                          ],
                          textStyle:
                              TextStyle(fontSize: 40.0, fontFamily: "Ubuntu"),
                          textAlign: TextAlign.left,
                          alignment: AlignmentDirectional
                              .centerEnd // or Alignment.topLeft
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          sliverContentAbout(),
          sliverPersonalInfo(),
          sliderMyActivity(),
          sliverEducation(),
          sliverExperience(),
          skillBarCharts(),
          gridPorto(),
          hobbies(),
          copyRight()
        ],
      ),
    );
  }

  Widget sliverPersonalInfo() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            textH1("Personal info", Colors.black87),
            SizedBox(
              height: 16,
            ),
            textRow("Name", "Miftahul Jihad"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Birthday", "31 Desember 1997"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Nationality", "Indonesian"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("email", "jihad.strange@gmail.com"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("language", "Indonesia, English"),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 8,
            ),
            textRow("Address", "Mataram city, West Nusa Tenggara"),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget sliverContentAbout() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(
              "assets/profile.png",
              scale: 2,
            ),
            SizedBox(
              height: 16,
            ),
            textH1("About me", Colors.black87),
            SizedBox(
              height: 16,
            ),
            textH3(
                "I'm an experienced student with history who is shown working in the information technolgy and service industry. Skilled in Flutter, Kotlin of Mobile Devlopment.",
                Colors.black87),
          ],
        ),
      ),
    );
  }

  Widget sliverEducation() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Divider(
              height: 2,
            ),
            textH1("Education", Colors.black87),
            SizedBox(
              height: 16,
            ),
            _builderStep(),
          ],
        ),
      ),
    );
  }

   var _index = 4;

  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 10),
        child: Stepper(
          steps: [
            Step(
                title: textH3("Playground Sandy Tyas Mataram", Colors.black),
                content: Text("Graduation (2003-2004)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("Primary School of 25 Ampenan", Colors.black),
                content: Text("Graduation (2004-2010)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("Junior High School of 13 Mataram", Colors.black),
                content: Text("Graduation (2010-2013)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("Senior High School of 3 Mataram", Colors.black),
                content: Text("Graduation (2013-2016)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH2("Bumigora University", Colors.black),
                content: Text(
                    "Pursuing on Bachelor degree in Computer Science. Garap Skripsi"),
                isActive: true,
                state: StepState.error),
          ],
          onStepCancel: () {
            print("You are clicking the cancel button.");
          },
          onStepContinue: () {
            print("You are clicking the continue button.");
          },
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );


  Widget sliverExperience() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Divider(
              height: 2,
            ),
            textH1("Experiences & Employments", Colors.black87),
            SizedBox(
              height: 16,
            ),
            _builderStepHorizontal(),
            Divider(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }

  var i = 0;

  Widget _builderStepHorizontal() => ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: 200.0),
        child: Stepper(
          type: StepperType.horizontal,
          steps: [
            Step(
                title: textH3("DSC Lead", Colors.black),
                content: Text(
                    "Lead Developer Students Club chapter Bumigora University\npowered by Google Developers)"),
                isActive: true,
                state: StepState.complete),
            Step(
                title: textH3("Android Developer", Colors.black),
                content: Text(
                    "Junior Android Developer at Lumbung Inovasi since 2018"),
                isActive: true,
                state: StepState.complete),
          ],
          onStepCancel: () {
            print("You are clicking the cancel button.");
          },
          onStepContinue: () {
            print("You are clicking the continue button.");
          },
          currentStep: i,
          onStepTapped: (index) {
            setState(() {
              i = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );

  Widget skillBarCharts() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          textH1("My Skill /100", Colors.black87),
          chartWidget,
        ],
      ),
    );
  }

  Widget copyRight() {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          textH3("Copyright © miftahul jihad", Colors.black87),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
