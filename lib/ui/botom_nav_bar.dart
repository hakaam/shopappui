import 'package:eshop_center/controllers/main_screen_notifier.dart';
import 'package:eshop_center/shared/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class BottttomNavBar extends StatelessWidget {
  const BottttomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (context,mainScreenNotifier,child){
      return  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex =0;
                  },

                  icon:mainScreenNotifier.pageIndex ==0
                      ? Icons.home
                      : Icons.home_outlined,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex=1;
                  },
                  icon:mainScreenNotifier.pageIndex ==1
                      ? Icons.search
                      : Icons.search_outlined,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex=2;
                  },
                  icon:mainScreenNotifier.pageIndex ==2
                      ? Icons.add
                      : Icons.add_outlined,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex=3;
                  },
                  icon:mainScreenNotifier.pageIndex ==3
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined,
                ),
                BotomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex=4;
                  },
                  icon:mainScreenNotifier.pageIndex ==4
                      ? Icons.person
                      : Icons.person_2_outlined,
                ),
              ],
            ),
          ),
        ),
      );

    });
  }
}
