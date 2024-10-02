import 'package:flutter/material.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/reddit/reddit_discussion.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_pages.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_three.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_two.dart';

class RedditSlide extends StatelessWidget {
  const RedditSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                automaticallyImplyLeading: false,
                title: const ZeetionaryAppbar(),
                bottom: TabBar(
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  // labelStyle: TextStyle(color: Colors.black),
                  indicatorColor:
                      Theme.of(context).primaryColor.withOpacity(0.2),
                  isScrollable: true,
                  tabs: const [
                    Tab(text: 'English Learning'),
                    Tab(text: 'Discussion'),
                    Tab(text: 'EFL Grammar'),
                    Tab(text: 'Native Grammar'),
                    Tab(text: 'Vocabulary'),
                    Tab(text: 'Advanced Vocabulary'),
                    // Tab(text: 'three'),
                    // Tab(text: 'three'),
                    // Tab(text: 'three'),
                  ],
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
