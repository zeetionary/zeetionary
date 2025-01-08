import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappliance extends StatefulWidget {
  const EnglishEntryappliance({super.key});

  @override
  State<EnglishEntryappliance> createState() => _EnglishEntryapplianceState();
}

class _EnglishEntryapplianceState extends State<EnglishEntryappliance> {
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
- Noun: appliance (derived forms: appliances)
1. A device or control that is very useful for a particular job (= contraption, contrivance, convenience, gadget, gizmo [informal], gismo [informal], widget)
 
2. Durable goods for home or office use
""",
  );
// 188888880002200

  final String keyword = "appliance";
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
    await flutterTts.speak("""appliance""");
  }

  Future<void> speakappliance623(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Always switch off appliances that are not in use.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'B4Jlofn3qZI';
    const double startSecondsend = 11;
    const String videoIdone = 'fjCinn-sjzk';
    const double startSecondsone = 236;
    const String videoIdtwo = 'qWAagS_MANg';
    const double startSecondstwo = 735;
    const String videoIdthree = 'WLYHu0AG8GI';
    const double startSecondsthree = 81;
    const String videoIdfour = 'fM9hYzJnao0';
    const double startSecondsfour = 1;
    const String videoIdfive = 'Y-SnB10ihD4';
    const double startSecondsfive = 497;
    // final String _videoId = 'c324y0OVqVI';
    // final double _startSeconds = 25;
    // final String _videoId = 'o8F2ZKZ5XsQ';
    // final double _startSeconds = 16;
    // final String _videoId = 'n6dj3J1uxW8';
    // final double _startSeconds = 752;
    // final String _videoId = '5-OxB22rLHI';
    // final double _startSeconds = 160;

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
                      word: """appliance""",
                      // alsoEnglishWord: "also: appliance",
                      britshText: """IpaUK: /əˈplaɪəns/""",
                      americanText: """IpaUS: /əˈplaɪəns/""",
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
کوردی: دەزگا، ئامێر، کەرەسە، ئامراز، کەل‌وپەل، ھەجەت، بەکارھێنان، پیادەکردن، خستنەکار، کاربەندی، ئۆتۆمبێلی ئاگرکوژاندنەوە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئامێرێکی ماڵەوە کە دیزاین کراوە بۆ کردنی کارێک، بۆ نموونە ئامادەکردنی خۆراک، گەرمکردنەوە، یان پاککردنەوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "Always switch off appliances that are not in use.",
                      kurdishText:
                          "ھەمیشە ئەو ئامێرانە بکوژێنەوە کە لە کاردا نین.",
                      onPressedBritish: () => speakappliance623("en-GB"),
                      onPressedAmerican: () => speakappliance623("en-US"),
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
