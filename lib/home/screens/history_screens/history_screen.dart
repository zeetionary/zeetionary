import 'package:flutter/material.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/history_screens/ckb_history_screen.dart';
import 'package:zeetionary/home/screens/history_screens/en_history_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: ZeetionaryAppbar(),
        body: Padding(
          padding:
              EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              // TabBar(
              //   isScrollable: true,
              //   tabs: const [
              CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
              //     ],
              //   indicator: BoxDecoration(
              //     color: Pallete.tabsbackgroundColor,
              //     borderRadius: BorderRadius.circular(16.0),
              //   ),
              //   indicatorSize: TabBarIndicatorSize.tab,
              //   indicatorPadding: const EdgeInsets.all(4.0),
              // ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    EnglishHistoryScreen(),
                    KurdishHistoryScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
