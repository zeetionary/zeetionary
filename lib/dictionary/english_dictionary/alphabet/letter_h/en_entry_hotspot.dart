import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhotspot extends StatefulWidget {
  const EnglishEntryhotspot({super.key});

  @override
  State<EnglishEntryhotspot> createState() => _EnglishEntryhotspotState();
}

class _EnglishEntryhotspotState extends State<EnglishEntryhotspot> {
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
- Noun: hotspot (Derived forms: hot spots, hotspots)
1. A place of political unrest and potential violence (- hot spot, trouble spot, flashpoint)
 
2. A point of relatively intense heat or radiation (- hot spot)
 
3. A lively entertainment spot (- hot spot)

4. Somewhere with a wireless internet connection
""",
  );

  final String keyword = "hotspot";
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
    await flutterTts.speak("""hotspot""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """UN peacekeeping forces have helped ease tensions in world hotspots since 1948.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They identified eight pollution hotspots at the mouth of the Thames.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This summer’s vacation hot spot is Alaska.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Fire crews worked to douse hotspots left by two fires that consumed acres of forest.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'cY4e0uvp7uI';
    const double startSecondsend = 716;
    const String videoIdone = '5R65skWdg7Y';
    const double startSecondsone = 556;
    const String videoIdtwo = 'j9h2-ZVDLB8';
    const double startSecondstwo = 268;
    const String videoIdthree = 'RZt7kE7PZMQ';
    const double startSecondsthree = 593;
    const String videoIdfour = 'h42QVfrUVFw';
    const double startSecondsfour = 519;
    const String videoIdfive = 'tyixMpuGEL8';
    const double startSecondsfive = 773;

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
                      word: """hotspot""",
                      alsoEnglishWord: "also: hot spot",
                      britshText: """IpaUK: /ˈhɒtspɒt/""",
                      americanText: """IpaUS: /ˈhɑːtspɑːt/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شوێنێک کە شەڕی زۆری تێدایە، بەتایبەتی هی سیاسی"""),
                    SentencesRow(
                      englishText:
                          """UN peacekeeping forces have helped ease tensions in world hotspots since 1948.""",
                      kurdishText:
                          """هێزەکانی ئاشتی‌پارێزی نەتەوە یەکگرتووەکان یارمەتیدەر بوونە لە کەمکردنەوەی ئاڵۆزی لە ناوچە ئاڵۆزەکانی جیهان لە ساڵی ١٩٤٨ ــەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شوێنێک کە جۆرێکی دیاریکراو لە کێشە و مەترسی تێدایە"""),
                    SentencesRow(
                      englishText:
                          """They identified eight pollution hotspots at the mouth of the Thames.""",
                      kurdishText:
                          """هەشت ناوچەی پیسکەریان لە دەمی ڕووباری تەیمز دەستنیشان کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شوێنێک کە ڕێژەیەکی زۆر لە چالاکی و خۆشی و تێدایە"""),
                    SentencesRow(
                      englishText:
                          """This summer’s vacation hot spot is Alaska.""",
                      kurdishText: """شوێنی لەباری گەشتی هاوینە ئەلاسکایە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شوێنێک کە زۆر گەرم و وشکە کە ئاگری لێ کەوتووەتەوە یان ئەگەری هەیە ئاگری تێ بەربێت"""),
                    SentencesRow(
                      englishText:
                          """Fire crews worked to douse hotspots left by two fires that consumed acres of forest.""",
                      kurdishText:
                          """تیمەکانی ئاگر کوژێنەرەوە هەوڵیان دا بۆ کوژاندنەوەی ئەو ناوچە ئاگرینانەی کە دوو ئاگر درووستیان کردبوو کە چەندین ئەیکەر لە دارستانیان لەناوبردبوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
