import 'package:flutter/material.dart';
import 'package:flutter_hr_management_design/common/app_colors.dart';
import 'package:flutter_hr_management_design/common/app_responsive.dart';
import 'package:flutter_hr_management_design/controllers/menu_controller.dart';
import 'package:flutter_hr_management_design/pages/dashboard/dashboard.dart';
import 'package:flutter_hr_management_design/pages/widget/side_bar_menu.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: SideBar(),
        key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
        backgroundColor: AppColor.bgSideMenu,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (AppResponsive.isDesktop(context))
                Expanded(
                  child: SideBar(),
                ),
              Expanded(
                flex: 4,
                child: Dashboard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
