import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalways extends StatefulWidget {
  const EnglishEntryalways({super.key});

  @override
  State<EnglishEntryalways> createState() => _EnglishEntryalwaysState();
}

class _EnglishEntryalwaysState extends State<EnglishEntryalways> {
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
- Adverb: always 
1. At all times; all the time and on every occasion (= ever, e'er)
"I will always be there to help you"; "always arrives on time"; "there is always some pollution in the air";
 
2. Without variation or change, in every case (= constantly, invariably)
"he always arrives on time";
 
3. Invariably (= constantly, forever, perpetually, incessantly, unremittingly)
"the world is always changing";
 
4. At any time or in any event
"you can always resign if you don't like it"; "you could always take a day off"
 
5. Forever; throughout all time
"we will always be friends"; "I shall treasure it always"; "I will always love you"
""",
  );
// 188888880002200

  final String keyword = "always";
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
    await flutterTts.speak("""always""");
  }

  Future<void> speakalways5699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Always lock your car.");
  }

  Future<void> speakalways48999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The children always seem to be hungry.");
  }

  Future<void> speakalways4631(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is the way we've always done it.");
  }

  Future<void> speakalways3477(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll always love you.");
  }

  Future<void> speakalways47111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That phone's always ringing.");
  }

  Future<void> speakahead99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was always well ahead of the rest of the class.");
  }

  Future<void> speakalways48666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("If he can't help, there's always John.");
  }

  Future<void> speakadv966(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The best jobs are not always advertised in newspapers.");
  }

  Future<void> speakacc568424(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her poetry is always very accessible.");
  }

  Future<void> speakaf699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He's always interfering in other people's affairs.");
  }

  Future<void> speakacto6852(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I don't know if he really meant the things he said—he was always a good actor.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'dJOz8SYbN28';
    const double startSecondsend = 27;
    const String videoIdone = 'SrDEtSlqJC4';
    const double startSecondsone = 43;
    const String videoIdtwo = 'Ttd5xik44DE';
    const double startSecondstwo = 1;
    const String videoIdthree = '_fnhy5xO9vQ';
    const double startSecondsthree = 342;
    const String videoIdfour = 'j4kI2h3iotA';
    const double startSecondsfour = 111;
    const String videoIdfive = 'zMlO9B3q3Aw';
    const double startSecondsfive = 6;
    // final String _videoId = 'mrg1Ogi9ep0';
    // final double _startSeconds = 1;
    // final String _videoId = 'QWvUaKgQojE';
    // final double _startSeconds = 84;
    // final String _videoId = 'Nqr5wBXydkQ';
    // final double _startSeconds = 57;
    // final String _videoId = 'wAI1NRQeR14';
    // final double _startSeconds = 16;
    // final String _videoId = '6xSgeC4u7Io';
    // final double _startSeconds = 246;
    // final String _videoId = 'bdNgEbLij5M';
    // final double _startSeconds = 38;

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
                      word: """always""",
                      // alsoEnglishWord: "also: always",
                      britshText: """IpaUK: /ˈɔːlweɪz/""",
                      americanText: """IpaUS: /ˈɔːlweɪz/""",
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
                    const KurdishVocabulary(text: """
کوردی: ھەمیشە، ھەمووکاتێ، بە بەردەوامی، بێ‌وچان، دایمەودەرەم (یان دەرھەم)، بێ‌پسانەوە، بۆ ماوەیەکی درێژ، بۆ ھەمیشە، تاسەر، ھەتاھەتا
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵکار) ھەمیشە؛ ھەمووکات" ""),
                    SentencesRow(
                      englishText: "Always lock your car.",
                      kurdishText: "ھەمیشە ئۆتۆمبێلەکەت دابخە.",
                      onPressedBritish: () => speakalways5699("en-GB"),
                      onPressedAmerican: () => speakalways5699("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The children always seem to be hungry.",
                      kurdishText: "منداڵەکان ھەمیشە برسی دەردەکەون.",
                      onPressedBritish: () => speakalways48999("en-GB"),
                      onPressedAmerican: () => speakalways48999("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بۆ ماوەیەکی دوور و درێژ؛ لەوەتەی لەبیرت دێت"""),
                    SentencesRow(
                      englishText: "This is the way we've always done it.",
                      kurdishText: "ئەمە ئەو ڕێگایە کە ھەمیشە بەکارمان ھێناوە.",
                      onPressedBritish: () => speakalways4631("en-GB"),
                      onPressedAmerican: () => speakalways4631("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بۆ ھەمیشە لە داھاتوودا"""),
                    SentencesRow(
                      englishText: "I'll always love you.",
                      kurdishText: "ھەمیشە خۆشمدەوێیت.",
                      onPressedBritish: () => speakalways3477("en-GB"),
                      onPressedAmerican: () => speakalways3477("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) ھێندە زۆر کە بێزارکەرە"""),
                    SentencesRow(
                      englishText: "That phone's always ringing.",
                      kurdishText: "ئەو موبایلە ھەمیشە زەنگ لێدەدات.",
                      onPressedBritish: () => speakalways47111("en-GB"),
                      onPressedAmerican: () => speakalways47111("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بۆ پێشنیارکردنی شتێک"""),
                    SentencesRow(
                      englishText: "If he can't help, there's always John.",
                      kurdishText: "ئەگەر بۆی ناکرێت، جۆن ھەردەم ئامادەیە.",
                      onPressedBritish: () => speakalways48666("en-GB"),
                      onPressedAmerican: () => speakalways48666("en-US"),
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

// end WORD_WEB

