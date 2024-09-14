import 'package:bloc/bloc.dart';

part 'onboarding_bloc_event.dart';
part 'onboarding_bloc_state.dart';

class OnboardingBlocBloc extends Bloc<OnboardingBlocEvent, OnboardingBlocState> {
  OnboardingBlocBloc() : super(OnboardingBlocInitial()) {
    on<OnboardingBlocEvent>((event, emit) {
    });
  }
}
