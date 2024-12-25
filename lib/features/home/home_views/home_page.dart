import '../home_blocs/home_cubit.dart';
import 'home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(0),
      child: BlocListener<HomeCubit, int>(
        listener: (context, state) {},
        child: const HomeView(),
      ),
    );
  }
}
