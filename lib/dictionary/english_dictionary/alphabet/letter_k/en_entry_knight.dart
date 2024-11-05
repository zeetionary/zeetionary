import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknight extends StatefulWidget {
  const EnglishEntryknight({super.key});

  @override
  State<EnglishEntryknight> createState() => _EnglishEntryknightState();
}

class _EnglishEntryknightState extends State<EnglishEntryknight> {
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
- Noun: knight (Derived forms: knights)
1. Originally a person of noble birth trained to arms and chivalry; today in Great Britain a person honoured by the sovereign for personal merit
 
2. (chess) a chessman shaped to resemble the head of a horse; can move two squares horizontally and one vertically (or vice versa) (- horse)

- Verb: knight (Derived forms: knighting, knighted, knights)
1. Raise (someone) to knighthood (- dub)
"The Beatles were knighted";
""",
  );

  final String keyword = "knight";
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
    await flutterTts.speak("""knight""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The knights in black armour rode silently through the forest.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He hopes to be made a knight for his work at the Bank of England.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your king is in check from my knight.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was knighted by the King for his services to industry.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/zQZAIhP0H2A?t=261';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/E2xNlzsnPCQ?t=35';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/9TugA_z5vQE?t=1261';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/hIyqLdKBAlc?t=300';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/-Tg9xiJ6D6k?t=19';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/l6PlMpncVuc?t=68';
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
                      word: """knight""",
                      // alsoEnglishWord: "also: knight",
                      britshText: """IpaUK: /naɪt/""",
                      americanText: """IpaUS: /naɪt/""",
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
کوردی: شیڤالیە، قارەمان، شۆڕەسوار، کەڵەسوار، چاکەسوار، شۆخەسوار، سوارچاک، سوارخاس
"""),
// With short examples define "knight", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) لە سەردەمانی کۆندا پیاوێکی خاوەن پێگە بووە کە ئەرکی شەڕکردن بووە بۆ پاشاکەی"""),
                    SentencesRow(
                      englishText:
                          """The knights in black armour rode silently through the forest.""",
                      kurdishText:
                          """سوارچاک لە زرێی ڕەشدا بە بێ‌دەنگی بە دارستانەکەدا دەچوون.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) پیاوێک کە لەلایەن پاشا یان شاژنی بەریتانیا پێگە یان ڕێزێکی تایبەتی پێدراوە بەهۆی بەدەستهێنانەکانی و دەکرێت پێی بگوترێت سێر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He hopes to be made a knight for his work at the Bank of England.""",
                      kurdishText:
                          """هیوای وایە نازناوی "سێر" ـی پێ بدرێت بەهۆی کارەکانی لە بانکی ئینگلاند.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) پارچەیەکی یاریی شەترەنج کە شێوەی وەک ئەسپە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Your king is in check from my knight.""",
                      kurdishText: """پاشاکەت لە ژێر هەڕەشەی ئەسپەکەمە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) ئەوەی نازناوێکی تایبەت بدەیت بە کەسێک و چی دیکە بە سێر بانگ بکرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was knighted by the King for his services to industry.""",
                      kurdishText:
                          """لەلایەن پاشاوە نازناوی سێری پێدرا بۆ خزمەتەکانی بە پیشەسازییەکە.""",
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
// end knight