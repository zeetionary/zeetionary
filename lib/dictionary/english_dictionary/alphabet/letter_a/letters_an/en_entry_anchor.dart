import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanchor extends StatefulWidget {
  const EnglishEntryanchor({super.key});

  @override
  State<EnglishEntryanchor> createState() => _EnglishEntryanchorState();
}

class _EnglishEntryanchorState extends State<EnglishEntryanchor> {
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
- Verb: anchor (derived forms: anchors, anchoring, anchored)
1. Fix firmly and stably (= ground)
"anchor the lamppost in concrete";
 
2. Secure a vessel with an anchor (= cast anchor, drop anchor)
"We anchored at Baltimore"; "We cast anchor at Baltimore"; "We dropped anchor at Baltimore";
 
3. [N. Amer] Serve as an anchorperson

- Noun: anchor (derived forms: anchors)
1. A mechanical device that prevents a vessel from moving (= ground tackle)
 
2. A central cohesive source of support and stability (= mainstay, keystone, backbone, linchpin, lynchpin)
"faith is his anchor";

3. A television reporter who coordinates a broadcast to which several correspondents contribute (= anchorman, anchorperson)
""",
  );
// 188888880002200

  final String keyword = "anchor";
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
    await flutterTts.speak("""anchor""");
  }

  Future<void> speakanchor08996(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We raised the anchor and set sail.");
  }

  Future<void> speakanchor104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We weighed anchor.");
  }

  Future<void> speakanchor10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was my anchor when things were difficult for me.");
  }

  Future<void> speakanchor1044(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was questioned by a BBC anchor about her trip.");
  }

  Future<void> speakanchor0995(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We anchored off the coast of Spain.");
  }

  Future<void> speakanchor550(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ropes were anchored to the rocks.");
  }

  Future<void> speakanchor5006(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her novels are anchored in everyday experience.");
  }

  Future<void> speakanchor444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She anchored the evening news for seven years.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '7JWQKAbZE8E';
    const double startSecondsend = 365;
    const String videoIdone = 'q3lw_aH-Np0';
    const double startSecondsone = 60;
    const String videoIdtwo = 'RoSO3_0Ufr0';
    const double startSecondstwo = 6;
    const String videoIdthree = 'xzo_f92h4lQ';
    const double startSecondsthree = 6;
    const String videoIdfour = 'pWjdXmDxdIA';
    const double startSecondsfour = 14;
    const String videoIdfive = 'WXk0ew4Wj_Q';
    const double startSecondsfive = 30;
    // final String _videoId = 'sosCBJv2tV8';
    // final double _startSeconds = 24;
    // final String _videoId = '4Nr1AgIfajI';
    // final double _startSeconds = 386;
    // final String _videoId = 'FTo07ejsYoQ';
    // final double _startSeconds = 881;
    // final String _videoId = 'jvQlDuDDK7E';
    // final double _startSeconds = 1607;
    // final String _videoId = 'rLNwO4IBMOc';
    // final double _startSeconds = 95;
    // final String _videoId = 'ktd_2ozZ9Qk';
    // final double _startSeconds = 231;

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
                      word: """anchor""",
                      // alsoEnglishWord: "also: anchor",
                      britshText: """IpaUK: /ˈæŋkə(r)/""",
                      americanText: """IpaUS: /ˈæŋkər/""",
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
کوردی: لەنگەر، پشت‌وپەنا، پشتیوان، وەستێنەی ئۆتۆمبێلی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچە ئاسنێکی قورس کە بە زنجیرێک یان گوریسێک بەستراوە و لەلایەکی کەشتیەک یان بەلەمێکەوە دەخرێتەخوارەوە بۆ ئەوەی لەنگەر بگرێت """),
                    SentencesRow(
                      englishText: "We raised the anchor and set sail.",
                      kurdishText:
                          "لەنگەرەکەمان خستەخوارەوە و دەستمان بە گەشت‌کرد.",
                      onPressedBritish: () => speakanchor08996("en-GB"),
                      onPressedAmerican: () => speakanchor08996("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "We weighed anchor (= pulled it out of the water).",
                      kurdishText: "لەنگەرەکەمان ھەڵکێشا.",
                      onPressedBritish: () => speakanchor104("en-GB"),
                      onPressedAmerican: () => speakanchor104("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) پشت‌و‌پەنا؛ کەسێک کە پشتیوانی کەسێک دەکات لە تەنگانەدا"""),
                    SentencesRow(
                      englishText:
                          "She was my anchor when things were difficult for me.",
                      kurdishText:
                          "کە شتەکان سەخت‌بوون بۆم ئەو پشت‌وپەنام بوو.",
                      onPressedBritish: () => speakanchor10("en-GB"),
                      onPressedAmerican: () => speakanchor10("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پێشکەشکاری تەلەفیزیۆن یان ڕادیۆ """),
                    SentencesRow(
                      englishText:
                          "She was questioned by a BBC anchor about her trip.",
                      kurdishText:
                          "لەلایەن پێشکەشکارێکی بی‌بی‌سی‌یەوە پرسیاری لێکرا لەسەر گەشتەکەی.",
                      onPressedBritish: () => speakanchor1044("en-GB"),
                      onPressedAmerican: () => speakanchor1044("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) داگرتنی لەنگەری کەشتییەک یان بەلەمێک بۆ وەستاندنی لە جوڵان """),
                    SentencesRow(
                      englishText: "We anchored off the coast of Spain.",
                      kurdishText: "لە کەناراوەکانی ئیسپانیا لەنگەرمان گرت.",
                      onPressedBritish: () => speakanchor0995("en-GB"),
                      onPressedAmerican: () => speakanchor0995("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) دانانی شتێک لە شوێنێک کە چی‌تر ناجوڵێت """),
                    SentencesRow(
                      englishText: "The ropes were anchored to the rocks.",
                      kurdishText: "گوریسەکان لە بەردەکان گیرکرابوون.",
                      onPressedBritish: () => speakanchor550("en-GB"),
                      onPressedAmerican: () => speakanchor550("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) پشت‌بەستنی شتێک بە شتێکی تر """),
                    SentencesRow(
                      englishText:
                          "Her novels are anchored in everyday experience.",
                      kurdishText: "ڕۆمانەکانی پشت بە ئەزموونی ڕۆژانە دەبەستن.",
                      onPressedBritish: () => speakanchor5006("en-GB"),
                      onPressedAmerican: () => speakanchor5006("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) پێشکەشکردنی ھەواڵ """),
                    SentencesRow(
                      englishText:
                          "She anchored the evening news for seven years.",
                      kurdishText: "ھەواڵی ئێوارانی بۆ حەوت ساڵ پێشکەش‌دەکرد.",
                      onPressedBritish: () => speakanchor444("en-GB"),
                      onPressedAmerican: () => speakanchor444("en-US"),
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

