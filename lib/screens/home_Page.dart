import 'package:flutter/material.dart';
import 'package:learning_language/components/category_item.dart';
import 'package:learning_language/screens/numbers_page.dart';
import 'package:learning_language/screens/familyMembers_page.dart';
import 'package:learning_language/screens/colors_page.dart';
import 'package:learning_language/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // var titels = ["Numbers", "Family Members", "Colors", "Phrases"];
  // var colors = [
  //   Color(0xffef9235),
  //   Color.fromARGB(255, 48, 124, 31),
  //   Color.fromARGB(255, 172, 69, 207),
  //   Color.fromARGB(255, 67, 163, 208)
  // ];
  // var ontaps = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322b),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Color(0xffef9235),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NumberPage())),
          ),
          Category(
              text: "Family Members",
              color: Color.fromARGB(255, 48, 124, 31),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyMembers(),
                  ))),
          Category(
            text: "Colors",
            color: Color.fromARGB(255, 172, 69, 207),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColorsPage())),
          ),
          Category(
            text: "Phrases",
            color: Color.fromARGB(255, 67, 163, 208),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Phrases())),
          ),
        ],
      ),
    );
  }
}
