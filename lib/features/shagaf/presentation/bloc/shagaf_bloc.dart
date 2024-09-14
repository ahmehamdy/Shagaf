import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'shagaf_event.dart';
part 'shagaf_state.dart';

class ShagafBloc extends Bloc<ShagafEvent, ShagafState> {
  final PageController pageController = PageController();
  ShagafBloc() : super(ShagafInitial()) {
    on<changeindexevent>((event, emit) {
      // pageController.animateToPage(event.index,
      //     duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      emit(changeindexstate(event.index,  ));
    });
  }
}
 