import 'package:flutter/material.dart';

import '../../const/colors.dart';

class CardForm extends StatelessWidget {
  const CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          color: CARD_FORM_BG_COLOR,
          child: Center(child: Text('등록된 카드가 없습니다.', style: TextStyle(fontSize: 16, color: CONTENTS_TEXT_G_COLOR),)),
        ),
      ],
    );
  }
}
