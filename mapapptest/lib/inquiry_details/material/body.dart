import 'package:flutter/material.dart';

import '../../layout/simple_appbar.dart';
import 'inquiry_details_button.dart';
import 'inquiry_details_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SimpleAppBar(title: '문의하기'),
            InquiryDetailsForm(),
            InquiryDetailsButton(),
          ],
        )
    );
  }
}
