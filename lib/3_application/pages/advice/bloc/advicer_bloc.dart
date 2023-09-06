import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//BLOCK ITSELF - LOGIC OF THE BLOC

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    //event is triggered
    on<AdviceRequestedEvent>((event, emit) async {
      //loading indicator
      emit(AdvicerStateLoading());

      //execute business logic
      //for example get an advice
      debugPrint('fake get advice triggered');
      await Future.delayed(const Duration(seconds: 2), () {});
      debugPrint('got advice');

      emit(AdvicerStateLoaded(advice: 'fake advice to test bloc'));
      // emit(AdvicerStateError(message: 'error message'));
    });
  }
}
