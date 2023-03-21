part of 'terms_of_service_bloc.dart';

@immutable
abstract class TermsOfServiceEvent extends Equatable{
  const TermsOfServiceEvent();
}

class CheckOnOffAllEvent extends TermsOfServiceEvent {
  bool check_on_off_all;

  CheckOnOffAllEvent({required this.check_on_off_all});

  @override
  List<Object?> get props => [this.check_on_off_all];
}

class CheckOnOff1Event extends TermsOfServiceEvent {
  bool check_on_off_1;

  CheckOnOff1Event({required this.check_on_off_1});

  @override
  List<Object?> get props => [this.check_on_off_1];
}

class CheckOnOff2Event extends TermsOfServiceEvent {
  bool check_on_off_2;

  CheckOnOff2Event({required this.check_on_off_2});

  @override
  List<Object?> get props => [this.check_on_off_2];
}

class CheckOnOff3Event extends TermsOfServiceEvent {
  bool check_on_off_3;

  CheckOnOff3Event({required this.check_on_off_3});

  @override
  List<Object?> get props => [this.check_on_off_3];
}

class CheckOnOff4Event extends TermsOfServiceEvent {
  bool check_on_off_4;

  CheckOnOff4Event({required this.check_on_off_4});

  @override
  List<Object?> get props => [this.check_on_off_4];
}

class Submitted extends TermsOfServiceEvent {
  @override
  List<Object?> get props => [];
}
