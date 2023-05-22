import 'package:eshop_center/controllers/main_screen_notifier.dart';
import 'package:eshop_center/shared/bottom_nav_widget.dart';
import 'package:eshop_center/ui/botom_nav_bar.dart';
import 'package:eshop_center/ui/cart_page.dart';
import 'package:eshop_center/ui/home_page.dart';
import 'package:eshop_center/ui/main_screen.dart';
import 'package:eshop_center/ui/profile_page.dart';
import 'package:eshop_center/ui/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {

    return Consumer<MainScreenNotifier>(
        builder: (context,mainScreenNotifier,child){
          return Scaffold(
            backgroundColor: Color(0xFFF2E2E2),

            body: pageList[mainScreenNotifier.pageIndex],
            bottomNavigationBar: const BottttomNavBar(),
          );


        });
  }
}

