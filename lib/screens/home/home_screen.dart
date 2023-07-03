import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/Bottom_nav_bar.dart';
import '../../constants.dart';
import 'components/Body.dart';
import 'components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: homeAppBar(context),
bottomNavigationBar: BottomNavBar(),

body: Body(),
    );
  }
}
