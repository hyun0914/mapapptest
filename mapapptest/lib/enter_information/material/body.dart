
import 'package:flutter/material.dart';

import '../../layout/simple_appbar.dart';
import 'button_icon.dart';
import 'contents_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        SimpleAppBar(title: '정보 입력'),
        ContentsText(),
        ButtonIcon(),
      ],
    ));
  }
}
