import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhorn extends StatefulWidget {
  const EnglishEntryhorn({super.key});

  @override
  State<EnglishEntryhorn> createState() => _EnglishEntryhornState();
}

class _EnglishEntryhornState extends State<EnglishEntryhorn> {
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
- Noun: horn (Derived forms: horns)
1. One of the bony outgrowths on the heads of certain ungulates
 
2. A device on an automobile for making a warning noise (- automobile horn, car horn, motor horn, hooter)
 
3. A noise made by the driver of an automobile to give warning
 
4. A high pommel of a Western saddle (usually metal covered with leather) (- saddle horn)
 
5. A brass musical instrument with a brilliant tone; has a narrow tube and a flared bell and is played by means of valves (- cornet, trumpet, trump [archaic])
 
6. Any hard protuberance from the head of an organism that is similar to or suggestive of a horn
 
7. The material (mostly keratin) that covers the horns of ungulates and forms hooves and claws and nails
 
8. A device having the shape of a horn
"horns at the ends of a new moon"; "the horn of an anvil"; "the cleat had two horns"
 
9. An alarm device that makes a loud warning sound
 
10. A brass musical instrument consisting of a conical tube that is coiled into a spiral and played by means of valves (- French horn)
 
11. (game) a noisemaker (as at parties or games) that makes a loud noise when you blow through it

- Verb: horn (Derived forms: horned, horning, horns)
1. Stab or pierce with a horn or tusk (- tusk)
"the rhino horned the explorer";
""",
  );

  final String keyword = "horn";
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
    await flutterTts.speak("""horn""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The bull lowered its horns and charged straight at him.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The male deer grows large branching horns.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Impatient horn blasts began to sound behind him.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Passing motorists honked their horns.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'TJmTHuuYx3k';
    const double startSecondsend = 79;
    const String videoIdone = 'hTqtGJwsJVE';
    const double startSecondsone = 98;
    const String videoIdtwo = 'pFEB0chiuJA';
    const double startSecondstwo = 170;
    const String videoIdthree = 'VvJm4pQZ04s';
    const double startSecondsthree = 25;
    const String videoIdfour = 'Mx8JkGHaGUI';
    const double startSecondsfour = 2203;
    const String videoIdfive = '_5qZ-WVhnRo';
    const double startSecondsfive = 8;

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
                      word: """horn""",
                      // alsoEnglishWord: "also: horn",
                      britshText: """IpaUK: /hɔːn/""",
                      americanText: """IpaUS: /hɔːrn/""",
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
کوردی: شاخ، قۆچ، کلۆچ، ئەسرۆ، ستڕۆ، ستڕە، نەفر، شاخۆچکە،	کەڕەنا، زوڕنا، نەفیر، بۆڕی،	هۆڕن، سیگناڵ،	نووک، تیژایی (هی مانگی یەک‌شەوە)،	نووک، لووت، سەر (دەزگا)،	پیاڵە، ئاوخۆری (لە شاخ)،	(بریتانیا) چووکی ڕەپ، سیرەتی هەستاو،	لقێ لە چۆم یان کەنداوێ،	لووتکە یان نووچکەی شاخێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شاخی ئاژەڵ؛ ئەو مادە سەختەی شاخی ئاژەڵی لێ درووست دەکرێت"""),
                    SentencesRow(
                      englishText:
                          """The bull lowered its horns and charged straight at him.""",
                      kurdishText:
                          """جوانەگاکە شاخەکانی نزمکردەوە و ڕاست هێرشی بۆی کرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The male deer grows large branching horns.""",
                      kurdishText: """بزنی نێرە شاخی لقداری گەورە دەردەکات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) هۆرنی ئۆتۆمبێل"""),
                    SentencesRow(
                      englishText:
                          """Impatient horn blasts began to sound behind him.""",
                      kurdishText:
                          """دەنگی هۆرنی بێ‌ئۆقرە لە پشتییەوە دەستی پێکرد.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Passing motorists honked their horns.""",
                      kurdishText:
                          """ماتۆڕسوارە تێپەڕیوەکان هۆرنەکانیان لێدەدا.""",
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