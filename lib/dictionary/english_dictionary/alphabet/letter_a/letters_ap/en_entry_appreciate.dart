import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappreciate extends StatefulWidget {
  const EnglishEntryappreciate({super.key});

  @override
  State<EnglishEntryappreciate> createState() => _EnglishEntryappreciateState();
}

class _EnglishEntryappreciateState extends State<EnglishEntryappreciate> {
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
- Verb: appreciate (derived forms: appreciated, appreciates, appreciating)
1. Recognize with gratitude; be grateful for
 
2. Be fully aware of; realize fully (= take account)
"Do you appreciate the full meaning of this letter?";
 
3. Hold dear (= prize, value, treasure)
"I appreciate these old photographs";
 
4. Gain in value (= apprize [archaic], apprise, revalue)
"The yen appreciated again!";
 
5. Increase the value of (= apprize [archaic], apprise)
"The Germans want to appreciate the Deutsche Mark";
""",
  );
// 188888880002200

  final String keyword = "appreciate";
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
    await flutterTts.speak("""appreciate""");
  }

  Future<void> speakappreciate749(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Over the years he came to appreciate the beauty and tranquillity of the river.");
  }

  Future<void> speakappreciate750(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her family doesn't appreciate her.");
  }

  Future<void> speakappreciate753(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'd appreciate some help.");
  }

  Future<void> speakappreciate756(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your kindness and generosity is much appreciated.");
  }

  Future<void> speakappreciate759(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "What I failed to appreciate was the distance between the two cities.");
  }

  Future<void> speakappreciate801(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their investments have appreciated over the years.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '544DTGHIBM0';
    const double startSecondsend = 437;
    const String videoIdone = 'njn6krU3tQ8';
    const double startSecondsone = 273;
    const String videoIdtwo = '9sRQQRiltrE';
    const double startSecondstwo = 185;
    const String videoIdthree = 'sRhYoArzBbs';
    const double startSecondsthree = 909;
    const String videoIdfour = 'tXjHb5QmDV0';
    const double startSecondsfour = 559;
    const String videoIdfive = 'jgkMFBDyzE8';
    const double startSecondsfive = 1228;
    // final String _videoId = '9TugA_z5vQE';
    // final double _startSeconds = 669;
    // final String _videoId = 'P8m-KThvtxA';
    // final double _startSeconds = 17;
    // final String _videoId = 'JNMGrbHYUUM';
    // final double _startSeconds = 706;
    // final String _videoId = 'QiKZYt9070U';
    // final double _startSeconds = 294;
    // final String _videoId = 'a_TSR_v07m0';
    // final double _startSeconds = 789;
    // final String _videoId = '0zwNZJbM-Gw';
    // final double _startSeconds = 151;

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
                      word: """appreciate""",
                      // alsoEnglishWord: "also: appreciate",
                      britshText: """IpaUK: /əˈpriːʃieɪt/""",
                      americanText: """IpaUS: /əˈpriːʃieɪt/""",
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
١. (کردار) قەدرزانینی شتێک"""),
                    SentencesRow(
                      englishText:
                          "Over the years he came to appreciate the beauty and tranquillity of the river.",
                      kurdishText:
                          "دوای ساڵانێکی زۆر قەدری جوانی و ئارام‌بەخشیی ڕووبارەکەی زانی.",
                      onPressedBritish: () => speakappreciate749("en-GB"),
                      onPressedAmerican: () => speakappreciate749("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Her family doesn't appreciate her.",
                      kurdishText: "خێزانەکەی قەدری نازانن.",
                      onPressedBritish: () => speakappreciate750("en-GB"),
                      onPressedAmerican: () => speakappreciate750("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) دەربڕینی سوپاسگوزاری بۆ شتێک"""),
                    SentencesRow(
                      englishText: "I'd appreciate some help.",
                      kurdishText: "پێزانینم دەبێ بۆ ھەندێک یارمەتی.",
                      onPressedBritish: () => speakappreciate753("en-GB"),
                      onPressedAmerican: () => speakappreciate753("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Your kindness and generosity is much appreciated.",
                      kurdishText: "بەخشندەیی و دەست‌کراوەییت بەرز دەنرخێنم.",
                      onPressedBritish: () => speakappreciate756("en-GB"),
                      onPressedAmerican: () => speakappreciate756("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) ھەست‌کردن بەوەی شتێک ڕاستە"""),
                    SentencesRow(
                      englishText:
                          "What I failed to appreciate was the distance between the two cities.",
                      kurdishText:
                          "ئەوەی پێم‌نەزانی دووری نێوان دوو شارەکە بوو.",
                      onPressedBritish: () => speakappreciate759("en-GB"),
                      onPressedAmerican: () => speakappreciate759("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) زیادبوونی نرخ لە دوای ماوەیەک"""),
                    SentencesRow(
                      englishText:
                          "Their investments have appreciated over the years.",
                      kurdishText:
                          "ساڵ دوای ساڵ وەبەرھێنانەکانیان نرخی زیادبووە.",
                      onPressedBritish: () => speakappreciate801("en-GB"),
                      onPressedAmerican: () => speakappreciate801("en-US"),
                    ),
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
