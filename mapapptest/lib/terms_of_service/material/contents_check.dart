
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapapptest/bloc/terms_of_service/terms_of_service_bloc.dart';

import '../../const/colors.dart';
import '../../enter_information/enter_information_page.dart';

class ContentsCheck extends StatelessWidget {
  const ContentsCheck({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return BlocBuilder<TermsOfServiceBloc, TermsOfServiceState>(
      builder: (context, state) {
        return
        Expanded(
         child: Column(
            children: [
              Column(
                children: [
                  testCheck('서비스 이용약관(필수)', 'ㅇㅇ를 이용하는데 필요한 기본 약관 입니다.', true, true,
                    InkWell(
                      onTap: (){
                        print('state.check_on_off_1: ${state.check_on_off_1}');
                        if(state.check_on_off_1 == false) {
                          context.read<TermsOfServiceBloc>().add(CheckOnOff1Event(check_on_off_1: true));
                        } else if(state.check_on_off_1 == true) {
                          if(state.check_on_off_2 == false && state.check_on_off_3 == false){
                            context.read<TermsOfServiceBloc>().add(CheckOnOff1Event(check_on_off_1: false));
                            context.read<TermsOfServiceBloc>().add(CheckOnOffAllEvent(check_on_off_all: false));
                          } else {
                            context.read<TermsOfServiceBloc>().add(CheckOnOff1Event(check_on_off_1: false));
                          }
                        }
                      },
                      child: state.check_on_off_1 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,)
                      )
                    ),
                    testCheck('위치정보 수집 및 이용동의(필수)', '매칭 서비스 제공을 위해 사용자의 위치 정보를 이용합니다.', true, true,
                    InkWell(
                      onTap: (){
                        print('state.check_on_off_2: ${state.check_on_off_2}');
                        if(state.check_on_off_2 == false) {
                          context.read<TermsOfServiceBloc>().add(CheckOnOff2Event(check_on_off_2: true));
                        } else if(state.check_on_off_2 == true) {
                          if(state.check_on_off_1 == false && state.check_on_off_3 == false){
                            context.read<TermsOfServiceBloc>().add(CheckOnOff2Event(check_on_off_2: false));
                            context.read<TermsOfServiceBloc>().add(CheckOnOffAllEvent(check_on_off_all: false));
                          } else {
                            context.read<TermsOfServiceBloc>().add(CheckOnOff2Event(check_on_off_2: false));
                          }
                        }
                      },
                      child: state.check_on_off_2 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,)
                     )
                    ),
                    testCheck('개인정보 수집 및 이용동의(필수)', '서비스 제공을 위한 최소한의 개인정보입니다.', true, true,
                    InkWell(
                      onTap: (){
                        print('state.check_on_off_3: ${state.check_on_off_3}');
                        if(state.check_on_off_3 == false) {
                          context.read<TermsOfServiceBloc>().add(CheckOnOff3Event(check_on_off_3: true));
                        } else if(state.check_on_off_3 == true) {
                          if(state.check_on_off_1 == false && state.check_on_off_2 == false){
                            context.read<TermsOfServiceBloc>().add(CheckOnOff3Event(check_on_off_3: false));
                            context.read<TermsOfServiceBloc>().add(CheckOnOffAllEvent(check_on_off_all: false));
                          } else {
                            context.read<TermsOfServiceBloc>().add(CheckOnOff3Event(check_on_off_3: false));
                          }
                        }
                      },
                      child: state.check_on_off_3 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,)
                      )
                    ),
                    testCheck('마케팅 수신 동의', '가치타에서 제공하는 이벤트 및 소식등을 SNS, 이메일, 앱 내알림등으로 받겠습니다.', true, false,
                    InkWell(
                        onTap: (){
                          print('state.check_on_off_4: ${state.check_on_off_4}');
                          if(state.check_on_off_4 == false) {
                            context.read<TermsOfServiceBloc>().add(CheckOnOff4Event(check_on_off_4: true));
                          } else {
                            context.read<TermsOfServiceBloc>().add(CheckOnOff4Event(check_on_off_4: false));
                          }
                        },
                        child: state.check_on_off_4 == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,)
                      )
                    ),
                    testCheck('모든 서비스 이용약관 동의', '', false, false,
                        InkWell(
                            onTap: (){
                              print('state.check_on_off_all: ${state.check_on_off_all}');
                              if(state.check_on_off_all == false) {
                                context.read<TermsOfServiceBloc>().add(CheckOnOffAllEvent(check_on_off_all: true));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff1Event(check_on_off_1: true));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff2Event(check_on_off_2: true));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff3Event(check_on_off_3: true));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff4Event(check_on_off_4: true));
                              } else {
                                context.read<TermsOfServiceBloc>().add(CheckOnOffAllEvent(check_on_off_all: false));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff1Event(check_on_off_1: false));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff2Event(check_on_off_2: false));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff3Event(check_on_off_3: false));
                                context.read<TermsOfServiceBloc>().add(CheckOnOff4Event(check_on_off_4: false));
                              }
                            },
                      child: state.check_on_off_all == false ? Icon(Icons.check_box_outlined, size: 30,) : Icon(Icons.check_box, size: 30,)
                    )
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: state.check_on_off_1 == false ||  state.check_on_off_2 == false || state.check_on_off_3 == false ? null :
                        () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => EnterInformationPage())),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: BOUTTON_COLOR2
                    ),
                    child: state.check_on_off_1 == false ||  state.check_on_off_2 == false || state.check_on_off_3 == false ?
                    Text('필수 이용약관에 동의해주세요', style: TextStyle(color: INTRO_BOUTTON_TEXT_OFF_COLOR, fontSize: 16),) : Text('동의하고 진행합니다.', style: TextStyle(color: CONTENTS_TEXT_B_COLOR, fontSize: 16),),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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