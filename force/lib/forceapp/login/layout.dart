import 'package:flutter/material.dart';
import 'package:force/forceapp/login/helpers/local_navigator.dart';
import 'package:force/forceapp/login/helpers/reponsiveness.dart';
import 'package:force/forceapp/login/widgets/large_screen.dart';
import 'package:force/forceapp/login/widgets/side_menu.dart';

import 'widgets/top_nav.dart';


class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar:  topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
      smallScreen: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: localNavigator(),
      )
      ),
    );
  }
}
