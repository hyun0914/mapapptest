import 'package:flutter/material.dart';

import '../../layout/simple_appbar.dart';
import 'card_button_form.dart';
import 'card_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SimpleAppBar(title: '결제카드 관리'),
            CardForm(),
            CardButtonForm(),
          ],
        )
    );
  }
}
