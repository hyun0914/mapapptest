import 'package:flutter/material.dart';

import '../../layout/simple_appbar.dart';
import 'setting_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SimpleAppBar(title: '설정'),
              SettingForm(),
            ],
          ),
        )
    );
  }
}
