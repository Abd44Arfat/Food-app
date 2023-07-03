import 'package:flutter/material.dart';


import '../../Details/Details_Screen.dart';
import 'Item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Chinese & Noodles",
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {},
          )
        ],
      ),
    );
  }
}
