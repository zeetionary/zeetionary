import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalbatross extends StatefulWidget {
  const EnglishEntryalbatross({super.key});

  @override
  State<EnglishEntryalbatross> createState() => _EnglishEntryalbatrossState();
}

class _EnglishEntryalbatrossState extends State<EnglishEntryalbatross> {
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
- Noun: albatross (derived forms: albatrosses)
1. (figurative) something that hinders or handicaps (= millstone)
"she was an albatross around his neck";
 
2. Large web-footed birds of the Southern Hemisphere having long narrow wings; noted for powerful gliding flight (= mollymawk)
""",
  );
// 188888880002200

  final String keyword = "albatross";
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
    await flutterTts.speak("""albatross""");
  }

  Future<void> speakalbatross4377(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The albatross can stay airborne at sea for days at a time.");
  }

  Future<void> speakalbatross3622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The national debt is an albatross around the president’s neck.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'NqBz5RqXcu8';
    const double startSecondsend = 1;
    const String videoIdone = 'grRK7nIKCkI';
    const double startSecondsone = 378;
    const String videoIdtwo = '-xGwgMI18yw';
    const double startSecondstwo = 6;
    const String videoIdthree = 'KchdBfAK2aw';
    const double startSecondsthree = 437;
    const String videoIdfour = 'NXlTO0dti3k';
    const double startSecondsfour = 403;
    const String videoIdfive = '-b4kAycprQg';
    const double startSecondsfive = 29;
    // final String _videoId = 'x0bKIP-Djuw';
    // final double _startSeconds = 74;
    // final String _videoId = 'XWBcKVR0rfo';
    // final double _startSeconds = 102;
    // final String _videoId = 'suO_6TUMvKc';
    // final double _startSeconds = 164;
    // final String _videoId = 'Pzsjw-i6PNc';
    // final double _startSeconds = 393;

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
                      word: """albatross""",
                      // alsoEnglishWord: "also: albatross",
                      britshText: """IpaUK: /ˈælbətrɒs/""",
                      americanText: """IpaUS: /ˈælbətrɑːs/""",
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
کوردی: ئالباتراس، ئالباتروس: جۆرێ باڵندەی دەریایی، کێشەنەرەوە، مڵۆزم، مزاحیم، مایەی سەرێشە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) باڵندەیەک کە باڵی درێژی ھەیە و لە زەریای ھێمن و زەریاکانی باشوور دەژی"
                            ""),
                    SentencesRow(
                      englishText:
                          "The albatross can stay airborne at sea for days at a time.",
                      kurdishText:
                          "ئەلباتروس دەتوانێت بۆ چەندین ڕۆژ لەیەک کاتدا لە ئاسماندا بمێنێتەوە.",
                      onPressedBritish: () => speakalbatross4377("en-GB"),
                      onPressedAmerican: () => speakalbatross4377("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) شتێک کە کێشەت بۆ درووست دەکات"""),
                    SentencesRow(
                      englishText:
                          "The national debt is an albatross around the president’s neck.",
                      kurdishText:
                          "قەرزە نیشتیمانییەکان مایەی سەرێشەن بۆ سەرۆک.",
                      onPressedBritish: () => speakalbatross3622("en-GB"),
                      onPressedAmerican: () => speakalbatross3622("en-US"),
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



