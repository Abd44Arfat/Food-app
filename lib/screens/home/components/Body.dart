
import 'package:flutter/material.dart';


import '../../../components/searchBox.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_List.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBox(onChanged: (value) {  },),
              CategoryList(),
              ItemList(),
              DiscountCard()
        ]));
  }
}
