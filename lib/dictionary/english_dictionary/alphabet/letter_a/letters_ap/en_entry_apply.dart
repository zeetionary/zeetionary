import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapply extends StatefulWidget {
  const EnglishEntryapply({super.key});

  @override
  State<EnglishEntryapply> createState() => _EnglishEntryapplyState();
}

class _EnglishEntryapplyState extends State<EnglishEntryapply> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: apply (derived forms: applying, applied, applies)
1. Put into service; make work for a particular purpose or use as designed (= use, utilize, utilise [Brit], employ)
"Apply a magnetic field here"; "This thinking was applied to many projects"; "I apply this rule to get good results";
 
2. Be pertinent, relevant or applicable (= hold, go for)
"The same laws apply to you!";
 
3. Ask (for something)
"He applied for a leave of absence"; "She applied for college"; "apply for a job"
 
4. Coat, cover or smear a surface with (= put on)
"She applied paint to the back of the house";
 
5. Be applicable to; as to an analysis (= lend oneself)
 
6. Give or convey physically (= give)
"She applied him First Aid";
 
7. Make use of; obey or follow (= practice [N. Amer], use, practise [Brit, Cdn])
"apply a principle";
 
8. Ensure observance of laws and rules (= enforce, implement)
"Apply the rules to everyone";
 
9. Refer (a word or name) to a person or thing
"He applied this racial slur to me!"
 
10. Apply oneself to
"Please apply yourself to your homework"
""",
  );
// 188888880002200

  final String keyword = "apply";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""apply""");
  }

  Future<void> speakapply736(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have decided to apply for this new job.");
  }

  Future<void> speakapply738(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They may apply to the court for the decision to be reversed.");
  }

  Future<void> speakapply741(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What I am saying applies only to some of you.");
  }

  Future<void> speakapply744(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The new technology was applied to farming.");
  }

  Future<void> speakapply747(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Now is the time to apply the insights you have gained from your studies.");
  }

  Future<void> speakapply749(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The glue should be applied to both surfaces.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'lVoGZiL-kns';
    const double startSecondsend = 280;
    const String videoIdone = '_spuxXnul0U';
    const double startSecondsone = 693;
    const String videoIdtwo = 'pFEB0chiuJA';
    const double startSecondstwo = 463;
    const String videoIdthree = 'kHrjgWoy8qY';
    const double startSecondsthree = 282;
    const String videoIdfour = 'AAGIi62-sAU';
    const double startSecondsfour = 1973;
    const String videoIdfive = '7j5ul4XBjAI';
    const double startSecondsfive = 431;
    // final String _videoId = 'CXvG2CBJ3SE';
    // final double _startSeconds = 492;
    // final String _videoId = '65CFesU4KVQ';
    // final double _startSeconds = 613;
    // final String _videoId = 'XKqWnOtbSr8';
    // final double _startSeconds = 417;
    // final String _videoId = 'q9RMyg80KfU';
    // final double _startSeconds = 265;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """apply""",
                      // alsoEnglishWord: "also: apply",
                      britshText: """IpaUK: /əˈplaɪ/""",
                      americanText: """IpaUS: /əˈplaɪ/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EnglishButtonTTS(
                      onBritishPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onAmericanPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onStopPressed: stopSpeaking,
                    ),
                    englishMeaningConst,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const DefinitionKurdish(text: """
١. (کردار) پێشکەشکردنی داواکارییەک، زۆرجار بە نووسین، بۆ کارێک، قەرزێک، مۆڵەتی کردنی شتێک، یان جێگایەک لە زانکۆ"""),
                    SentencesRow(
                      englishText: "I have decided to apply for this new job.",
                      kurdishText:
                          "بڕیارم داوە داخوازینامە بۆ ئەم کارە تازە پێشکەش بکەم.",
                      onPressedBritish: () => speakapply736("en-GB"),
                      onPressedAmerican: () => speakapply736("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "They may apply to the court for the decision to be reversed.",
                      kurdishText:
                          "لەوانەیە داوا پێشکەشی دادگا بکەن بۆ ھەڵوەشاندنەوەی بڕیارەکە.",
                      onPressedBritish: () => speakapply738("en-GB"),
                      onPressedAmerican: () => speakapply738("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) جێبەجێبوونی شتێک، یان پەیوەندیداربوونی بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "What I am saying applies only to some of you.",
                      kurdishText:
                          "ئەوەی دەیڵێم تەنھا بەسەر ھەندێکتان دەچەسپێ.",
                      onPressedBritish: () => speakapply741("en-GB"),
                      onPressedAmerican: () => speakapply741("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) جێبەجێبوونی شتێک، یان پەیوەندیداربوونی بە شتێک"""),
                    SentencesRow(
                      englishText: "The new technology was applied to farming.",
                      kurdishText:
                          "تەکنەلۆژیا تازەکە بەکارھێندرا لە کشتوکاڵدا.",
                      onPressedBritish: () => speakapply744("en-GB"),
                      onPressedAmerican: () => speakapply744("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Now is the time to apply the insights you have gained from your studies.",
                      kurdishText:
                          "ئێستا کاتی بەکارھێنانی ئەو توانایانەیە کە لە خوێندن فێریان بوویت.",
                      onPressedBritish: () => speakapply747("en-GB"),
                      onPressedAmerican: () => speakapply747("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) دانانی بۆیە یان کرێم لەسەر ڕوویەک"""),
                    SentencesRow(
                      englishText:
                          "The glue should be applied to both surfaces.",
                      kurdishText: "چەسپەکە دەبێت لە ھەردوو ڕووەکە بدرێت.",
                      onPressedBritish: () => speakapply749("en-GB"),
                      onPressedAmerican: () => speakapply749("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
