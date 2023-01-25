import 'package:flutter/material.dart';

import '../../const/colors.dart';

class TwoContentsView extends StatefulWidget {
  const TwoContentsView({Key? key}) : super(key: key);

  @override
  State<TwoContentsView> createState() => _TwoContentsViewState();
}

bool distance500m_on_off = false;
bool distance700m_on_off = true;
bool distance1km_on_off = false;
bool distance2km_on_off = false;
bool distance3km_on_off = false;

class _TwoContentsViewState extends State<TwoContentsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: MediaQuery.of(context).size.height > 930? MediaQuery.of(context).size.height/1.41 : MediaQuery.of(context).size.height/ 1.43,
          color: Colors.black12,
        ),
        Spacer(),
        Container(
          height: 45,
          color: MAIN_TAB2_CONTENTS_BG_COLOR,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(child: distanceText('500m', distance500m_on_off),
                onTap: (){
                  setState(() {
                    if(distance500m_on_off == false) {
                      distance500m_on_off = true;
                    } else {
                      distance500m_on_off = false;
                    }
                  });
                },
              ),
              InkWell(child: distanceText('700m', distance700m_on_off),
                onTap: (){
                  setState(() {
                    if(distance700m_on_off == false) {
                      distance700m_on_off = true;
                    } else {
                      distance700m_on_off = false;
                    }
                  });
                },
              ),
              InkWell(child: distanceText('1km',distance1km_on_off),
                onTap: (){
                  setState(() {
                    if(distance1km_on_off == false) {
                      distance1km_on_off = true;
                    } else {
                      distance1km_on_off = false;
                    }
                  });
                },
              ),
              InkWell(child: distanceText('2km', distance2km_on_off),
                onTap: (){
                  setState(() {
                    if(distance2km_on_off == false) {
                      distance2km_on_off = true;
                    } else {
                      distance2km_on_off = false;
                    }
                  });
                },
              ),
              InkWell(child: distanceText('3km', distance3km_on_off),
                onTap: (){
                  setState(() {
                    if(distance3km_on_off == false) {
                      distance3km_on_off = true;
                    } else {
                      distance3km_on_off = false;
                    }
                  });
                },
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: MAIN_TAB2_BUTTON_LINE_COLOR,
        ),
        Container(
          height: 60,
          color: MAIN_TAB2_CONTENTS_BG_COLOR,
          padding: EdgeInsets.only(left: 10),
          child: ListTile(
            title: Text('노선 현황 리스트', style: TextStyle(color: CONTENTS_TEXT_W_COLOR, fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios, color: CONTENTS_TEXT_W_COLOR, size: 18,),
            onTap: (){},
          ),
        )
      ],
    );
  }

  Widget distanceText(String distance, bool distance_on_off){
    return distance_on_off == false?
        Padding(
          padding: MediaQuery.of(context).size.height > 930? const EdgeInsets.symmetric(horizontal: 20) : const EdgeInsets.symmetric(horizontal: 13),
          child: Text(distance, style: TextStyle(color: CONTENTS_TEXT_G_COLOR, fontSize: 18)),
        )
          : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child:
            Container(
              width: 50,
              height: 30,
              color: Colors.amber,
              child: Text(distance, style: TextStyle(color: MAIN_TAB2_SELECT_COLOR, fontSize: 18)),
              // Stack(children: [
              //     Positioned(top:11, left: 12, child: Text(distance, style: TextStyle(color: MAIN_TAB2_SELECT_COLOR, fontSize: 18))),
              //     Image.asset('assets/map_btn_radius_on.png', width: 72, height: 72,),
              //   ],),
             ),
            );
  }
}
