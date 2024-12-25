import '../counter_blocs/counter_cubit.dart';
import 'counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          if (state == 10) {
            showAboutDialog(
                context: context,
                applicationIcon: const AlertDialog(
                  content: Text('10 reached'),
                ));
          }
        },
        child: const CounterView(),
      ),
    );
  }
}
