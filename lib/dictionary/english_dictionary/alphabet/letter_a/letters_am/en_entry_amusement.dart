import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamusement extends StatefulWidget {
  const EnglishEntryamusement({super.key});

  @override
  State<EnglishEntryamusement> createState() => _EnglishEntryamusementState();
}

class _EnglishEntryamusementState extends State<EnglishEntryamusement> {
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
- Noun: amusement (derived forms: amusements)
1. A feeling of delight at being entertained
 
2. An activity that is diverting and that holds the attention (= entertainment)
""",
  );
// 188888880002200

  final String keyword = "amusement";
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
    await flutterTts.speak("""amusement""");
  }

  Future<void> speakamusement440963(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She could not hide her amusement at the way he was dancing.");
  }

  Future<void> speakamusement4418(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In the past, people had very few amusements to choose from. There was no radio, or television.");
  }

  Future<void> speakamusement5903(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What do you do for amusement in this town?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'j3Xf1x5GmiQ';
    const double startSecondsend = 1;
    const String videoIdone = 'CupbRr2m_sM';
    const double startSecondsone = 693;
    const String videoIdtwo = 'CupbRr2m_sM"';
    const double startSecondstwo = 693;
    const String videoIdthree = '2IP7gM924U0';
    const double startSecondsthree = 218;
    const String videoIdfour = 'US9kiir_NqE';
    const double startSecondsfour = 23;
    const String videoIdfive = 'TEFqEr7HGX4';
    const double startSecondsfive = 445;
    // final String _videoId = 'okeeKqcmQkw';
    // final double _startSeconds = 672;
    // final String _videoId = 'p6OVtsH6Feg';
    // final double _startSeconds = 576;
    // final String _videoId = 'Rufeg7WMS5M';
    // final double _startSeconds = 1283;
    // final String _videoId = 'B7m-byNkoHc';
    // final double _startSeconds = 326;
    // final String _videoId = 'j0iOuOMh_JE';
    // final double _startSeconds = 26;
    // final String _videoId = 'bmTbdmQL9PI';
    // final double _startSeconds = 258;

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
                      word: """amusement""",
                      // alsoEnglishWord: "also: amusement",
                      britshText: """IpaUK: /əˈmjuːzmənt/""",
                      americanText: """IpaUS: /əˈmjuːzmənt/""",
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
کوردی: پێکەنین، بزە، شادی، گەشی، خۆشی، خۆشحاڵی، بەکەیفی، سەرقاڵی، ڕابواردن، مژوولاھی، کەرەسەی سەرقاڵی یان ڕابواردن، ھۆی سەرگەرمی
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) کەیف و خۆشحاڵی"""),
                    SentencesRow(
                      englishText:
                          "She could not hide her amusement at the way he was dancing.",
                      kurdishText:
                          "نەیدەتوانی خۆشحاڵیی خۆی بشارێتەوە بە شێوازی سەماکردنی.",
                      onPressedBritish: () => speakamusement440963("en-GB"),
                      onPressedAmerican: () => speakamusement440963("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) یارییەک یان چالاکییەک کە کەیفت پێی دێت"""),
                    SentencesRow(
                      englishText:
                          "In the past, people had very few amusements to choose from. There was no radio, or television.",
                      kurdishText:
                          "جاران خەڵکی کەم کەرەستەی سەرگەرمییان ھەبوو ھەڵیبژێرن. ھیچ ڕادیۆ و تەلەفیزیۆن نەبوو.",
                      onPressedBritish: () => speakamusement4418("en-GB"),
                      onPressedAmerican: () => speakamusement4418("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) سەرقاڵبوون و ڕابواردن"""),
                    SentencesRow(
                      englishText: "What do you do for amusement in this town?",
                      kurdishText: "لەم شارەدا چی دەکەن بۆ ڕابواردن؟",
                      onPressedBritish: () => speakamusement5903("en-GB"),
                      onPressedAmerican: () => speakamusement5903("en-US"),
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

// end WORD_WEB


