
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../enter_information/enter_information_page.dart';

class ContentsCheck extends StatefulWidget {
  const ContentsCheck({Key? key}) : super(key: key);

  @override
  State<ContentsCheck> createState() => _ContentsCheckState();
}

bool check_on_off_all = false;
bool check_on_off_1 = false;
bool check_on_off_2 = false;
bool check_on_off_3 = false;
bool check_on_off_4 = false;

class _ContentsCheckState extends State<ContentsCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            testCheck('서비스 이용약관(필수)', 'ㅇㅇ를 이용하는데 필요한 기본 약관 입니다.', true, true,
                InkWell(
                    onTap: (){
                        setState((){
                          if(check_on_off_1 == false){
                            check_on_off_1 = true;
                          } else {
                            check_on_off_1 = false;
                          }
                        });
                      },
                    child: check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,))),
            testCheck('위치정보 수집 및 이용동의(필수)', '매칭 서비스 제공을 위해 사용자의 위치 정보를 이용합니다.', true, true,
                InkWell(
                    onTap: (){
                      setState((){
                        if(check_on_off_2 == false){
                          check_on_off_2 = true;
                        } else {
                          check_on_off_2 = false;
                        }
                      });
                    },
                    child: check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,))),
            testCheck('개인정보 수집 및 이용동의(필수)', '서비스 제공을 위한 최소한의 개인정보입니다.', true, true,
                InkWell(
                    onTap: (){
                      setState((){
                        if(check_on_off_3 == false){
                          check_on_off_3 = true;
                        } else {
                          check_on_off_3 = false;
                        }
                      });
                    },
                    child: check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,))),
            testCheck('마케팅 수신 동의', '가치타에서 제공하는 이벤트 및 소식등을 SNS, 이메일, 앱 내알림등으로 받겠습니다.', true, false,
                InkWell(
                    onTap: (){
                      setState((){
                        if(check_on_off_4 == false){
                          check_on_off_4 = true;
                        } else {
                          check_on_off_4 = false;
                        }
                      });
                    },
                    child: check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,))),
            testCheck('모든 서비스 이용약관 동의', '', false, false,
                InkWell(
                    onTap: (){
                      setState((){
                        if(check_on_off_all == false){
                          check_on_off_all = true;
                          check_on_off_1 = true;
                          check_on_off_2 = true;
                          check_on_off_3 = true;
                          check_on_off_4 = true;

                        } else {
                          check_on_off_all = false;
                          check_on_off_1 = false;
                          check_on_off_2 = false;
                          check_on_off_3 = false;
                          check_on_off_4 = false;
                        }
                      });
                    },
                    child: check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ElevatedButton(
              onPressed: check_on_off_1 == false || check_on_off_2 == false || check_on_off_3 == false && check_on_off_all == false ? null :
                  () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => EnterInformationPage())),
              style: ElevatedButton.styleFrom(
                  backgroundColor: BOUTTON_COLOR2
              ),
              child: check_on_off_1 == false || check_on_off_2 == false || check_on_off_3 == false && check_on_off_all == false ?
              Text('필수 이용약관에 동의해주세요', style: TextStyle(color: INTRO_BOUTTON_TEXT_OFF_COLOR, fontSize: 16),) : Text('동의하고 진행합니다.', style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16),),
            ),
          ),
        ),
      ],
    );
  }

  Widget testCheck(String text1, String text2, bool contents, bool detail, InkWell inkWell,){
    return Container(
      decoration: detail == true ? BoxDecoration(border: Border(bottom: BorderSide(color: LINE_COLOR))) : null,
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: TextStyle(fontSize: 16),),
                contents == true ? SizedBox(height: 4,) : SizedBox(),
                contents == true ? Text(text2, style: TextStyle(fontSize: 12),) : SizedBox(),
                detail == true ? SizedBox(height: 4,) : SizedBox(),
                detail == true ? InkWell(onTap: (){}, child: Text('상세보기', style: TextStyle(fontSize: 12, color: CONTENTS_TEXT_G_COLOR, decoration: TextDecoration.underline),)) : SizedBox(),
              ],
            ),
          ),
          inkWell,
        ],
      ),
    );
  }
}