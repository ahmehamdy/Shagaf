part of 'onboarding_bloc_bloc.dart';


abstract class OnboardingBlocEvent {
  const OnboardingBlocEvent();
}
class ChangingIndexEvent extends OnboardingBlocEvent{
  int index=0;
 
  ChangingIndexEvent(this.index);

}
