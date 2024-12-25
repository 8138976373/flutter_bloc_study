import '../../../utils/assets/image_assets.dart';
import '/utils/di/injection.dart';
import '../../../routes/app_routes.dart';
import '../../../services/routing_service.dart';
import '/components/components/texts.dart';
import '../../../components/components/common_card/common_card.dart';
import '../../../components/components/common_scaffold.dart';
import '../../../components/const_widget.dart';
import '../../../components/loading.dart';
import '../home_blocs/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      scaffoldKey: GlobalKey(),
      mobileTile: BlocBuilder<HomeCubit, int>(
        builder: (context, state) => Padding(
          padding: CustomPadding.padding20,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LoadingScreen(),
                SizedBox(
                  height: 170,
                  child: CarouselView.weighted(
                    shrinkExtent: 10,
                    flexWeights: [2, 2],
                    children: List<Widget>.generate(10, (int index) {
                      return LoadingScreen();
                    }),
                  ),
                ),
                VerticalSpace.verticalSpaceH10,
                TitleText(title: 'Explore'),
                VerticalSpace.verticalSpaceH10,
                Center(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedCardView(
                        width: 150,
                        child: Column(
                          children: [
                            EmojiText(emoji: AssetsUtils.members),
                            SubTitleText(title: 'Members'),
                          ],
                        ),
                        onTap: () {
                          getIt<RoutingService>()
                              .pushNamed(context, AppRoutes.members);
                        },
                      ),
                      AnimatedCardView(
                        width: 150,
                        child: Column(
                          children: [
                            EmojiText(emoji: AssetsUtils.investment),
                            SubTitleText(
                              title: 'Member Investment',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onTap: () {
                          getIt<RoutingService>()
                              .pushNamed(context, AppRoutes.members);
                        },
                      ),
                    ],
                  ),
                ),
                VerticalSpace.verticalSpaceH10,
                TitleText(title: 'Notification'),
                VerticalSpace.verticalSpaceH10,
                NotificationTile()
              ],
            ),
          ),
        ),
      ),
      // backgroundColor: Theme.of(context).primaryColor,
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandedCardView(
          child: Row(
            children: [
              TitleText(title: '🏏'),
              HorizontalSpace.horizontalSpaceW10,
              Flexible(
                child: SubTitleText(
                  title:
                      'Cricket registrtion Started.Please register before 31 December',
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
