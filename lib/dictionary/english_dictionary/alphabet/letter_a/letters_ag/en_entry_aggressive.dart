// end aggressive
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggressive extends StatefulWidget {
  const EnglishEntryaggressive({super.key});

  @override
  State<EnglishEntryaggressive> createState() => _EnglishEntryaggressiveState();
}

class _EnglishEntryaggressiveState extends State<EnglishEntryaggressive> {
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
- Adjective: aggressive
1. Having or showing determination and energetic pursuit of your ends
"an aggressive businessman"; "an aggressive basketball player"; "he was aggressive and imperious; positive in his convictions"; "aggressive drivers"
 
2. Tending to spread quickly (= fast-growing, strong-growing)
"an aggressive tumour";
 
3. Characteristic of an enemy or one eager to fight (= belligerent, chippy [N. Amer, informal])
"aggressive acts against another country";
""",
  );
// 188888880002200

  final String keyword = "aggressive";
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
    await flutterTts.speak("""aggressive""");
  }

  Future<void> speakaggressive51114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He became increasingly aggressive as the evening wore on.");
  }

  Future<void> speakaggre2256(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We need to get more aggressive in fighting terrorism.");
  }

  Future<void> speakaggr45999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Doctors diagnosed her with a rare and aggressive cancer, which was feared to be incurable.");
  }

  Future<void> speakaggr5222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Nicholas was diagnosed with the rare disease in November and has undergone aggressive treatments since then.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'AUjugyDyYnA';
    const double startSecondsend = 3;
    const String videoIdone = 'RpQvj9YCo5g';
    const double startSecondsone = 777;
    const String videoIdtwo = 'R6PXdaCnxyA';
    const double startSecondstwo = 8;
    const String videoIdthree = 'vZRLA7Ivh7Q';
    const double startSecondsthree = 1;
    const String videoIdfour = 'Kba8PZwzS0Y';
    const double startSecondsfour = 711;
    const String videoIdfive = 'idLbCs67oV4';
    const double startSecondsfive = 21;
    // final String _videoId = 'hfFtzuilryM';
    // final double _startSeconds = 1027;
    // final String _videoId = 'FkD2HBXScAU';
    // final double _startSeconds = 13;

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
                      word: """aggressive""",
                      // alsoEnglishWord: "also: aggressive",
                      britshText: """IpaUK: /əˈɡresɪv/""",
                      americanText: """IpaUS: /əˈɡresɪv/""",
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
کوردی: دەس‌درێژکەر، زێدەگاڤ، دڕ، دەساوێژ، شەڕان‌خوو، بەیاخ‌دار (بەتایبەت ژن)، دوژمن‌کارانە، پەلاماردەرانە، بۆھاتووانە، ھێرش‌کارانە، ھەڵشاخێنەرانە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) تووڕە و شەڕەنگێز" ""),
                    SentencesRow(
                      englishText:
                          "He became increasingly aggressive as the evening wore on.",
                      kurdishText:
                          "کە شەوەکە زیاتر تێپەڕی زیاتر شەڕەنخواز بوو.",
                      onPressedBritish: () => speakaggressive51114("en-GB"),
                      onPressedAmerican: () => speakaggressive51114("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) سەرسەخت لەسەر سەرکەوتن"""),
                    SentencesRow(
                      englishText:
                          "We need to get more aggressive in fighting terrorism.",
                      kurdishText: "پێویستە سەرسەختتر بین لە شەڕی دژ بە تیرۆر.",
                      onPressedBritish: () => speakaggre2256("en-GB"),
                      onPressedAmerican: () => speakaggre2256("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) نەخۆشییەک کە بەخێرایی پەرەدەسێنێت و چارەسەری سەختە"""),
                    SentencesRow(
                      englishText:
                          "Doctors diagnosed her with a rare and aggressive cancer, which was feared to be incurable.",
                      kurdishText:
                          "دکتۆرەکان نەخۆشییەکەیان دەستنیشانکرد بە جۆرێکی سەختی شێرپەنجە کە ترس ھەیە چارەسەری نەبێت.",
                      onPressedBritish: () => speakaggr45999("en-GB"),
                      onPressedAmerican: () => speakaggr45999("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) چارەسەرێکی نەخۆشی کە ئامانج لێی ئەوەیە زۆرترین ماوە بەردەوامی بە کەسێک بدات"""),
                    SentencesRow(
                      englishText:
                          "Nicholas was diagnosed with the rare disease in November and has undergone aggressive treatments since then.",
                      kurdishText:
                          "نەخۆشییەکەی نیکۆلاس لە تشرینی دووەم بە یەکێکی دەگمەن دەستنیشانکرا و لەو کاتەوە ھەموو چارەسەرێکی وەرگرتووە.",
                      onPressedBritish: () => speakaggr5222("en-GB"),
                      onPressedAmerican: () => speakaggr5222("en-US"),
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

