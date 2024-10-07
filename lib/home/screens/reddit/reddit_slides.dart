import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/reddit/reddit_discussion.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_pages.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_three.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_two.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class RedditSlide extends ConsumerWidget {
  const RedditSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              Directionality(
                textDirection: textDirection,
                child: SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: false,
                  automaticallyImplyLeading: false,
                  title: const ZeetionaryAppbar(),
                  bottom: TabBar(
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    // labelStyle: TextStyle(color: Colors.black),
                    indicatorColor:
                        Theme.of(context).primaryColor.withOpacity(0.2),
                    isScrollable: true,
                    tabs: [
                      Tab(
                          text: isKurdish
                              ? "فێربوونی ئینگلیزی"
                              : 'English Learning'),
                      Tab(text: isKurdish ? "گفتووگۆ" : 'Discussion'),
                      Tab(text: isKurdish ? "ڕێزمانی ئاسان" : 'EFL Grammar'),
                      Tab(text: isKurdish ? "ڕێزمانی باڵا" : 'Native Grammar'),
                      Tab(text: isKurdish ? "وشەوواتا" : 'Vocabulary'),
                      Tab(
                          text: isKurdish
                              ? "وشەوواتای باڵا"
                              : 'Advanced Vocabulary'),
                      // Tab(text: 'three'),
                      // Tab(text: 'three'),
                      // Tab(text: 'three'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              RedditFeed(),
              RedditDiscussion(),
              RedditGrammar(),
              RedditGrammarTwo(),
              RedditVocabularyTwo(),
              RedditVocabularyThree(),
              // GrammarRedditSlide(),
              // GrammarRedditSlide(),
              // GrammarRedditSlide(),
              // GrammarRedditSlide(),
              // GrammarRedditSlide(),
            ],
          ),
        ),
      ),
    );
  }
}
