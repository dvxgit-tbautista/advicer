import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

//BLOCK ITSELF - LOGIC OF THE BLOC

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdvicerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
