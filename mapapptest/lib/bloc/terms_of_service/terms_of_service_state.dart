part of 'terms_of_service_bloc.dart';

class TermsOfServiceState extends Equatable {
  final bool check_on_off_all;
  final bool check_on_off_1;
  final bool check_on_off_2;
  final bool check_on_off_3;
  final bool check_on_off_4;

  TermsOfServiceState({
    this.check_on_off_all = false,
    this.check_on_off_1 = false,
    this.check_on_off_2 = false,
    this.check_on_off_3 = false,
    this.check_on_off_4 = false,
});

  TermsOfServiceState copyWith({
    bool? check_on_off_all,
    bool? check_on_off_1,
    bool? check_on_off_2,
    bool? check_on_off_3,
    bool? check_on_off_4,

}) {
    return TermsOfServiceState(
      check_on_off_all: check_on_off_all ?? this.check_on_off_all,
      check_on_off_1: check_on_off_1 ?? this.check_on_off_1,
      check_on_off_2: check_on_off_2 ?? this.check_on_off_2,
      check_on_off_3: check_on_off_3 ?? this.check_on_off_3,
      check_on_off_4: check_on_off_4 ?? this.check_on_off_4,
    );
  }


  @override
  List<Object?> get props => [this.check_on_off_all, this.check_on_off_1, this.check_on_off_2, this.check_on_off_3, this.check_on_off_4];
}
