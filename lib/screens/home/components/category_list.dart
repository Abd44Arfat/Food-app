import 'package:flutter/material.dart';

import 'catgory_item.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Combo Meal",

            press: () {},
          ),
          CategoryItem(
            title: "Chicken",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            press: () {},
          ),
          CategoryItem(
            title: "Snacks & Sides",
            press: () {},
          ),
        ],
      ),
    );
  }
}
