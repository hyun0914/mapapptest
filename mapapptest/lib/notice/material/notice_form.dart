import 'package:flutter/material.dart';
import '../../const/colors.dart';

class NoticeForm extends StatelessWidget {
  const NoticeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          listTileForm((){}, '이용내역 가이드', false),
          listTileForm((){}, '알쓸신업! 업데이트 안내', false),
          listTileForm((){}, 'ooo 이용 안내', false),
        ],
      ),
    );
  }

  Widget listTileForm(GestureTapCallback gestureTapCallback, String listText, bool icon_notice_on_off){
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: gestureTapCallback,
        title: Row(
          children: [
            icon_notice_on_off == true? SizedBox(width: 12,) : SizedBox(),
            Text(listText, style: TextStyle(fontSize: 16, color: CONTENTS_TEXT_B_COLOR, fontWeight: FontWeight.bold),),
          ],
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              Text('2018.12.21', style: TextStyle(fontSize: 12, color: CONTENTS_TEXT_G_COLOR),),
              SizedBox(width: 12,),
              Icon(Icons.arrow_forward_ios, size: 18,)
            ],
          ),
        ),
      ),
    );
  }
}
