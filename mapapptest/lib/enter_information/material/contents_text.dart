import 'package:flutter/material.dart';

import '../../const/colors.dart';

class ContentsText extends StatelessWidget {
  const ContentsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('선호하는 좌석을 선택하여 주세요(필수)', style: TextStyle(fontSize: 18, color: CONTENTS_TEXT_B_COLOR)),
          SizedBox(height: 4,),
          Text('프로필 설정에서 변경 가능 합니다.', style: TextStyle(fontSize: 16, color: CONTENTS_TEXT_B_COLOR)),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
