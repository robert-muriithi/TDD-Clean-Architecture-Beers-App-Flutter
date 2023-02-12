import 'dart:async';

import 'package:beers_flutter/core/utils/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/model/beers.dart';
import '../../domain/usecase/get_beers_usecase.dart';

part 'beers_event.dart';
part 'beers_state.dart';

class BeersBloc extends Bloc<BeersEvent, BeersState> {
  final GetBeersUseCase getBeersUseCase;

  BeersBloc(this.getBeersUseCase) : super(BeersInitial()) {
    on<GetBeersEvent>(getBeersEventObserver);
  }

  Future<void> getBeersEventObserver(event, emit) async {
    if(event is GetBeersEvent){
      emit(BeersLoading());
      final result = await getBeersUseCase(NoParams());
      result.fold(
        (failure) => emit(BeersError(message: mapFailureToMessage(failure))),
        (beers) => emit(BeersLoaded(beers: beers)),
      );
    }else {
      emit(const BeersError(message: Constants.UNEXPECTED_FAILURE_MESSAGE));
    }
  }

  String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure: return Constants.SERVER_FAILURE_MESSAGE;
      case DatabaseFailure: return Constants.DATABASE_FAILURE_MESSAGE;
      default: return Constants.UNEXPECTED_FAILURE_MESSAGE;
    }
  }

}


