import 'package:beers_flutter/features/beers/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injector.dart';
import '../bloc/beers_bloc.dart';
import '../widgets/beers_list.dart';
import '../widgets/error.dart';

class BeersPage extends StatelessWidget {
  BeersPage({Key? key}) : super(key: key);

  BuildContext? blocContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beers'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<BeersBloc> buildBody(BuildContext context){
    return BlocProvider(
        create: (_) => sl<BeersBloc>(),
        child: BlocBuilder<BeersBloc, BeersState>(
          builder: (context, state) {
            blocContext = context;

            if(state is BeersInitial){
              dispatchEvent(context);
            }
            if(state is BeersLoading){
              return const LoadingWidget();
            }
            else if(state is BeersLoaded){
              final beers = state.beers;
              return BeersListWidget(beers: beers);
            }
            else if(state is BeersError){
              return ErrorMessageWidget(message: state.message);
            }else {
              return const ErrorMessageWidget(message: 'An unknown error occurred');
            }

          },
        )
    );
  }

  void dispatchEvent(BuildContext context){
    BlocProvider.of<BeersBloc>(context).add(GetBeersEvent());
  }

}
