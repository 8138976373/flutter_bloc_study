import 'package:flutter/material.dart';

import 'player_view.dart';

class AddPlayerPage extends StatelessWidget {
  const AddPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // BlocProvider(
        //   create: (context) => HomeCubit(0),
        //   child: BlocListener<HomeCubit, int>(
        //     listener: (context, state) {
        //       if (state == 10) {
        //         showAboutDialog(
        //             context: context,
        //             applicationIcon: const AlertDialog(
        //               content: Text('10 reached'),
        //             ));
        //       }
        //     },
        // child:
        const AddPlayerView(
            // ),
            );
  }
}
