import 'package:demo_task/pages/home/user_list_widget.dart';
import 'package:demo_task/utils/constants.dart';
import 'package:demo_task/utils/dimens.dart';
import 'package:demo_task/utils/palettes.dart';
import 'package:demo_task/utils/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabBarController;

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            _tabBarWidget(),
            Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: const [
                  UserListWidget(tabIndex: 0),
                  UserListWidget(tabIndex: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabBarWidget() {
    return ValueListenableBuilder(
      valueListenable: _tabBarController.animation!,
      builder: (context, value, child) {
        var internalBorderRadius = Constants.radius10;

        if (_tabBarController.index == 0) {
          internalBorderRadius = internalBorderRadius.copyWith(
            topRight: const Radius.circular(0),
            bottomRight: const Radius.circular(0),
          );
        } else {
          internalBorderRadius = internalBorderRadius.copyWith(
            topLeft: const Radius.circular(0),
            bottomLeft: const Radius.circular(0),
          );
        }

        return Container(
          margin: EdgeInsets.only(
              left: Dimens.screenWidth * 0.05,
              right: Dimens.screenWidth * 0.05,
              top: Dimens.screenWidth * 0.05),
          decoration: BoxDecoration(
            borderRadius: Constants.radius10,
            border: Border.all(color: Palettes.colorGrey),
          ),
          child: TabBar(
            labelColor: Colors.white,
            indicator: BoxDecoration(
              color: Palettes.colorPrimary,
              borderRadius: internalBorderRadius,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius: internalBorderRadius,
            indicatorPadding: EdgeInsets.zero,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            controller: _tabBarController,
            tabs: [
              Tab(child: _tabTextWidget(Strings.tabOneAge)),
              Tab(child: _tabTextWidget(Strings.tabTwoAge)),
            ],
          ),
        );
      },
    );
  }

  Widget _tabTextWidget(String tabText) {
    return Text(
      tabText,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }
}
