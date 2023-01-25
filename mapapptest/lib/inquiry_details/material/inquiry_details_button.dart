import 'package:flutter/material.dart';

import '../../const/colors.dart';

class InquiryDetailsButton extends StatelessWidget {
  const InquiryDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: MediaQuery.of(context).size.height/2.7,
          color: INQUIRY_BG_COLOR,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: BOUTTON_COLOR2
              ),
              child: Text('답변보기', style: TextStyle(fontSize: 20, color: CONTENTS_TEXT_B_COLOR),),
          ),
        ),
      ],
    );
  }
}
