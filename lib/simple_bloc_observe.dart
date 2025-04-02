import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserve implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Change  $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close Cubit $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('create Cubit $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
