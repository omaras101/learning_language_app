import 'package:flutter/material.dart';
import 'package:learning_language/components/phrasesListitem.dart';
import 'package:learning_language/data/Phrasesdata.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 67, 163, 208),
      appBar: AppBar(
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => PhasesListItem(
            phase: phrases[index], color: Color.fromARGB(255, 67, 163, 208)),
      ),
    );
  }
}
