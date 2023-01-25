import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../inquiry_details/Inquiry_details _page.dart';
import '../../notice/notice_page.dart';
import '../../payment_card_management/payment_card_management_page.dart';
import '../../setting/setting_page.dart';

class DrawerForm extends StatelessWidget {
  const DrawerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Icon(Icons.account_circle, size: 78,),
                  ),
                  SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('회원닉네임', style: TextStyle(fontSize: 18, color: CONTENTS_TEXT_B_COLOR),),
                        Row(
                          children: [
                            Text('회원등급', style: TextStyle(fontSize: 12, color: CONTENTS_TEXT_B_COLOR),),
                            Icon(Icons.help_outline, color: Colors.amber, size: 15,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 1,
              color: DRAWER_LINE_COLOR,
            ),

            Container(
              height: 90,
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('쿠폰', style: TextStyle(fontSize: 12, color: DRAWER_TEXT_G_COLOR),),
                      SizedBox(height: 4,),
                      Text('0', style: TextStyle(fontSize: 24, color: CONTENTS_TEXT_B_COLOR),),
                    ],
                  ),

                  Column(
                    children: [
                      Text('보유캐시', style: TextStyle(fontSize: 12, color: DRAWER_TEXT_G_COLOR),),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text('13,070', style: TextStyle(fontSize: 24, color: CONTENTS_TEXT_B_COLOR),),
                          SizedBox(width: 4,),
                          Text('ⓒ', style: TextStyle(fontSize: 24, color: DRAWER_TEXT_COIN_COLOR),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: 1,
              color: DRAWER_LINE_COLOR,
            ),

            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => PaymentCardManagementPage())),
              title: Text('결제카드 관리', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            ListTile(
              onTap: (){},
              title: Text('이용내역', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => NoticePage())),
              title: Text('공지사항', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => InquiryDetailsPage())),
              title: Text('문의하기', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            ListTile(
              onTap: (){},
              title: Text('이용가이드', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SettingPage())),
              title: Text('설정', style: TextStyle(fontSize: 14, color: CONTENTS_TEXT_B_COLOR),),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              color: DRAWER_ROGO_BG_COLOR,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 12),
                child: Row(
                  children: [
                    Text('로고 이미지'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
