import 'package:flutter/material.dart';
import 'package:learning_language/components/listitem.dart';
import 'package:learning_language/data/numbersdata.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef9235),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          // print(index);
          return LIstItem(
            number: numbers[index],
            color: Color(0xffef9235),
          );
        },
      ),
    );
  }
// # same work of listview.builder
  // List<Widget> getList(List<Number> numbers) {
  //   List<NumberItem> list = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     list.add(NumberItem(number: numbers[i]));
  //   }
  //   return list;
  // }
}
