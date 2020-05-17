import 'package:flutter/material.dart';

import 'components.dart';

Widget hobbies() {
  return SliverToBoxAdapter(
      child: Column(
    children: <Widget>[
      SizedBox(
        height: 16,
      ),
      textH1("My Hobbies", Colors.black87),
      // Expanded(),
      Container(
        padding: EdgeInsets.all(30),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 20,
          children: hobbiesChipList
        ),
      ),
      SizedBox(
        height: 6,
      ),
    ],
  ));
}

List<Widget> hobbiesChipList = listHobby.map((e) => hobbiesChip(e, true)).toList();

List<String> listHobby = [
  "Design",
  "Travelling",
  "Snorkling",
  "Hiking",
  "Camping",
  "Mancing",
  "Programming"
];

Widget hobbiesChip(String name, bool status) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: FilterChip(
      backgroundColor: Colors.grey.shade400,
      selected: status,
      avatar: Icon(
        Icons.check_circle_outline,
        color: Colors.white,
      ),
      selectedColor: Colors.black,
      onSelected: (bool value) {
        value = true;
      },
      showCheckmark: true,
      autofocus: true,
      label: Text(
        name,
        style:
            TextStyle(color: Colors.white, fontFamily: "Ubuntu", fontSize: 24),
      ),
    ),
  );
}
