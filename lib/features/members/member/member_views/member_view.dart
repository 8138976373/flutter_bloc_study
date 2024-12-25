import '/components/components/common_button.dart';
import '/components/components/common_form.dart';
import '/components/components/common_scaffold.dart';
import '/components/components/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/const_widget.dart';
import '../../../../routes/app_routes.dart';
import '../../../../services/routing_service.dart';
import '../../../../utils/di/injection.dart';

class MemberView extends StatelessWidget {
  const MemberView({super.key});

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
                  TitleText(title: 'Add Member'),
                ],
              ),
              // VerticalSpace.verticalSpaceH10,
              FormSingle(
                title: 'Name',
                required: true,
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Age',
                required: true,
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Place',
                required: true,
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Gender',
                required: true,
                controller: TextEditingController(),
              ),
              FormSingle(
                title: 'Phno',
                required: true,
                controller: TextEditingController(),
              ),
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
