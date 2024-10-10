// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // Add this import for Clipboard
import 'package:zeetionary/dictionary/sentences/sentences_page.dart';
import 'package:zeetionary/dictionary/sentences/kurdish_sentences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'package:zeetionary/constants/english_entries/constants_english_entries.dart';
import 'package:zeetionary/constants/constants_others.dart';


// database below
// database below
// database below
// database below
// database below
// database below
// database below
//
//
//
//
//
//
//
//
//
//

class DatabaseUtils {
  static final DatabaseUtils instance = DatabaseUtils._init();

  DatabaseUtils._init();

  Future<List<Map<String, dynamic>>> fetchFilteredSentences(
      {required String keyword}) async {
    final database = SentenceDatabase.instance;
    await database.initialize();
    final allSentences = database.sentences;

    return allSentences.where((sentence) {
      final english = sentence['english'].toString().toLowerCase();
      final french = sentence['french'].toString().toLowerCase();
      final keywords = sentence['keywords'].toString().toLowerCase();
      return english.contains(keyword) ||
          french.contains(keyword) ||
          keywords.contains(keyword);
    }).toList();
  }

  RichText highlightText(
      String text, String keyword, WidgetRef ref, BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    List<TextSpan> spans = [];
    int start = 0;
    int index = text.toLowerCase().indexOf(keyword);

    while (index != -1) {
      if (index > start) {
        spans.add(TextSpan(
            style: TextStyle(
              fontSize: textSize + 1,
              color: Theme.of(context).primaryColor,
              // color: Theme.of(context).highlightColor,
            ),
            text: text.substring(start, index)));
      }
      spans.add(TextSpan(
        text: text.substring(index, index + keyword.length),
        style: TextStyle(
          // backgroundColor: Theme.of(context).highlightColor,
          fontWeight: FontWeight.bold,
          fontSize: textSize + 1,
        ),
      ));
      start = index + keyword.length;
      index = text.toLowerCase().indexOf(keyword, start);
    }
    if (start < text.length) {
      spans.add(
        TextSpan(
          style: TextStyle(
            fontSize: textSize + 1,
            color: Theme.of(context).primaryColor,
          ),
          text: text.substring(start),
        ),
      );
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: textSize + 1,
          // color: Theme.of(context).primaryColor,
          color: Theme.of(context).highlightColor,
        ),
        children: spans,
      ),
    );
  }
}

class NoSentencesFromDatabase extends StatelessWidget {
  const NoSentencesFromDatabase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptyPageIcon(
            text: '',
          ),
          Text('No results found from database'),
        ],
      ),
    );
  }
}

// Define your custom widget
class CustomSentenceWidget extends ConsumerWidget {
  final String englishText;
  final String frenchText;
  final String keyword;
  final void Function() onPressedBritish;
  final void Function() onPressedAmerican;
  final bool showDivider;

  const CustomSentenceWidget({
    required this.englishText,
    required this.frenchText,
    required this.keyword,
    required this.onPressedBritish,
    required this.onPressedAmerican,
    required this.showDivider,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final textSize = ref.watch(textSizeProvider) + 20;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: DatabaseUtils.instance.highlightText(
                          englishText,
                          keyword,
                          ref,
                          context,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: DatabaseUtils.instance.highlightText(
                            frenchText,
                            keyword,
                            ref,
                            context,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomSizedBoxForTTS(),
                Column(
                  children: [
                    CustomIconButtonBritish(onPressed: onPressedBritish),
                    CustomIconButtonAmerican(onPressed: onPressedAmerican),
                  ],
                ),
              ],
            ),
            if (showDivider) const DividerSentences(),
          ],
        ),
      ),
    );
  }
}

// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence

class KurdishDatabaseUtils {
  static final KurdishDatabaseUtils instance = KurdishDatabaseUtils._init();

  KurdishDatabaseUtils._init();

  Future<List<Map<String, dynamic>>> fetchfilteredKurdishSentences(
      {required String keyword}) async {
    final database = KurdishSentenceDatabase.instance;
    await database.initialize();
    final allKurdishSentences = database.sentences;

    return allKurdishSentences.where((sentence) {
      final kurdish = sentence['sentence'].toString().toLowerCase();
      final keywords = sentence['keywords'].toString().toLowerCase();
      return kurdish.contains(keyword) || keywords.contains(keyword);
    }).toList();
  }

  RichText highlightText(
      String text, String keyword, WidgetRef ref, BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    List<TextSpan> spans = [];
    int start = 0;
    int index = text.toLowerCase().indexOf(keyword);

    while (index != -1) {
      if (index > start) {
        spans.add(TextSpan(
            style: TextStyle(
              fontSize: textSize + 1,
              color: Theme.of(context).primaryColor,
              // color: Theme.of(context).highlightColor,
            ),
            text: text.substring(start, index)));
      }
      spans.add(TextSpan(
        text: text.substring(index, index + keyword.length),
        style: TextStyle(
          // backgroundColor: Theme.of(context).highlightColor,
          fontWeight: FontWeight.bold,
          fontSize: textSize + 1,
        ),
      ));
      start = index + keyword.length;
      index = text.toLowerCase().indexOf(keyword, start);
    }
    if (start < text.length) {
      spans.add(
        TextSpan(
          style: TextStyle(
            fontSize: textSize + 1,
            color: Theme.of(context).primaryColor,
          ),
          text: text.substring(start),
        ),
      );
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: textSize + 1,
          // color: Theme.of(context).primaryColor,
          color: Theme.of(context).highlightColor,
        ),
        children: spans,
      ),
    );
  }
}

class NoSentencesFromKurdishDatabase extends StatelessWidget {
  const NoSentencesFromKurdishDatabase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptyPageIcon(
              text: '',
            ),
            Text('ھیچ ڕستەیەک لە داتابەیس نەدۆزرایەوە'),
          ],
        ),
      ),
    );
  }
}

// Define your custom widget
class KurdishCustomSentenceWidget extends ConsumerWidget {
  final String kurdishText;
  final String keyword;
  final bool showDivider;

  const KurdishCustomSentenceWidget({
    required this.kurdishText,
    required this.keyword,
    required this.showDivider,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final textSize = ref.watch(textSizeProvider) + 20;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: KurdishDatabaseUtils.instance.highlightText(
                            kurdishText,
                            keyword,
                            ref,
                            context,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (showDivider) const DividerSentences(),
          ],
        ),
      ),
    );
  }
}

// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence
// Kurdish sentence