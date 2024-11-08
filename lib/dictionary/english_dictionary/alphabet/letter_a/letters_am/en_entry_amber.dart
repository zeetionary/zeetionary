import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamber extends StatefulWidget {
  const EnglishEntryamber({super.key});

  @override
  State<EnglishEntryamber> createState() => _EnglishEntryamberState();
}

class _EnglishEntryamberState extends State<EnglishEntryamber> {
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
- Adjective: amber (derived forms: ambers)
1. Of a medium to dark brownish yellow colour (= brownish-yellow, yellow-brown)

- Noun: amber (= brownish-yellow, yellow-brown)
1. A deep yellow colour (= gold)
"an amber light illuminated the room";
 
2. A hard yellowish to brownish translucent fossil resin; used for jewellery
""",
  );
// 188888880002200

  final String keyword = "amber";
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
    await flutterTts.speak("""amber""");
  }

  Future<void> speakamber4447(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her amber eyes shone in the dark.");
  }

  Future<void> speakamber46922(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He has a collection of prehistoric insects preserved in amber.");
  }

  Future<void> speakamber4699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The traffic lights were on amber.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 's3B-qp3U5G0';
    const double startSecondsend = 720;
    const String videoIdone = 'SEZu7K5tGxw';
    const double startSecondsone = 366;
    const String videoIdtwo = 'CupbRr2m_sM';
    const double startSecondstwo = 207;
    const String videoIdthree = '6MoBvV12C58';
    const double startSecondsthree = 135;
    const String videoIdfour = 'Kunqw1FWrJM';
    const double startSecondsfour = 671;
    const String videoIdfive = 'Ukjat70Iyt4';
    const double startSecondsfive = 70;
    // final String _videoId = 'oS830cxjVFk';
    // final double _startSeconds = 441;
    // final String _videoId = 'npeCDLsyJwE';
    // final double _startSeconds = 364;

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
                      word: """amber""",
                      // alsoEnglishWord: "also: amber",
                      britshText: """IpaUK: /ˈæmbə(r)/""",
                      americanText: """IpaUS: /ˈæmbər/""",
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
١. (ھاوەڵناو) عەمبەری؛ ڕەنگی زەرد و قاوەیی تێکەڵ"""),
                    SentencesRow(
                      englishText: "Her amber eyes shone in the dark.",
                      kurdishText:
                          "چاوە عەمبەرییەکانی لە تاریکییەکەدا دەدرەوشانەوە.",
                      onPressedBritish: () => speakamber4447("en-GB"),
                      onPressedAmerican: () => speakamber4447("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) عەمبەر؛ مادەیەکی زەرد و قاوەییە کە لە کۆندا لە دارەوە درووست دەبوو و بەکاردەھات بۆ خشڵ و مادەی جوان"""),
                    SentencesRow(
                      englishText:
                          "He has a collection of prehistoric insects preserved in amber.",
                      kurdishText:
                          "ژمارەیەک لە مێرووی پێش مێژووی ھەیە کە لە عەمبەردا پاراستوونی.",
                      onPressedBritish: () => speakamber46922("en-GB"),
                      onPressedAmerican: () => speakamber46922("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) عەمبەر؛ ڕەنگی زەردی قاوەیی باو"""),
                    SentencesRow(
                      englishText: "The traffic lights were on amber.",
                      kurdishText: "ترافیک لایتەکان لەسەر گڵۆپە زەردەکە بوون.",
                      onPressedBritish: () => speakamber4699("en-GB"),
                      onPressedAmerican: () => speakamber4699("en-US"),
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

