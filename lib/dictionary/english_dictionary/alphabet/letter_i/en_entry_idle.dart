import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryidle extends StatefulWidget {
  const EnglishEntryidle({super.key});

  @override
  State<EnglishEntryidle> createState() => _EnglishEntryidleState();
}

class _EnglishEntryidleState extends State<EnglishEntryidle> {
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
- Adjective: idle (Derived forms: idlest, idler)
1. Not in action or at work
"an idle labourer"; "idle drifters"; "the idle rich"; "an idle mind"
 
2. Without a basis in reason or fact (- baseless, groundless, unfounded, unwarranted, wild)
"idle fears";
 
3. Not in active use (- unused)
"idle hands"; "the machinery sat idle during the strike";
 
4. Silly or trivial (- light)
"idle pleasure"; "light idle chatter";
 
5. Lacking a sense of restraint or responsibility (- loose)
"idle talk";
 
6. Not yielding a return (- dead)
"idle funds";
 
7. Not having a job (- jobless, out of work)
"idle carpenters";

- Verb: idle (Derived forms: idling, idled, idles)
1. Run disconnected or idle (- tick over)
"the engine is idling";
 
2. Be idle; exist in a changeless situation (- laze, slug [informal], stagnate)
"He idled in bed all morning";

- Noun: idle (Derived forms: idles)
1. The state of an engine or other mechanism that is idling
"the car engine was running at idle"
""",
  );

  final String keyword = "idle";
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
    await flutterTts.speak("""idle""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He's a very able student, he's just bone idle.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Half their machines are lying idle.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He never stayed idle for long.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was just an idle threat.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""In idle moments, he carved wooden figures.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They idled the days away, talking and watching television.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They idled along by the river.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She left the car idling at the roadside.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The strikes have idled nearly 4 000 workers.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'wJa5Ch0O4BI';
    const double startSecondsend = 396;
    const String videoIdone = 'NQZ5BfdjDv0';
    const double startSecondsone = 1617;
    const String videoIdtwo = 'dq8scgJCg7w';
    const double startSecondstwo = 641;
    const String videoIdthree = 'WBxqiUhadyY';
    const double startSecondsthree = 1358;
    const String videoIdfour = 'tFdnCzfJPJ0';
    const double startSecondsfour = 428;
    const String videoIdfive = 'J5z4opzud_U';
    const double startSecondsfive = 569;

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
                      word: """idle""",
                      // alsoEnglishWord: "also: idle",
                      britshText: """IpaUK: /ˈaɪdl/""",
                      americanText: """IpaUS: /ˈaɪdl/""",
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
کوردی: بێکار، دەس‌بەتاڵ،	کارنەکردوو، بێکارە، بێکار، نەکرکار، تەمەڵ، هیچ‌نەتوان، تەوەزەل،	بێ‌سوود، بێ‌قازانج، بێهوودە
"""),
// With short examples define "idle", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کەسانی تەمەڵ کە بە سەختی کار نەکەن"""),
                    SentencesRow(
                      englishText:
                          """He's a very able student, he's just bone idle (= very lazy).""",
                      kurdishText:
                          """خوێندکارێکی زۆر بەتوانایە، تەنها ئەوەیە زۆر تەمەڵە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە ئامێرێک لە کارکردندا نییە"""),
                    SentencesRow(
                      englishText: """Half their machines are lying idle.""",
                      kurdishText: """نیوەی ئامێرەکانیان بێکار کەوتوون.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە کەسێک کاری نەبێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: unemployed"),
                    SentencesRow(
                      englishText: """He never stayed idle for long.""",
                      kurdishText: """هەرگیز زۆر بێکار نەمایەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) بەبێ مەبەست یان کاریگەریی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """It was just an idle threat (= not serious).""",
                      kurdishText: """تەنها هەڕەشەیەکی پووچ بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کاتێک کە بە کار یان شتێکی دیاریکراو بەسەر نابردرێت"""),
                    SentencesRow(
                      englishText:
                          """In idle moments, he carved wooden figures.""",
                      kurdishText:
                          """لە کاتی بەتاڵدا، شێوەی دارینی دائەتاشی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) بەسەربردنی کات بەبێ کردنی هیچ شتێک"""),
                    SentencesRow(
                      englishText:
                          """They idled the days away, talking and watching television.""",
                      kurdishText:
                          """ڕۆژەکانیان بەهەدەردا بەوەی قسەیان دەکرد و سەیری تەلەفیزیۆنیان دەکرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They idled along by the river (= walked slowly and with no particular purpose).""",
                      kurdishText: """بە ڕووبارەکەدا پیاسەیان دەکرد.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) کە بزوێنەرێک بە هێواشی کار دەکات و ئۆتۆمبێلەکە ناجووڵێت"""),
                    SentencesRow(
                      englishText:
                          """She left the car idling at the roadside.""",
                      kurdishText:
                          """ئۆتۆمبێلەکەی بە کراوەیی هێشتەوە لە کەناری ڕێگاکە.""",
                      englishNote:
                          """This means she kept the car engine running without moving while it was parked by the side of the road.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) داخستنی کارگەیەک یان بێکارکردنی کرێکاران، بە تایبەتی بە کاتی"""),
                    SentencesRow(
                      englishText:
                          """The strikes have idled nearly 4 000 workers.""",
                      kurdishText:
                          """مانگرتنەکان ٤٠٠٠ کرێکاریان بێکار کردووە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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