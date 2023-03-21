import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapapptest/bloc/terms_of_service/terms_of_service_bloc.dart';

import 'contents_check.dart';
import '../../layout/simple_appbar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsOfServiceBloc(),
      child: SafeArea(child: Column(
        children: [
          SimpleAppBar(title: 'ooo 이용약관',),
          ContentsCheck(),
        ],
      )),
    );
  }
}
