import '../counter_blocs/counter_cubit.dart';
import '/theme/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/theme_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) => Center(
            child: Text(
          state.toString(),
          style: Theme.of(context).textTheme.headlineLarge,
        )),
      ),
      backgroundColor: Theme.of(context).cardColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context
                  .read<ThemeBloc>()
                  .add(ThemeChanged(appTheme: AppTheme.LIGHT));
              context.read<CounterCubit>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
              context
                  .read<ThemeBloc>()
                  .add(ThemeChanged(appTheme: AppTheme.DARK));
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
