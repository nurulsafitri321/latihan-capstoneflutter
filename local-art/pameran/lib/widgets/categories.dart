import 'package:flutter/material.dart';
import 'package:pameran/constants.dart';
import 'package:pameran/models/category.dart';


class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          catgories.length,
          (index) => Container(
            decoration: BoxDecoration(
              color:
                  currentCat == catgories[index] ? kprimaryColor : Color.fromARGB(255, 228, 221, 221),
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              catgories[index],
              style: TextStyle(
                color: currentCat == catgories[index]
                    ? Color.fromARGB(255, 255, 255, 255)
                    : Color.fromARGB(255, 12, 12, 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}