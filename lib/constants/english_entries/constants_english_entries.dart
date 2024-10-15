import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Add this import for Clipboard
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/questions/question_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:feedback_gitlab/feedback_gitlab.dart';
import 'package:zeetionary/constants/constants_others.dart';

class EntryPageColumn extends StatelessWidget {
  final String word;
  final String? alsoEnglishWord;
  final String britshText;
  final String americanText;
  final VoidCallback onPressedBritish;
  final VoidCallback onPressedAmerican;

  const EntryPageColumn({
    super.key,
    required this.word,
    this.alsoEnglishWord,
    required this.britshText,
    required this.americanText,
    required this.onPressedBritish,
    required this.onPressedAmerican,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                EntryTitle(word: word),
              ],
            ),
            if (alsoEnglishWord != null) AlsoEnglish(word: alsoEnglishWord!),
            Row(
              children: [
                CustomIconButtonBritish(
                  onPressed: onPressedBritish,
                ),
                IPAofEnglish(text: britshText),
              ],
            ),
            Row(
              children: [
                CustomIconButtonAmerican(
                  onPressed: onPressedAmerican,
                ),
                IPAofEnglish(text: americanText),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// // decoration and animation https://chat.openai.com/c/34cd41ff-6232-4eb7-9c26-e00b688e867b

class CustomSliverAppBar extends StatelessWidget {
  final double expandedHeight;
  final Widget flexibleSpace;
  final PreferredSizeWidget bottom;

  const CustomSliverAppBar({
    super.key,
    required this.flexibleSpace,
    required this.bottom,
    this.expandedHeight = 260.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: false,
      title: const ZeetionaryAppbar(),
      expandedHeight: expandedHeight,
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      foregroundColor: Theme.of(context).scaffoldBackgroundColor,
      shadowColor: Theme.of(context).scaffoldBackgroundColor,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
    );
  }
}

class EntryTitle extends ConsumerStatefulWidget {
  final String word;

  const EntryTitle({super.key, required this.word});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EntryTitleState();

  // (zee; show title in left) https://chat.openai.com/c/e67ec761-23dc-43fa-a63f-058c027af846
}

class _EntryTitleState extends ConsumerState<EntryTitle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 100), // Adjust the duration as needed
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);

    // Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        // child: Container(
        child: ConstantContainer(
          margin: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final int lettersCount =
                    (_controller.value * widget.word.length).round();
                return Text(
                  widget.word.substring(0, lettersCount),
                  style: TextStyle(
                    fontSize: textSize + 8,
                    // fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.w700,
                    // color: Theme.of(context).primaryColor.withOpacity(0.9),
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class AlsoEnglish extends ConsumerWidget {
  final String word;

  // const AlsoEnglish({Key? key, required this.text}) : super(key: key);
  const AlsoEnglish({super.key, required this.word});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2; // Get text size and add 3
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      // padding: const EdgeInsets.all(8.0), // Add padding here
      child: Text(
        word,
        style: TextStyle(
          fontSize: textSize,
          // color: Colors.yellow.withOpacity(0.7),
          color: Theme.of(context).highlightColor,
        ),
      ),
    );
  }
}

class AlsoEnglishckb extends ConsumerWidget {
  final String word;

  // const AlsoEnglish({Key? key, required this.text}) : super(key: key);
  const AlsoEnglishckb({super.key, required this.word});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2; // Get text size and add 3
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
      // padding: const EdgeInsets.all(8.0), // Add padding here
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          word,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: textSize,
            // color: Colors.yellow.withOpacity(0.7),
            color: Theme.of(context).highlightColor,
          ),
        ),
      ),
    );
  }
}

class AlsoEnglishckblink extends ConsumerWidget {
  final String textBeforeLink;
  final String linkText;
  final String textAfterLink;
  final VoidCallback onTap;

