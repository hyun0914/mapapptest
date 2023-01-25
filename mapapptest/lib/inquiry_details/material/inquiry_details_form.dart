import 'package:flutter/material.dart';

import '../../const/colors.dart';

class InquiryDetailsForm extends StatelessWidget {
  const InquiryDetailsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          listTileForm((){}, '가입 / 탈퇴'),
          listTileForm((){}, '결제 / 포인트 / 환전'),
          listTileForm((){}, '이용내역'),
          listTileForm((){}, '이용수칙'),
          listTileForm((){}, '비상신고'),
          listTileForm((){}, '기타'),
        ],
      ),
    );
  }

  Widget listTileForm(GestureTapCallback gestureTapCallback, String listText){
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: gestureTapCallback,
        title: Text(listText, style: TextStyle(fontSize: 16, color: CONTENTS_TEXT_B_COLOR),),
        trailing: Icon(Icons.arrow_forward_ios, size: 18,),
      ),
    );
  }
}
