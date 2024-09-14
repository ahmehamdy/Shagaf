part of 'shagaf_bloc.dart';

abstract class ShagafEvent {
  const ShagafEvent();
}

class changeindexevent extends ShagafEvent {
  int index=0;
 
  changeindexevent(this.index);
}

 