part of 'onboarding_bloc_bloc.dart';


sealed class OnboardingBlocState {}

final class OnboardingBlocInitial extends OnboardingBlocState {}
final class ChangingIndexStat extends OnboardingBlocState{
  int index=0;
 
  ChangingIndexStat(this.index);
}
