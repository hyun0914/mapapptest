import 'package:flutter/material.dart';

import '../../const/colors.dart';

class CardButtonForm extends StatelessWidget {
  const CardButtonForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 72,
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: CARD_BUTTON_BG_COLOR),
              onPressed: (){}, child: Text('카드등록', style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 20),)
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('- 목적지 도착 시 보유 포인트가 없을 경우, \n  등록된 카드로 결제됩니다', style: TextStyle(color: CONTENTS_TEXT_G_COLOR),),
              SizedBox(height: 4,),
              Text('- 개인카드 및 법인카드 등록가능', style: TextStyle(color: CONTENTS_TEXT_G_COLOR),),
            ],
          ),
        ),
      ],
    );
  }
}
