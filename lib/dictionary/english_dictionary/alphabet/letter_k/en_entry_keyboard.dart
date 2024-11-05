import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykeyboard extends StatefulWidget {
  const EnglishEntrykeyboard({super.key});

  @override
  State<EnglishEntrykeyboard> createState() => _EnglishEntrykeyboardState();
}

class _EnglishEntrykeyboardState extends State<EnglishEntrykeyboard> {
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
- Noun: keyboard (Derived forms: keyboards)
1. Device consisting of a set of keys on a piano or organ or typewriter or typesetting machine or computer or the like
 
2. Holder consisting of an arrangement of hooks on which keys or locks can be hung

- Verb: keyboard (Derived forms: keyboards, keyboarding, keyboarded)
1. Enter text or data with a keyboard
""",
  );

  final String keyword = "keyboard";
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
    await flutterTts.speak("""keyboard""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The program locks the keyboard until a password is given.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Press Ctrl + S on the keyboard to save the file.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The width of piano keyboards became standard in the mid-1800s.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She plays keyboard and guitar.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/YKbizAipups?t=753';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/ZEMTGRxudSo?t=16';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/OJrGd-0oOo0?t=368';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/dtp6b76pMak?t=381';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/TjP0UgI8CTg?t=13';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/8FpPSMIB4uA?t=146';
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
                      word: """keyboard""",
                      // alsoEnglishWord: "also: keyboard",
                      britshText: """IpaUK: /ˈkiːbɔːd/""",
                      americanText: """IpaUS: /ˈkiːbɔːrd/""",
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
کوردی: کلیلگە، کلیل‌بەند، کەیبۆرد، تەختەکلیل، کلیلان، ڕیزەکلیل
"""),
// With short examples define "keyboard", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ژمارەیەک دووگمە بۆ نووسین لەسەر کۆمپیوتەر، موبایل، هتد"""),
                    SentencesRow(
                      englishText:
                          """The program locks the keyboard until a password is given.""",
                      kurdishText:
                          """پڕۆگرامەکە کیبۆردی نییە تاوەکو تێپەڕەوشە ئەنووسرێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Press Ctrl + S on the keyboard to save the file.""",
                      kurdishText:
                          """پەنجە بنێ بە کۆنترۆڵ + S بۆ پاشەکەوتکرنی فایلەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو کلیلە ڕەش و سپییانەی کە لەسەر پیانۆ یان ئامێرێکی میوزیکی دیکەیە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The width of piano keyboards became standard in the mid-1800s.""",
                      kurdishText:
                          """پانی دووگمەکانی پیانۆ بوون بە ستاندارد لە ناوەڕاستی ١٨٠٠ ــەکان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئامێرێکی میوزیکی ئەلیکترۆنی کە وەک پیانۆ دووگمەی هەیە و دەکرێت وەهای لێ بکرێت وەک بە شێوەی جیاواز دەنگی بێت یان وەک ئامێری دیکە بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She plays keyboard and guitar.""",
                      kurdishText: """کیبۆرد و گیتار دەژەنێت.""",
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
// end keyboard