  const AlsoEnglishckblink({
    super.key,
    required this.textBeforeLink,
    required this.linkText,
    required this.textAfterLink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Align(
        alignment: Alignment.topRight,
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: textSize,
              color: Theme.of(context).highlightColor,
            ),
            children: [
              TextSpan(text: textBeforeLink),
              TextSpan(
                text: linkText,
                style: const TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()..onTap = onTap,
              ),
              TextSpan(text: textAfterLink),
            ],
          ),
        ),
      ),
    );
  }
}

class IPAofEnglish extends ConsumerWidget {
  final String text;

  const IPAofEnglish({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return Container(
      // height: 16,
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        // Wrap Text with GestureDetector
        onLongPress: () {
          Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).canvasColor,
              // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              showCloseIcon: true,
              closeIconColor: Theme.of(context).primaryColor,
              content: Align(
                alignment: alignment,
                child: Directionality(
                  textDirection: textDirection,
                  child: Text(
                    isKurdish ? 'ئای‌پی‌ئەی لەبەرگیرایەوە' : 'IPA copied',
                    style: TextStyle(
                        fontSize: textSize + 1,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        child: Text(
          text,
          style: TextStyle(fontSize: textSize + 2, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class CustomColumnWidget extends StatelessWidget {
  final List<Widget> children;

  const CustomColumnWidget({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: children,
    );
  }
}

class KurdishVocabulary extends ConsumerWidget {
  final String text;

  const KurdishVocabulary({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Column(
        children: [
          VocabularyExpansionTile(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 1,
                  right: 12,
                ),
                child: GestureDetector(
                  // Wrap Text with GestureDetector
                  onLongPress: () {
                    Clipboard.setData(ClipboardData(text: text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Theme.of(context).canvasColor,
                        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        showCloseIcon: true,
                        closeIconColor: Theme.of(context).primaryColor,
                        content: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            isKurdish
                                ? 'وشەوواتا لەبەرگیرایەوە'
                                : 'Vocabulary copied',
                            style: TextStyle(
                                fontSize: textSize + 1,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: textSize + 2, // change size back to + 2
                          // fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class VocabularyExpansionTile extends ConsumerStatefulWidget {
  static const String defaultTitle = 'وشەوواتا'; // Shared title
  final List<Widget> children;

  const VocabularyExpansionTile({
    super.key,
    required this.children,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VocabularyExpansionTileState();
}

class _VocabularyExpansionTileState
    extends ConsumerState<VocabularyExpansionTile>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: textSize + 1,
                    color: Theme.of(context).primaryColor.withOpacity(0.7),
                    // color: Theme.of(context).highlightColor.withOpacity(0.9),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    VocabularyExpansionTile.defaultTitle,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: textSize + 1,
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                      // color: Theme.of(context).highlightColor.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_isExpanded)
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: widget.children,
          ),
      ],
    );
  }
}

class SentencesRow extends StatelessWidget {
  // https://chatgpt.com/c/c373d7a5-1fd2-4995-9296-123092fb9966

  final String englishText;
  final String kurdishText;
  final String? englishNote;
  final String? kurdishNote;
  final VoidCallback onPressedBritish;
  final VoidCallback onPressedAmerican;

  const SentencesRow({
    super.key,
    required this.englishText,
    required this.kurdishText,
    this.englishNote,
    this.kurdishNote,
    required this.onPressedBritish,
    required this.onPressedAmerican,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              ExampleSentenceEnglish(
                text: englishText,
                note: englishNote,
              ),
              ExampleSentenceKurdish(
                text: kurdishText,
                note: kurdishNote,
              ),
            ],
          ),
        ),
        const CustomSizedBoxForTTS(),
        Column(
          children: [
            CustomIconButtonBritish(
              onPressed: onPressedBritish,
            ),
            CustomIconButtonAmerican(
              onPressed: onPressedAmerican,
            ),
          ],
        ),
      ],
    );
  }
}

class DefinitionKurdish extends ConsumerStatefulWidget {
  final String text;
  final String? note;
  // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007

  const DefinitionKurdish({super.key, required this.text, this.note});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DefinitionKurdishState();
}

class _DefinitionKurdishState extends ConsumerState<DefinitionKurdish>
    with SingleTickerProviderStateMixin {
  bool _showNote = false;

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // Ensure Row takes minimum width
            children: [
              if (widget.note != null && widget.note!.isNotEmpty)
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: textSize + 1,
                  onPressed: () {
                    setState(() {
                      _showNote = !_showNote;
                    });
                  },
                  icon: Icon(_showNote ? Icons.expand_less : Icons.note_alt),
                ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    // Wrap Text with GestureDetector
                    onLongPress: () {
                      Clipboard.setData(ClipboardData(text: widget.text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context).canvasColor,
                          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          showCloseIcon: true,
                          closeIconColor: Theme.of(context).primaryColor,
                          content: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              isKurdish
                                  ? 'پێناسەی کوردی لەبەرگیرایەوە'
                                  : 'Kurdish meaning copied',
                              style: TextStyle(
                                  fontSize: textSize + 1,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: textSize + 2,
                        fontWeight: FontWeight.w500,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_showNote && widget.note != null && widget.note!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ConstantContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        '${widget.note}',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: textSize + 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class LinkInfo {
  final int start;
  final int end;
  final TextStyle style;

  LinkInfo({required this.start, required this.end, required this.style});
}

class DefinitionKurdishLink extends ConsumerWidget {
  final String text;
  final List<LinkInfo> links;
  final VoidCallback? onTap;

  const DefinitionKurdishLink({
    super.key,
    required this.text,
    required this.links,
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    List<TextSpan> textSpans = [];
    int currentIndex = 0;

    for (var link in links) {
      if (link.start > currentIndex) {
        textSpans.add(
          TextSpan(
            text: text.substring(currentIndex, link.start),
            style: TextStyle(
              fontSize: textSize + 2,
            ),
          ),
        );
      }

      textSpans.add(
        TextSpan(
          text: text.substring(link.start, link.end),
          style: link.style.copyWith(
            decoration: TextDecoration.underline,
            fontSize: textSize + 2,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = onTap != null
                ? () {
                    onTap!();
                  }
                : null,
        ),
      );

      currentIndex = link.end;
    }

    if (currentIndex < text.length) {
      textSpans.add(
        TextSpan(
          text: text.substring(currentIndex),
          style: TextStyle(
            fontSize: textSize + 2,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SelectableText.rich(
          TextSpan(
            children: textSpans,
            style: TextStyle(
              fontSize: textSize + 2,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomRichText extends ConsumerWidget {
  final String textBeforeLink;
  final String linkText;
  final String textAfterLink;
  final VoidCallback onTap;

  const CustomRichText({
    super.key,
    required this.textBeforeLink,
    required this.linkText,
    required this.textAfterLink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Align(
          alignment: Alignment.topRight,
          child: RichText(
            text: TextSpan(
              // style: TextStyle(
              //   fontSize: textSize + 2,
              //   color: Theme.of(context).primaryColor,
              //   fontWeight: FontWeight.w500,
              // ),
              children: [
                TextSpan(
                  text: textBeforeLink,
                  style: TextStyle(
                    fontSize: textSize + 2,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: linkText,
                  style: TextStyle(
                    fontSize: textSize + 2,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onTap,
                ),
                TextSpan(
                  text: textAfterLink,
                  style: TextStyle(
                    fontSize: textSize + 2,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExampleSentenceEnglish extends ConsumerStatefulWidget {
  final String text;
  final String? note;
  // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007

  const ExampleSentenceEnglish({super.key, required this.text, this.note});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExampleSentenceEnglishState();
}

class _ExampleSentenceEnglishState extends ConsumerState<ExampleSentenceEnglish>
    with SingleTickerProviderStateMixin {
  bool _showNote = false;

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // Ensure Row takes minimum width
            children: [
              Expanded(
                child: GestureDetector(
                  // Wrap Text with GestureDetector
                  onLongPress: () {
                    Clipboard.setData(ClipboardData(text: widget.text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Theme.of(context).canvasColor,
                        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        showCloseIcon: true,
                        closeIconColor: Theme.of(context).primaryColor,
                        content: Align(
                          alignment: alignment,
                          child: Directionality(
                            textDirection: textDirection,
                            child: Text(
                              isKurdish
                                  ? 'ڕستەی ئینگلیزی لەبەرگیرایەوە'
                                  : 'English sentence copied',
                              style: TextStyle(
                                  fontSize: textSize + 1,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: textSize + 1,
                      fontWeight: FontWeight.w400,
                    ),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              if (widget.note != null && widget.note!.isNotEmpty)
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: textSize + 1,
                  onPressed: () {
                    setState(() {
                      _showNote = !_showNote;
                    });
                  },
                  icon: Icon(_showNote ? Icons.expand_less : Icons.note_alt),
                ),
            ],
          ),
          if (_showNote && widget.note != null && widget.note!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ConstantContainer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${widget.note}',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: textSize + 1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ExampleSentenceKurdish extends ConsumerStatefulWidget {
  final String text;
  final String? note;
  // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007

  const ExampleSentenceKurdish({super.key, required this.text, this.note});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExampleSentenceKurdishState();
}

class _ExampleSentenceKurdishState extends ConsumerState<ExampleSentenceKurdish>
    with SingleTickerProviderStateMixin {
  bool _showNote = false;

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // Ensure Row takes minimum width
            children: [
              if (widget.note != null && widget.note!.isNotEmpty)
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: textSize +
                      1, // Optional: Adjust size for flush appearance
                  onPressed: () {
                    setState(() {
                      _showNote = !_showNote;
                    });
                  },
                  icon: Icon(_showNote ? Icons.expand_less : Icons.note_alt),
                ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    // Wrap Text with GestureDetector
                    onLongPress: () {
                      Clipboard.setData(ClipboardData(text: widget.text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context).canvasColor,
                          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          showCloseIcon: true,
                          closeIconColor: Theme.of(context).primaryColor,
                          content: Align(
                            alignment: alignment,
                            child: Directionality(
                              textDirection: textDirection,
                              child: Text(
                                isKurdish
                                    ? 'ڕستەی کوردی لەبەرگیرایەوە'
                                    : 'Kurdish sentence copied',
                                style: TextStyle(
                                    fontSize: textSize + 1,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: textSize + 1,
                        fontWeight: FontWeight.w400,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_showNote && widget.note != null && widget.note!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ConstantContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        '${widget.note}',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: textSize + 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CustomIconButtonBritish extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonBritish({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return IconButton(
      // iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: Icon(
          Icons.record_voice_over,
          color: Colors.blue,
          size: textSize - 6,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class CustomIconButtonAmerican extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonAmerican({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return IconButton(
      // iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: const Color.fromARGB(182, 255, 0, 0), width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: Icon(
          Icons.record_voice_over,
          color: const Color.fromARGB(182, 255, 0, 0),
          size: textSize - 6, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class EnglishMeaningConst extends ConsumerWidget {
  final String text;

  const EnglishMeaningConst({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 10.0, bottom: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: text));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Theme.of(context).canvasColor,
                    // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    showCloseIcon: true,
                    closeIconColor: Theme.of(context).primaryColor,
                    content: Align(
                      alignment: alignment,
                      child: Directionality(
                        textDirection: textDirection,
                        child: Text(
                          isKurdish
                              ? 'پێناسەی ئینگلیزی لەبەرگیرایەوە'
                              : 'English meaning copied',
                          style: TextStyle(
                              fontSize: textSize + 1,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text(
                text,
                style: TextStyle(
                    fontSize: textSize + 2, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSizedBoxForTTS extends StatelessWidget {
  const CustomSizedBoxForTTS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 0.2,
    );
  }
}

class EnglishButtonTTS extends ConsumerStatefulWidget {
  final Function(String) onBritishPressed;
  final Function(String) onAmericanPressed;
  final VoidCallback onStopPressed;

  const EnglishButtonTTS({
    required this.onBritishPressed,
    required this.onAmericanPressed,
    required this.onStopPressed,
    super.key,
  });

  @override
  // _EnglishButtonTTSState createState() => _EnglishButtonTTSState();
  // State<EnglishButtonTTS> createState() => _EnglishButtonTTSState();
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnglishButtonTTSState();
}

// class _EnglishButtonTTSState extends State<EnglishButtonTTS> {
class _EnglishButtonTTSState extends ConsumerState<EnglishButtonTTS>
    with SingleTickerProviderStateMixin {
  bool isSpeaking = false;

  // (zee; added tts to meaning text; text comes twice) https://chat.openai.com/c/dff0d3b0-86d4-4ed0-93af-e8272bccfaa5
  // (zee; tts reads meaning; text comes once) https://chat.openai.com/c/c68e6ebf-f914-4eb6-bfc5-afdc77cc6b72

  @override
  Widget build(BuildContext context) {
    // Theme.of(context).primaryColor.withOpacity(0.009),
    final textSize = ref.watch(textSizeProvider);
    return IntrinsicWidth(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 18.0, bottom: 18.0),
        child: ConstantContainer(
          height: textSize + 28,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomIconButtonBritish(
                onPressed: () {
                  widget.onBritishPressed("en-GB");
                  updateSpeakingState(true);
                },
              ),
              CustomIconButtonAmerican(
                onPressed: () {
                  widget.onAmericanPressed("en-US");
                  updateSpeakingState(true);
                },
              ),
              // Conditional rendering of pause button
              if (isSpeaking)
                IconButton(
                  icon: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.0),
                      ),
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(Icons.pause, size: textSize - 6)),
                  onPressed: () {
                    widget.onStopPressed();
                    updateSpeakingState(false);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to update the speaking state
  void updateSpeakingState(bool speaking) {
    setState(() {
      isSpeaking = speaking;
    });
  }
}

class DividerDefinition extends ConsumerWidget {
  const DividerDefinition({
    super.key,
  });

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    // final textSize = ref.watch(textSizeProvider);
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: Divider(
          thickness: 1,
          color: Theme.of(context).dividerColor.withOpacity(0.7),
        ),
      ),
    );
  }
}

class DividerSentences extends ConsumerWidget {
  const DividerSentences({
    super.key,
  });

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    // final textSize = ref.watch(textSizeProvider);
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: Divider(
          thickness: 1,
          color: Theme.of(context).dividerColor.withOpacity(0.15),
        ),
      ),
    );
  }
}

// // if container is used https://chat.openai.com/c/ab8b1f04-cfed-4baa-b8d4-0dbe07a84aa1
class MyExpansionTile extends ConsumerStatefulWidget {
  static const String defaultTitle = 'ڕستەی زیاتر'; // Shared title
  final List<Widget> children;

  const MyExpansionTile({
    super.key,
    required this.children,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyExpansionTileState();
}

class _MyExpansionTileState extends ConsumerState<MyExpansionTile>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);
    return ConstantContainer(
      // height: 45, // adds black and yellow lines
      margin: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // _isExpanded
                  //     ? Icon(
                  //         Icons.arrow_drop_up,
                  //         color: Colors.blue,
                  //       )
                  //     : Icon(Icons.arrow_drop_down),
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: textSize + 1,
                  ),
                  Row(
                    children: [
                      Text(
                        MyExpansionTile.defaultTitle,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: textSize + 1, // Adjust the font size
                          // fontWeight: FontWeight.bold, // Adjust the font weight
                          // color: currentTheme
                          //     .primaryColor, // Adjust the text color
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.book,
                        // color: Colors.blue.withOpacity(0.9),
                        // color: Theme.of(context).primaryColor.withOpacity(0.3),
                        size: textSize + 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: widget.children,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
