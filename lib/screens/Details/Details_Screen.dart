

import 'package:flutter/material.dart';


import '../../constants.dart';
import 'components/Body.dart';
import 'components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: body(),
    );
  }
}
