import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryItem extends StatefulWidget {
  final String? title;
  final bool isActive;
  final VoidCallback press;

  const CategoryItem({
    Key? key,
    this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.press();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              widget.title!,
              style: _isActive
                  ? TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              )
                  : TextStyle(fontSize: 12),
            ),
            if (_isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}