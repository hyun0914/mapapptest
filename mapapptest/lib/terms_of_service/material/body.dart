
import 'package:flutter/material.dart';

import 'contents_check.dart';
import '../../layout/simple_appbar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        SimpleAppBar(title: 'ooo 이용약관',),
        ContentsCheck(),
      ],
    ));
  }
}
