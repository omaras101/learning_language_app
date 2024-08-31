import 'package:flutter/material.dart';
import 'package:learning_language/components/listitem.dart';
import 'package:learning_language/data/familyMembersdata.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 124, 31),
      appBar: AppBar(
        title: Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          // print(index);
          return LIstItem(
            number: family[index],
            color: Color.fromARGB(255, 48, 124, 31),
          );
        },
      ),
    );
  }
}
