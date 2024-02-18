import 'package:flutter/material.dart';
import 'package:responsive_architecture_flutter/ui/orientation_layout.dart';
import 'package:responsive_architecture_flutter/ui/screen_type_builder.dart';
import 'package:responsive_architecture_flutter/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_architecture_flutter/widgets/app_drawer/app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AppDrawerMobileLayout(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: const AppDrawerTabletLandscape(),
      ),
    );
  }
}
