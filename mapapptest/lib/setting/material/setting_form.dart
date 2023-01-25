import 'package:flutter/material.dart';

import '../../const/colors.dart';

class SettingForm extends StatelessWidget {
  const SettingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleTextForm(context, '프로그램 정보'),
        contentsTextForm(context, (){}, '현재버전', 'v 1.0.1', '최신버전', false),

        titleTextForm(context, '알림설정'),
        contentsTextForm(context, (){}, '이벤트 및 공지 알림', '', 'OFF', false),
        Container(height: 1, color: LINE_COLOR,),
        contentsTextForm(context, (){}, '매칭 및 쪽지 알림', '', 'ON', true),

        titleTextForm(context, '약관'),
        listTileTextForm((){}, '서비스 이용약관'),
        Container(height: 1, color: LINE_COLOR,),
        listTileTextForm((){}, '위치정보 수집 및 이용'),
        Container(height: 1, color: LINE_COLOR,),
        listTileTextForm((){}, '개인정보 수집 및 이용'),

        titleTextForm(context, '계정'),
        contentsTextForm(context, (){}, '188234567', '', '로그아웃', true),
        Container(height: 1, color: LINE_COLOR,),
        Container(
          height: 80,
          padding: EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: (){},
            child: Row(
              children: [
                Text('회원탈퇴', style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16),),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget titleTextForm(BuildContext context, String titleText){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      color: SETTING_TITLE_BG_COLOR,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 20),
        child: Text(titleText, style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16),),
      ),
    );
  }

  Widget contentsTextForm(BuildContext context, GestureTapCallback gestureTapCallback, String contentsText1, String contentsText2, String contentsText3, bool button_on_off){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(contentsText1, style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16),),
                SizedBox(width: 4,),
                Text(contentsText2, style: TextStyle(color: SETTING_VERSION_TEXT_COLOR, fontSize: 16),),
              ],
            ),
            InkWell(
                onTap: gestureTapCallback,
                child: Text(contentsText3, style: TextStyle(color: button_on_off == false? CONTENTS_TEXT_W_COLOR : CONTENTS_TEXT_B_COLOR, fontSize: 14, fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }

  Widget listTileTextForm(GestureTapCallback gestureTapCallback, String listTitle){
    return Container(
      height: 80,
      child: ListTile(
        onTap: gestureTapCallback,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 4),
          child: Text(listTitle),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18,),
      ),
    );
  }
}
