import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamphibious extends StatefulWidget {
  const EnglishEntryamphibious({super.key});

  @override
  State<EnglishEntryamphibious> createState() => _EnglishEntryamphibiousState();
}

class _EnglishEntryamphibiousState extends State<EnglishEntryamphibious> {
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
- Adjective: amphibious  
1. Relating to or characteristic of animals of the class Amphibia (= amphibian)
 
2. Operating or living on land and in water
"amphibious vehicles"; "amphibious operations"; "amphibious troops"; "frogs are amphibious animals"
""",
  );
// 188888880002200

  final String keyword = "amphibious";
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
    await flutterTts.speak("""amphibious""");
  }

  Future<void> speakamphibious3344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Most species of frogs are amphibious.");
  }

  Future<void> speakamphibious496002(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A third brigade is at sea, ready for an amphibious assault.");
  }

  Future<void> speakamphibious44952(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I saw an amphibious plane at the lake yesterday.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3lM9jJR4dPo';
    const double startSecondsend = 1;
    const String videoIdone = '8ekMrwNur9Y';
    const double startSecondsone = 133;
    const String videoIdtwo = 'dWtmCKZAFhQ';
    const double startSecondstwo = 6;
    const String videoIdthree = 'jUejvrbRJmk';
    const double startSecondsthree = 19;
    const String videoIdfour = 'KPICvVm5QOA';
    const double startSecondsfour = 29;
    const String videoIdfive = 's6Xy4INpS_w';
    const double startSecondsfive = 1;
    // final String _videoId = 'YPvq1YbpKbM';
    // final double _startSeconds = 1;
    // final String _videoId = 'BmUrJaOo1Lw';
    // final double _startSeconds = 271;
    // final String _videoId = 'xYKL9MRXVrw';
    // final double _startSeconds = 890;
    // final String _videoId = '-Rrmqju74A8';
    // final double _startSeconds = 574;
    // final String _videoId = '1TgoPjQ3K14';
    // final double _startSeconds = 526;
    // final String _videoId = 'pJ41WRSrrOo';
    // final double _startSeconds = 297;

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
                      word: """amphibious""",
                      // alsoEnglishWord: "also: amphibious",
                      britshText: """IpaUK: /æmˈfɪbiəs/""",
                      americanText: """IpaUS: /æmˈfɪbiəs/""",
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
کوردی: دووژینە، وشکاوەکی، وشکاوی، (کرداری لەشکری) زەمینی-دەریایی، وشکانی-ئاوی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) گیانەوەرێک کە توانای ھەیە لە وشکانی و ئاودا بژێ"
                            ""),
                    SentencesRow(
                      englishText: "Most species of frogs are amphibious.",
                      kurdishText: "زۆرینەی بۆقەکان دووژینەن.",
                      onPressedBritish: () => speakamphibious3344("en-GB"),
                      onPressedAmerican: () => speakamphibious3344("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ئۆپەراسیۆنێکی سەربازی کە سەربازان لە دەریاوە دێنەسەر وشکانی"""),
                    SentencesRow(
                      englishText:
                          "A third brigade is at sea, ready for an amphibious assault.",
                      kurdishText:
                          "سێیەم لیوا لە دەریان و ئامادەی ھێرشی ئاوین.",
                      onPressedBritish: () => speakamphibious496002("en-GB"),
                      onPressedAmerican: () => speakamphibious496002("en-US"),
                    ),
                    const DividerDefinition(),
                    // const DividerSentences(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ئۆتۆمبێلێک یان فڕۆکەیەک کە توانای ھەبێت لەسەر ئاو و وشکانیش کاربکات"""),
                    SentencesRow(
                      englishText:
                          "I saw an amphibious plane at the lake yesterday.",
                      kurdishText:
                          "دوێنێ فڕۆکەیەکی جووتفڕم بینی لە دەریاچەکەدا.",
                      onPressedBritish: () => speakamphibious44952("en-GB"),
                      onPressedAmerican: () => speakamphibious44952("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DividerSentences(),
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

