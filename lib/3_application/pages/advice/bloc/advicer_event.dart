part of 'advicer_bloc.dart';

//EVENTS COMING IN FROM THE USER

@immutable
sealed class AdvicerEvent {}

class AdviceRequestedEvent extends AdvicerEvent {}
