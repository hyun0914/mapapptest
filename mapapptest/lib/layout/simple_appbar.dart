import 'package:flutter/material.dart';

import '../const/colors.dart';

class SimpleAppBar extends StatelessWidget {
  final String title;
  const SimpleAppBar({
    required this.title,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: LINE_COLOR))),
      child: Row(
        children: [
          InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.arrow_forward, size: 18,)),
          SizedBox(width: 14,),
          Text(title, style: TextStyle(color: TABBAR_COLOR, fontSize: 16),),
        ],
      ),
    );
  }
}
