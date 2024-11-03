// end air traffic controller
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairtrafficcontroller extends StatefulWidget {
  const EnglishEntryairtrafficcontroller({super.key});

  @override
  State<EnglishEntryairtrafficcontroller> createState() => _EnglishEntryairtrafficcontrollerState();
}

class _EnglishEntryairtrafficcontrollerState extends State<EnglishEntryairtrafficcontroller> {
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
- Noun: air traffic controller
a person who is responsible for remotely monitoring and directing the movements of aircraft as part of a system of air traffic control
""",
  );
// 188888880002200

  final String keyword = "air traffic controller";
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
    await flutterTts.speak("""air traffic controller""");
  }


  Future<void> speakairtrafficcontroller4255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Ron Connolly sometimes had to function on four hours of sleep or less when he worked as an air traffic controller.");
  }

  @override
  Widget build(BuildContext context) {

  const String videoIdend = 'tQ-cDwQupj8';
  const double startSecondsend = 1;
  const String videoIdone = 'V4sGsDvLGgs';
  const double startSecondsone = 0;
  const String videoIdtwo = 'ltOkMlHrGPc';
  const double startSecondstwo = 507;
  const String videoIdthree = '7hGqq35EocY';
  const double startSecondsthree = 134;
  const String videoIdfour = 'TdMGAmFU77Y';
  const double startSecondsfour = 103;
  const String videoIdfive = 'Y5qjj9618zE';
  const double startSecondsfive = 95;
  // const String videoId = 'y8dTHGVY4JQ';
  // const double startSeconds = 45;

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
                      word: """air traffic controller""",
                      // alsoEnglishWord: "also: air traffic controller",
                      britshText: """IpaUK: /ˌeə træfɪk kənˈtrəʊlə(r)/""",
                      americanText: """IpaUS: /ˌer træfɪk kənˈtrəʊlər/""",
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
کوردی: کۆنتڕۆڵ‌وانی فڕین یان نیشتنەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) کەسێک کە بە ڕادیۆ ڕێنمایی دەدات بە فڕۆکەوانان بۆ ئەوەی بزانن لە کوێ بفڕن و بنیشنەوە"""),
                          SentencesRow(
                            englishText:
                                "Ron Connolly sometimes had to function on four hours of sleep or less when he worked as an air traffic controller.",
                            kurdishText:
                                "ڕۆن کۆنۆڵی پێویست بوو چوار کاتژمێر یان کەمتر بخەوێت کاتێک وەک کۆنترۆڵوانی فڕۆکە کاری دەکرد.",
                            onPressedBritish: () =>
                                speakairtrafficcontroller4255("en-GB"),
                            onPressedAmerican: () =>
                                speakairtrafficcontroller4255("en-US"),
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

