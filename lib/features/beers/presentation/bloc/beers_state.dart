part of 'beers_bloc.dart';

abstract class BeersState extends Equatable {
  const BeersState();
}

class BeersInitial extends BeersState {
  @override
  List<Object> get props => [];
}

class BeersLoading extends BeersState {
  @override
  List<Object> get props => [];
}

class BeersLoaded extends BeersState {
  final List<Beers> beers;

  const BeersLoaded({required this.beers});

  @override
  List<Object> get props => [beers];
}

class BeersError extends BeersState {
  final String message;

  const BeersError({required this.message});

  @override
  List<Object> get props => [message];
}
