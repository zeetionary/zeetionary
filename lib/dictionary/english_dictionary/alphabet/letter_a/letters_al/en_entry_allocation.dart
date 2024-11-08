import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallocation extends StatefulWidget {
  const EnglishEntryallocation({super.key});

  @override
  State<EnglishEntryallocation> createState() => _EnglishEntryallocationState();
}

class _EnglishEntryallocationState extends State<EnglishEntryallocation> {
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
- Noun: allocation (derived forms: allocations)
1. A share set aside for a specific purpose (allotment)
 
2. The act of distributing by allotting or apportioning; distribution according to a plan (= allotment, apportionment, apportioning, parceling [US], parcelling, assignation)
"the allocation of seats in the House of Representatives is based on the relative population of each state";
 
3. (computing) the assignment of particular areas of a magnetic disk to particular data or instructions (= storage allocation)
""",
  );
// 188888880002200

  final String keyword = "allocation";
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
    await flutterTts.speak("""allocation""");
  }

  Future<void> speakallocation1362(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We have spent our entire allocation for the year.");
  }

  Future<void> speakallocation342(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The charity is trying to get its allocation increased for next year.");
  }

  Future<void> speakallocation359(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The allocation of space in this office is unusual.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'eVNnaNmEsVI';
    const double startSecondsend = 62;
    const String videoIdone = 'nmMUUuXhk2A';
    const double startSecondsone = 49;
    const String videoIdtwo = 'mo4QBrV8pRM';
    const double startSecondstwo = 47;
    const String videoIdthree = 'z4loh3LGObU';
    const double startSecondsthree = 261;
    const String videoIdfour = 'ul1cGarS23M';
    const double startSecondsfour = 10;
    const String videoIdfive = 'd5e_YJGXXFU';
    const double startSecondsfive = 124;
    // final String _videoId = 'Unzc731iCUY';
    // final double _startSeconds = 2327;
    // final String _videoId = 'ba-HMvDn_vU';
    // final double _startSeconds = 49;

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
                      word: """allocation""",
                      // alsoEnglishWord: "also: allocation",
                      britshText: """IpaUK: /ˌæləˈkeɪʃn/""",
                      americanText: """IpaUS: /ˌæləˈkeɪʃn/""",
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
کوردی: دابەش‌کردن، دابەشاندن، بەشینەوە، تەرخان‌دان، بۆبڕینەوە، تایبەتی‌دان، دیاری‌کردن، دەست‌نیشان‌کردن، بەش، پشک، تەرخانە، گوژمە، بودجە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بڕێک لە شتێک، زۆرجار پارە، کە تەرخان دەکرێت بۆ مەبەستێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "We have spent our entire allocation for the year.",
                      kurdishText: "تەواوی گوژمەی ئەم ساڵەمان خەرجکردووە.",
                      onPressedBritish: () => speakallocation1362("en-GB"),
                      onPressedAmerican: () => speakallocation1362("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The charity is trying to get its allocation increased for next year.",
                      kurdishText:
                          "ڕێکخراوە خێرخوازییەکە ھەوڵ دەدات بودجەکەی بۆ ساڵی داھاتوو زیاد بکات.",
                      onPressedBritish: () => speakallocation342("en-GB"),
                      onPressedAmerican: () => speakallocation342("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کرداری پێدانی بڕێک لە شتێک، زۆرجار پارە، بۆ مەبەستێک"""),
                    SentencesRow(
                      englishText:
                          "The allocation of space in this office is unusual.",
                      kurdishText: "پێدانی شوێن لەم ئۆفیسەدا نامۆیە.",
                      onPressedBritish: () => speakallocation359("en-GB"),
                      onPressedAmerican: () => speakallocation359("en-US"),
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

