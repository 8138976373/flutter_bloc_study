// }
import '/services/routing_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import '../../theme/theme.dart';
import '../../utils/assets/image_assets.dart';
import '../../utils/di/injection.dart';
import '../const_widget.dart';
import 'common_image_container.dart';
import 'texts.dart';

AppBar appBarC(
    {BuildContext? context,
    void Function()? onPressed,
    bool? isHome = false,
    String title = 'SKSSF Patterkulam',
    String subtitle = ''}) {
  return AppBar(
    title: empty,
    backgroundColor: white,
    flexibleSpace: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // horizontalSpaceW50,
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: IconButton(
            onPressed: onPressed ??
                () async {
                  getIt<RoutingService>().pop(
                    context,
                  );
                },
            icon: ImageContainerLocal(
                url: AssetsUtils.logo, height: 60, width: 60),
          ),
        ),
        HorizontalSpace.horizontalSpaceW10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextTile(
              text: title,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            TextTile(
              text: subtitle,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    ),
    toolbarHeight: 80,
    elevation: 0,
  );
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? bottomTile;
  const CommonAppBar({super.key, this.title, this.bottomTile});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      toolbarHeight: bottomTile == null ? 100 : 120,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(
        children: [
          Container(
            width: context.mediaQuerySize.width,
            height: context.mediaQuerySize.height,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: HorizontalPadding.paddingHorizontal10,
                  icon: const Icon(
                    Icons.menu,
                    color: white,
                    size: 25,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: TextTile(
                    text: title ?? '',
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                empty
              ],
            ),
          ),
          bottomTile ?? empty,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottomTile == null ? 100 : 120);
}
