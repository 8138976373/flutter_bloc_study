// import '../../../components/const_widget.dart';
// import '../../../components/loading.dart';
// import '/theme/theme_event.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../theme/theme_bloc.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  BlocBuilder<ListUsersBloc, ListUsersState>(
//         builder: (context, state) => Column(
//           children: [
//             VerticalSpace.verticalSpaceH10,
//             LoadingScreen(),
//             Center(
//                 child: Text(
//               state.toString(),
//               style: Theme.of(context).textTheme.headlineLarge,
//             )),
//           ],
//         ),
//       ),
//       backgroundColor: Theme.of(context).cardColor,
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               context
//                   .read<ThemeBloc>()
//                   .add(ThemeChanged(appTheme: AppTheme.LIGHT));
//               context.read<HomeCubit>().increment();
//             },
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               context.read<HomeCubit>().decrement();
//               context
//                   .read<ThemeBloc>()
//                   .add(ThemeChanged(appTheme: AppTheme.DARK));
//             },
//             child: const Icon(Icons.remove),
//           )
//         ],
//       ),
//     );
//   }
// }

import '/components/components/common_button.dart';
import '/components/components/common_card/common_card.dart';
import '/components/components/common_form.dart';
import '/components/components/common_radio_tile.dart';
import '/components/components/common_scaffold.dart';
import '/components/components/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/const_widget.dart';
import '../../../routes/app_routes.dart';
import '../../../services/routing_service.dart';
import '../../../utils/di/injection.dart';

class AddPlayerView extends StatelessWidget {
  const AddPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      scaffoldKey: GlobalKey(),
      mobileTile: Padding(
        padding: HorizontalPadding.paddingHorizontal10,
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: 10, spacing: 10,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace.verticalSpaceH10,
              // LoadingScreen(),
              Row(
                children: [
                  TitleText(title: 'Add Player'),
                ],
              ),
              // VerticalSpace.verticalSpaceH10,
              FormSingle(
                title: 'Player Name',
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Player Age',
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Player Place',
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Player Gender',
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Player Phno',
                controller: TextEditingController(),
              ),
              VerticalSpace.verticalSpaceH10,
              ExpandedAnimatedCardView(
                child: Row(
                  children: [
                    Expanded(
                      child: RadioGroupTile(
                          title: 'Player Type',
                          // optionDirection: Axis.horizontal,
                          optionList: [
                            OptionModel(
                                isSelected: false, title: 'All-rounder'),
                            OptionModel(isSelected: false, title: 'Batsman'),
                            OptionModel(isSelected: false, title: 'Bowler'),
                          ],
                          onSelected: (index) {}),
                    ),
                  ],
                ),
              ),
              VerticalSpace.verticalSpaceH10,
              ExpandedAnimatedCardView(
                child: Row(
                  children: [
                    Expanded(
                      child: RadioGroupTile(
                          title: 'Balling Type',
                          // optionDirection: Axis.horizontal,
                          optionList: [
                            OptionModel(
                                isSelected: false, title: 'Spin with Left'),
                            OptionModel(
                                isSelected: false, title: 'Spin with Right'),
                            OptionModel(
                                isSelected: false, title: 'Fast with Left'),
                            OptionModel(
                                isSelected: false, title: 'Fast with Right')
                          ],
                          onSelected: (index) {}),
                    ),
                  ],
                ),
              ),

              Table(
                children: [
                  TableRow(children: [
                    RadioGroupTile(
                        title: 'Batting Type',
                        optionDirection: Axis.vertical,
                        optionList: [
                          OptionModel(isSelected: false, title: 'Left'),
                          OptionModel(isSelected: false, title: 'Right')
                        ],
                        onSelected: (index) {}),
                    RadioGroupTile(
                        title: 'Keeper Type',
                        optionDirection: Axis.vertical,
                        optionList: [
                          OptionModel(isSelected: false, title: 'Yes'),
                          OptionModel(isSelected: false, title: 'No')
                        ],
                        onSelected: (index) {}),
                  ])
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [

              //   ],
              // ),
              VerticalSpace.verticalSpaceH10,
              Row(
                children: [
                  SaveButton(
                    width: 70,
                    text: 'Back',
                    onClick: () {
                      getIt<RoutingService>()
                          .pushReplacementNamed(context, AppRoutes.match);
                    },
                  ),
                  HorizontalSpace.horizontalSpaceW5,
                  SaveButton(
                    width: context.mediaQuerySize.width - 125,
                    text: 'Save',
                    onClick: () {},
                  ),
                ],
              ),
              VerticalSpace.verticalSpaceH10,
            ],
          ),
        ),
      ),
    );
  }
}
