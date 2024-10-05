// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/home_screen_logout.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/home/screens/reddit/reddit_slides.dart';
import 'package:zeetionary/quiz/quiz_screen_three/quiz_screen_three.dart';
import 'package:zeetionary/quiz/quiz_screen_two.dart';
import 'package:zeetionary/home/screens/bookmarks/bookmarks_screen.dart';
import 'package:zeetionary/home/screens/history_screens/history_screen.dart';
import 'package:zeetionary/home/screens/irregular_verbs/irregular_verbs.dart';
import 'package:zeetionary/home/screens/reddit/reddit_pages.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_three.dart';
import 'package:zeetionary/home/screens/reddit/reddit_linguistics.dart';
import 'package:zeetionary/home/screens/reddit/reddit_discussion.dart';
import 'package:zeetionary/home/screens/reddit/reddit_etymology.dart';
import 'package:zeetionary/home/screens/text_to_speech/tts.dart';
import 'package:zeetionary/home/screens/online_dics/online_dics.dart';
import 'package:zeetionary/dictionary/sentences/sentences_page.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/home/screens/home_screen_three.dart';

//
//

import 'package:zeetionary/router/router_keys_english_one.dart';
import 'package:zeetionary/router/router_keys_english_two.dart';
import 'package:zeetionary/router/router_keys_history_english_one.dart';
import 'package:zeetionary/router/router_keys_bookmarks_english_one.dart';
import 'package:zeetionary/router/router_keys_grammar.dart';

//
//

MaterialPage _blP(Widget child) => MaterialPage(child: child);

// "/tts-screen": (_) => const MaterialPage(child: TTSPage()),

// final loggedOutRoute = RouteMap(routes: {
//   "/": (_) => _blP(const HomeScreenThreeLogout()),

//   '/english-subreddit': (_) => _blP(const RedditFeed()),
//   "/english-exploratory": (_) => _blP(const EnglishEntryexploratory()),
// });

final loggedOutRoute = RouteMap(routes: allRoutesLogout);

final Map<String, PageBuilder> allRoutesLogout = {
  ...getRoutesMainLogout(),
  ...getRoutesMainTwo(),
  ...getRoutesEnglishOne(),
  ...getRoutesEnglishTwo(),
  ...getRoutesEnglishHistoryOne(),
  ...getRoutesEnglishBookmarksOne(),
  ...getRoutesConversations(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
};

Map<String, PageBuilder> getRoutesMainLogout() {
  return {
    "/": (_) => _blP(const HomeScreenThreeLogout()),
  };
}

// final loggedInRoute = RouteMap(routes: routes);

final loggedInRoute = RouteMap(routes: allRoutes);

final Map<String, PageBuilder> allRoutes = {
  ...getRoutesMain(),
  ...getRoutesMainTwo(),
  ...getRoutesEnglishOne(),
  ...getRoutesEnglishTwo(),
  ...getRoutesEnglishHistoryOne(),
  ...getRoutesEnglishBookmarksOne(),
  ...getRoutesConversations(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
};

Map<String, PageBuilder> getRoutesMain() {
  return {
    "/": (_) => _blP(const HomeScreenThree()),
  };
}

Map<String, PageBuilder> getRoutesMainTwo() {
  return {
    // "/": (_) => _blP(const HomeScreenThree()),
    //
    //
    //
    '/english-subreddit-slider': (_) => _blP(const RedditSlide()),
    '/english-subreddit': (_) => _blP(const RedditFeed()),
    '/english-subreddit/reddit-grammar': (_) => _blP(const RedditGrammar()),
    '/english-subreddit/reddit-grammar-two': (_) =>
        _blP(const RedditGrammarTwo()),
    '/english-subreddit/reddit-vocabulary': (_) =>
        _blP(const RedditVocabulary()),
    '/english-subreddit/reddit-vocabulary-two': (_) =>
        _blP(const RedditVocabularyTwo()),
    '/english-subreddit/reddit-etymology': (_) => _blP(const RedditEtymology()),
    '/english-subreddit/reddit-vocabulary-three': (_) =>
        _blP(const RedditVocabularyThree()),
    '/english-subreddit/reddit-linguistics': (_) =>
        _blP(const RedditLinguistics()),
    '/english-subreddit/reddit-discussion': (_) =>
        _blP(const RedditDiscussion()),
    //
    //
    //
    '/english-subreddit-slider/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-grammar/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-grammar-two/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-vocabulary/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-vocabulary-two/post/:id': (route) =>
        MaterialPage(
            child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-vocabulary-three/post/:id': (route) =>
        MaterialPage(
            child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-etymology/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-linguistics/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    '/english-subreddit/reddit-discussion/post/:id': (route) => MaterialPage(
        child: RedditComments(postId: route.pathParameters['id']!)),
    //
    "/history-screen": (_) => _blP(const HistoryScreen()),
    //
    "/bookmarks-screen": (_) => _blP(const BookmarksScreen()),
    //
    "/tts-screen": (_) => _blP(const TTSPage()),
    //
    // "/english-online-dics": (_) => _blP(const DictionarySearch()),
    "/english-online-dics": (_) => _blP(const DictionarySearchScreen()),
    //
    "/grammar-screen": (_) => _blP(const GrammarScreen()),
    //
    "/english-sentences-page": (_) => _blP(const SentencesPage()),
    //
    "/settings-screen": (_) => _blP(const SettingsPage()),
    //
    '/quiz-screen': (_) => _blP(QuizScreen()),
    //
    '/quiz-screen-two': (_) => _blP(QuizScreenJsonJsonHome()),
    //
    '/quiz-screen-two/quiz-screen': (_) => _blP(QuizScreenJson()),
    //
    '/irregular-verbs-screen': (_) => _blP(const IrregularVerbsScreen()),
    //
// '/quiz-screen': (_) => _blP(const QuizScreen(currentTheme: ThemeData.light())),
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
  };
}
