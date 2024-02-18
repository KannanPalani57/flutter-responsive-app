import 'package:flutter/material.dart';
import 'package:responsive_architecture_flutter/ui/home/home_view_mobile.dart';
import 'package:responsive_architecture_flutter/ui/home/home_view_tablet.dart';
import 'package:responsive_architecture_flutter/ui/orientation_layout.dart';
import 'package:responsive_architecture_flutter/ui/responsive_builder.dart';
import 'package:responsive_architecture_flutter/ui/screen_type_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeTablet(),
    );
  }
}
