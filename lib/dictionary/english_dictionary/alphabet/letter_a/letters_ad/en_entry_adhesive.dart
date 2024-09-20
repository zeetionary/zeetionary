import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadhesive extends StatefulWidget {
  const EnglishEntryadhesive({super.key});

  @override
  State<EnglishEntryadhesive> createState() => _EnglishEntryadhesiveState();
}

class _EnglishEntryadhesiveState extends State<EnglishEntryadhesive> {
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
- Noun: adhesive (derived forms: adhesives)
1. A substance that unites or bonds surfaces together (= adhesive material, adhesive agent)

- Adjective: adhesive 
1. Tending to adhere
""",
  );
// 188888880002200

  final String keyword = "adhesive";
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
    await flutterTts.speak("""adhesive""");
  }

  Future<void> speakadhesive471(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The adhesive takes at least an hour to set.");
  }

  Future<void> speakadhesive6355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The labels are easy to apply and very adhesive.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '9do-yk2OCoM';
    const double startSecondsend = 1;
    const String videoIdone = 'cLNmQNv8-cs';
    const double startSecondsone = 4;
    const String videoIdtwo = 'eA0rEO7-Zo8';
    const double startSecondstwo = 19;
    const String videoIdthree = 'AuSmcYTR2zo';
    const double startSecondsthree = 28;
    const String videoIdfour = 'FopN3GRaL2U';
    const double startSecondsfour = 31;

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
                      word: """adhesive""",
                      // alsoEnglishWord: "also: adhesive",
                      britshText: """IpaUK: /ədˈhiːsɪv/, /ədˈhiːzɪv/""",
                      americanText: """IpaUS: /ədˈhiːsɪv/, /ədˈhiːzɪv/""",
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
کوردی: پێوەنووساو، چەسپۆک، زووپێوەنووساو، مەتریاڵی پێوەنووساو، مادەی چەسپیو یان لیچق، لەزگە، چەسپ
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) مادەیەک کە دەلکێت بە شتەوە" ""),
                    SentencesRow(
                      englishText:
                          "The adhesive takes at least an hour to set.",
                      kurdishText:
                          "لەزگەکە نزیکەی یەک کاتژمێری دەوێت تاوەکو شوێنی خۆی بگرێت.",
                      onPressedBritish: () => speakadhesive471("en-GB"),
                      onPressedAmerican: () => speakadhesive471("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی خاسیەتی لکان بە شتەوە"""),
                    SentencesRow(
                      englishText:
                          "The labels are easy to apply and very adhesive.",
                      kurdishText:
                          "نووسراوەکان بە ئاسانی لێدەدرێن و باش دەنووسێن پێوە.",
                      onPressedBritish: () => speakadhesive6355("en-GB"),
                      onPressedAmerican: () => speakadhesive6355("en-US"),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
