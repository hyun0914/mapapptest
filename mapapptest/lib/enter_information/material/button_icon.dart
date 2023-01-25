

import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../main_contents/main_contents_page.dart';

class ButtonIcon extends StatefulWidget {
  const ButtonIcon({Key? key}) : super(key: key);

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

bool male_on_off = true;
bool female_on_off = false;
bool front_on_off = false;
bool back_on_off = false;
bool check_end_on_off = false;

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: (){
                  setState(() {
                    if(female_on_off = true){
                     male_on_off = true;
                     female_on_off = false;
                    }
                  });
                },
                child: male_on_off == true ? Icon(Icons.man, size: 104,  color: Colors.amber) : Icon(Icons.man, size: 104,)
            ),
            InkWell(
                onTap: (){
                  setState(() {
                    if(male_on_off == true){
                      female_on_off = true;
                      male_on_off = false;
                    }
                  });
                },
                child: female_on_off == false ? Icon(Icons.woman, size: 104,) : Icon(Icons.woman, size: 104, color: Colors.amber,)
            ),
          ],
        ),
        SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: (){
                  setState(() {
                    if(back_on_off == true){
                      front_on_off = true;
                      back_on_off = false;
                    }else {
                      if(front_on_off == false){
                        front_on_off = true;
                        check_end_on_off = true;
                      } else {
                        front_on_off = false;
                        check_end_on_off = false;
                      }
                    }
                  });
                },
                child: front_on_off == false ? Text('조수석', style: TextStyle(fontSize: 36),) : Text('조수석', style: TextStyle(fontSize: 36, color: Colors.amber),)
            ),
            InkWell(
                onTap: (){
                  setState(() {
                    if(front_on_off == true){
                      back_on_off = true;
                      front_on_off = false;
                    }else {
                      if(back_on_off == false){
                        back_on_off = true;
                        check_end_on_off = true;
                      } else {
                        back_on_off = false;
                        check_end_on_off = false;
                      }
                    }
                  });
                },
                child: back_on_off == false ? Text('뒷 자석', style: TextStyle(fontSize: 36),) : Text('뒷 자석', style: TextStyle(fontSize: 36, color: Colors.amber),)
            ),
          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height > 930? MediaQuery.of(context).size.height*0.32 : MediaQuery.of(context).size.height*0.2,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ElevatedButton(
              onPressed: check_end_on_off == false ? null :
                  () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => MainContentsPage()), (route) => false),
              style: ElevatedButton.styleFrom(
                  backgroundColor: BOUTTON_COLOR2
              ),
              child: check_end_on_off == false ?
              Text('필수 이용약관에 동의해주세요', style: TextStyle(color: INTRO_BOUTTON_TEXT_OFF_COLOR, fontSize: 16)) : Text('시작하기', style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16)),
            ),
          ),
        ),
      ],
    );
  }
}
