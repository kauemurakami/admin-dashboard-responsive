import 'package:admin_dashboard/features/main/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        // 1/6 part of the screen
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('assets/images/logo.png'),
              ),
              DrawerListTile(
                title: 'Dashboard',
                svgSrc: "assets/icons/menu_dashboard.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Transaction',
                svgSrc: "assets/icons/menu_tran.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Task',
                svgSrc: "assets/icons/menu_task.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Documents',
                svgSrc: "assets/icons/menu_doc.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Store',
                svgSrc: "assets/icons/menu_store.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Notification',
                svgSrc: "assets/icons/menu_notification.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Profile',
                svgSrc: "assets/icons/menu_profile.svg",
                press: () {},
              ),
              DrawerListTile(
                title: 'Settings',
                svgSrc: "assets/icons/menu_setting.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
