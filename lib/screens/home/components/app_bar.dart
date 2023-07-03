import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {  },),
    title: Align(
      alignment: Alignment.center,
      child: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Punk",
                style: TextStyle(color: ksecondaryColor,),
              ),
              TextSpan(
                text: "Food",
                style: TextStyle(color: kPrimaryColor),
              )],

          )
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}