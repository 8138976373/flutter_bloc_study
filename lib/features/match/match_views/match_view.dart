import '/utils/assets/image_assets.dart';

import '/components/components/common_scaffold.dart';
import '/components/components/texts.dart';
import 'package:flutter/material.dart';
import '../../../components/components/common_card/common_card.dart';
import '../../../components/const_widget.dart';
import '../../../routes/app_routes.dart';
import '../../../services/routing_service.dart';
import '../../../utils/di/injection.dart';

class MatchView extends StatelessWidget {
  const MatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      scaffoldKey: GlobalKey(),
      mobileTile: Padding(
        padding: HorizontalPadding.paddingHorizontal10,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  // LoadingScreen(),

                  //
                  AnimatedCardView(
                    padding: CustomPadding.padding5,
                    width: 100,
                    height: 70,
                    child: Column(
                      children: [
                        TitleText(title: AssetsUtils.members),
                        SubTitleText(title: 'Matches'),
                      ],
                    ),
                    onTap: () {
                      getIt<RoutingService>()
                          .pushNamed(context, AppRoutes.addPlayer);
                    },
                  ),
                  AnimatedCardView(
                    padding: CustomPadding.padding5,
                    width: 100,
                    height: 70,
                    child: Column(
                      children: [
                        TitleText(title: AssetsUtils.members),
                        SubTitleText(title: 'Teams'),
                      ],
                    ),
                    onTap: () {
                      getIt<RoutingService>()
                          .pushNamed(context, AppRoutes.addPlayer);
                    },
                  ),
                  AnimatedCardView(
                    padding: CustomPadding.padding5,
                    width: 100,
                    height: 70,
                    child: Column(
                      children: [
                        TitleText(title: AssetsUtils.members),
                        SubTitleText(title: 'Players'),
                      ],
                    ),
                    onTap: () {
                      getIt<RoutingService>()
                          .pushNamed(context, AppRoutes.addPlayer);
                    },
                  ),

                  // ),
                  VerticalSpace.verticalSpaceH10,
                  // SaveButton(
                  //   width: context.mediaQuerySize.width - 40,
                  //   text: 'Save',
                  //   onClick: () {},
                  // ),
                  // VerticalSpace.verticalSpaceH10,
                ],
              ),
              VerticalSpace.verticalSpaceH10,
              TitleText(title: 'Matches'),
            ],
          ),
        ),
      ),
    );
  }
}
