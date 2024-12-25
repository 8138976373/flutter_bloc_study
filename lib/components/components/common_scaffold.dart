import '/utils/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/theme.dart';
import '../const_widget.dart';
import 'common_app_bar.dart';
import 'common_drawer_tile.dart';

Widget scaffoldC({Widget child = empty}) {
  return GestureDetector(
      onTap: () {
        Get.focusScope!.unfocus();
      },
      child: SingleChildScrollView(child: child));
}

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    super.key,
    this.backgroundColor,
    this.tabTile,
    this.mobileTile,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation =
        FloatingActionButtonLocation.centerDocked,
    this.hideDrawer = false,
    this.resizeToAvoidBottomInset = false,
    this.hideAppBar = false,
    this.appbarBottomTile,
    this.appbarTitle = Constant.appTitle,
    required this.scaffoldKey,
  });
  final Widget? tabTile;
  final Widget? mobileTile;
  final Widget? bottomNavigationBar;
  final bool hideDrawer;
  final bool hideAppBar;
  final bool? resizeToAvoidBottomInset;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? appbarBottomTile;
  final String? appbarTitle;
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (a) async {
        // getRouteOffAndToNamed(routeName: AppPages.HOME);
      },
      child: Scaffold(
        // key: scaffoldKey,
        appBar: CommonAppBar(
            // scaffoldKey: scaffoldKey,
            // context: context,
            title: appbarTitle,
            bottomTile: Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              // alignment: Alignment.bottomCenter,
              child: appbarBottomTile ?? empty,
            )),
        drawer: hideDrawer ? null : DrawerTile(),
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        backgroundColor: white,
        body: SafeArea(
          child: mobileTile ?? empty,
        ),
      ),
    );
  }
}


  // appbarBottomTile: AnimatedCardView(
      //   height: 50,
      //   radius: 50,
      //   padding: CustomPadding.padding15,
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       const Icon(
      //         Icons.keyboard_arrow_left,
      //         size: 20,
      //       ),
      //       // GetBuilder<HomeController>(
      //       //     id: 'date',
      //       //     builder: (controller) {
      //       //       return TextTile(
      //       //         text: DateFormat('dd MMMM yyyy')
      //       //             .format(controller.selectedDate),
      //       //         color: Theme.of(context).primaryColorDark,
      //       //       );
      //       //     }),
      //       const Icon(
      //         Icons.keyboard_arrow_right,
      //         size: 20,
      //       )
      //     ],
      //   ),
      // ),
    