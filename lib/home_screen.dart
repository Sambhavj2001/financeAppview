import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:financeapp/colors.dart';
import 'package:financeapp/pages/daily_screen.dart';
import 'package:financeapp/pages/transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    DailyScreen(),
    TransactionScreen(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: buttonColor,
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      CupertinoIcons.home,
      CupertinoIcons.creditcard,
      CupertinoIcons.money_dollar,
      CupertinoIcons.person,
    ];
    return AnimatedBottomNavigationBar(
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
      backgroundColor: primary,
      icons: iconItems,
      splashColor: seconday,
      inactiveColor: black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      iconSize: 25,
      elevation: 2,
    );
  }
}
