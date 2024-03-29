import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

import '../../const/colors.dart';


class OneContentsView extends StatefulWidget {
  const OneContentsView({Key? key}) : super(key: key);

  @override
  State<OneContentsView> createState() => _OneContentsViewState();
}

class _OneContentsViewState extends State<OneContentsView> {
  final current_location = TextEditingController(text: '현위치: 서울특별시 구로구2 구암로 24');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          color: Colors.black12,
        ),
        Row(
          children: [
            Container(
                width: 30,
                child: Icon(Icons.circle_outlined, size: 12,)),
            Container(
              width: MediaQuery.of(context).size.height > 930? 340 : 300,
              height: 60,
              child: TextField(
                controller: current_location,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
              ),
            ),
            InkWell(onTap: (){}, child: Icon(Icons.refresh, size: 24,)),
          ],
        ),
        Container(
          color: MAIN_LINE_COLOR,
          height: 1,
        ),
        Row(
          children: [
            Container(
                width: 30,
                child: Icon(Icons.circle, size: 12, color: Colors.red,)),
            Container(
              width: 330,
              height: 60,
              child: TextField(
                onTap: () async {
                  KopoModel? kmodle = await Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RemediKopo()));

                  print('${kmodle!.zonecode} / ${kmodle.address} / ${kmodle.buildingName}'); // zonecode 우편 번호 , address 주소

                },
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '도착지를 검색'
                ),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: MAIN_CONTENTS_COLOR,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('도착지를 검색 후 노선을 생성하여', style: TextStyle(fontSize: 16, color: MAIN_TEXT_COLOR)),
                Text('같이 가실분을 찾아보세요', style: TextStyle(fontSize: 16, color: MAIN_TEXT_COLOR)),
                SizedBox(height: 14,),
                Text('노선현황에서는 다른분이 생성하신', style: TextStyle(fontSize: 16, color: MAIN_TEXT_COLOR)),
                Text('노선을 확인 하실 수 있습니다.', style: TextStyle(fontSize: 16, color: MAIN_TEXT_COLOR)),
              ],
            ),
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('노선 생성하기', style: TextStyle(fontSize: 20),),
                ),
            ),
          ],
        ),
      ],
    );
  }
}
