import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylag extends StatefulWidget {
  const EnglishEntrylag({super.key});

  @override
  State<EnglishEntrylag> createState() => _EnglishEntrylagState();
}

class _EnglishEntrylagState extends State<EnglishEntrylag> {
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
- Verb: lag (Derived forms: lagged, lagging, lags)
1. Hang (back) or fall (behind) in movement, progress, development, etc. (- dawdle, fall back, fall behind)
 
2. (law) lock up or confine, in or as in a jail (- imprison, incarcerate, immure, put behind bars, jail, jug [N. Amer, informal], gaol [Brit], put away, remand, prison [archaic])
"The suspects were lagged without trial";
 
3. Throw or pitch at a mark, as with coins
 
4. Cover with lagging to prevent heat loss
"lag pipes"

- Noun: lag (Derived forms: lags)
1. The act of slowing down or falling behind (- slowdown, retardation)
 
2. The time between one event, process, or period and another (- interim, meantime, meanwhile)
 
3. One of several thin slats of wood forming the sides of a barrel or bucket (- stave)
""",
  );

  final String keyword = "lag";
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
    await flutterTts.speak("""lag""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The little boy lagged behind his parents.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We still lag far behind many of our competitors in using modern technology.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She did well in her first year at school but then started to lag behind.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They lagged the pipes to keep them from freezing.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You have to allow for a time lag between order and delivery.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/5J3ZV5PUGog?t=32';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/3RkhZgRNC1k?t=514';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Fr-qagv7ig0?t=30';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/oyx49MqQeZc?t=180';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/xIycNHNAgBE?t=101';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/p5I1DPaCnqM?t=600';
    const double startSecondsfive = 0;

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
                      word: """lag""",
                      // alsoEnglishWord: "also: lag",
                      britshText: """IpaUK: /læɡ/""",
                      americanText: """IpaUS: /læɡ/""",
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
کوردی: دواکەوتوویی، پاش‌کەوتوویی، دواکەوتن، پاش‌کەوتن، بەجێمان، بەدواکەوتن، خاوی، بەدرەنگ‌کەوتن،	کەلێن، مەودا، بۆشایی، کەلەبەر
"""),
// With short examples define "lag", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) جووڵان یان بەرەوپێشچوون بە هێواشتر لە خەڵکی، دامەزراوە، هتد ــی تر """),
                    const AlsoEnglishckb(word: "ھەروەھا: trail"),
                    SentencesRow(
                      englishText:
                          """The little boy lagged behind his parents.""",
                      kurdishText: """کوڕە بچووکەکە بە دوای دایبابییەوە بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We still lag far behind many of our competitors in using modern technology.""",
                      kurdishText:
                          """هێشتا زۆر لە دواوەی ڕکابەرەکانمانەوەین لە تەکنەلۆژیای سەردەمدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She did well in her first year at school but then started to lag behind.""",
                      kurdishText:
                          """لە یەکەم ساڵی قوتابخانە زۆر لە دواوە بوو بەڵام دواتر دەستی کرد بە دواکەوتن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (کردار) پننسە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: insulate"),
                    SentencesRow(
                      englishText:
                          """They lagged the pipes to keep them from freezing.""",
                      kurdishText:
                          """بۆرییەکانیان عەزل کرد بۆ ئەوەی بیان پارێزن لە بەستن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) دواکەوتنی نێوان دوو ڕووداو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You have to allow for a time lag between order and delivery.""",
                      kurdishText:
                          """دەبێت حساب بۆ دواکەوتنێکی کات بکەیت لە نێوان داواکردن و گەیاندن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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
// end lag