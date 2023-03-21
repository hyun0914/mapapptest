import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'terms_of_service_event.dart';
part 'terms_of_service_state.dart';

class TermsOfServiceBloc extends Bloc<TermsOfServiceEvent, TermsOfServiceState> {
  TermsOfServiceBloc() : super(TermsOfServiceState()) {
    on<CheckOnOffAllEvent>(_onCheckOnOffAllEvent);
    on<CheckOnOff1Event>(_onCheckOnOff1Event);
    on<CheckOnOff2Event>(_onCheckOnOff2Event);
    on<CheckOnOff3Event>(_onCheckOnOff3Event);
    on<CheckOnOff4Event>(_onCheckOnOff4Event);
    on<Submitted>(_onSubmitted);
  }

  void _onCheckOnOffAllEvent(CheckOnOffAllEvent event, Emitter<TermsOfServiceState> emit) {
    bool check_on_off_all = event.check_on_off_all;

    emit(
      state.copyWith(
        check_on_off_all: check_on_off_all,
      )
    );

  }
  void _onCheckOnOff1Event(CheckOnOff1Event event, Emitter<TermsOfServiceState> emit) {
    bool check_on_off_1 = event.check_on_off_1;

    emit(
      state.copyWith(
        check_on_off_1: check_on_off_1,
      )
    );

  }
  void _onCheckOnOff2Event(CheckOnOff2Event event, Emitter<TermsOfServiceState> emit) {
    bool check_on_off_2 = event.check_on_off_2;

    emit(
        state.copyWith(
          check_on_off_2: check_on_off_2,
        )
    );
  }
  void _onCheckOnOff3Event(CheckOnOff3Event event, Emitter<TermsOfServiceState> emit) {
    bool check_on_off_3 = event.check_on_off_3;

    emit(
        state.copyWith(
          check_on_off_3: check_on_off_3,
        )
    );
  }
  void _onCheckOnOff4Event(CheckOnOff4Event event, Emitter<TermsOfServiceState> emit) {
    bool check_on_off_4 = event.check_on_off_4;

    emit(
        state.copyWith(
          check_on_off_4: check_on_off_4,
        )
    );
  }
  void _onSubmitted(Submitted event, Emitter<TermsOfServiceState> emit) {

  }
}
