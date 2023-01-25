import 'package:flutter/material.dart';

import 'one_contents_view.dart';
import 'two_contents_view.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        OneContentsView(),
        TwoContentsView(),
      ],
    );
  }
}
