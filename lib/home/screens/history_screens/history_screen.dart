import 'package:flutter/material.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/history_screens/ckb_history_screen.dart';
import 'package:zeetionary/home/screens/history_screens/en_history_screen.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: ZeetionaryAppbar(),
        body: Padding(
          padding: EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              CustomTabBarHistory(
                tabs: [
                  UkIconForHistoryTab(),
                  KurdIconForHistoryTab(),
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

class CustomTabBarHistory extends ConsumerWidget {
  final List<Widget> tabs;

  const CustomTabBarHistory({super.key, required this.tabs});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider) + 40;

    return Container(
      height: textSize,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.01),
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.3),
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: TabBar(
        isScrollable: true,
        tabs: tabs,
        indicator: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.45),
              // Colors.red.shade800.withOpacity(0.09),
              // Colors.red.shade800.withOpacity(0.07),
              // Theme.of(context).primaryColor.withOpacity(0.08),
              // Theme.of(context).primaryColor.withOpacity(0.05),
            ],
          ),
          // color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
          border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(0.18),
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(4.0),
      ),
    );
  }
}

class UkIconForHistoryTab extends ConsumerWidget {
  const UkIconForHistoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 12;
    return Tab(
      icon: Image.asset(
        'assets/images/uk_one.png',
        width: 100,
        height: textSize,
      ),
    );
  }
}

class KurdIconForHistoryTab extends ConsumerWidget {
  const KurdIconForHistoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 12;
    return Tab(
      icon: Image.asset(
        'assets/images/kurd_one.png',
        width: 100,
        height: textSize,
      ),
    );
  }
}
