part of 'beers_bloc.dart';

abstract class BeersEvent extends Equatable {
  const BeersEvent();
}

class GetBeersEvent extends BeersEvent {
  @override
  List<Object?> get props => [];
}
