part of 'shagaf_bloc.dart';

abstract class ShagafState {
  const ShagafState();
}

class ShagafInitial extends ShagafState {}

class changeindexstate extends ShagafState {
  int index=0;
   
  changeindexstate(this.index, );
}
