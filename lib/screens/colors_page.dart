import 'package:flutter/material.dart';
import 'package:learning_language/components/listitem.dart';
import 'package:learning_language/data/colordata.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 69, 207),
      appBar: AppBar(
        title: Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          // print(index);
          return LIstItem(
            number: colors[index],
            color: Color.fromARGB(255, 172, 69, 207),
          );
        },
      ),
    );
  }
}
