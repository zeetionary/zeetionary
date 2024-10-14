import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhost extends StatefulWidget {
  const EnglishEntryhost({super.key});

  @override
  State<EnglishEntryhost> createState() => _EnglishEntryhostState();
}

class _EnglishEntryhostState extends State<EnglishEntryhost> {
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
- Noun: host (Derived forms: hosting, hosts, hosted)
1. A person who invites guests to a social event (such as a party in his or her own home) and who is responsible for them while they are there
 
2. A vast multitude (- horde, legion)
 
3. An animal or plant that nourishes and supports a parasite; it does not benefit and is often harmed by the association
 
4. A person who acts as host at formal occasions (makes an introductory speech and introduces other speakers) (- master of ceremonies, emcee [N. Amer], MC)
 
6. Any organization that provides resources and facilities for a function or event
"Atlanta was chosen to be host for the Olympic Games"
 
7. (medicine) recipient of transplanted tissue or organ from a donor
 
8. The owner or manager of an inn (- innkeeper, boniface [archaic])
 
9. (computing) a computer that provides client stations with access to files and printers as shared resources to a computer network (- server)
 
10. [archaic] Army (- legion [archaic])

- Verb: host
1. Be the host of or for
"We hosted 4 couples last night"

- Noun: Host 
1. A technical name for the bread used in the service of Mass or Holy Communion
""",
  );

  final String keyword = "host";
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
    await flutterTts.speak("""host""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Ian, our host, introduced us to the other guests.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sonja stayed with an Argentine host family.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The college is playing host to a group of visiting Russian scientists.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The wonderful city of Melbourne is host to this event.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The event will be opened by television host Bill Punter.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The bacteria form clusters in the gut of the host animal.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Lavender oil can relieve a whole host of ailments.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""South Africa hosted the World Cup finals.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Birmingham is hosting a three-day conference on drugs.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Charlie Rose will host tonight's show.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Whose turn is it to host?""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'HDntl7yzzVI';
    const double startSecondsend = 1441;
    const String videoIdone = '_wNsZEqpKUA';
    const double startSecondsone = 719;
    const String videoIdtwo = 'y1sF6ZeASU0';
    const double startSecondstwo = 40;
    const String videoIdthree = 'kP9TfCWaQT4';
    const double startSecondsthree = 22;
    const String videoIdfour = 'lex6USTugUU';
    const double startSecondsfour = 64;
    const String videoIdfive = 'pTysrwci0pU';
    const double startSecondsfive = 582;

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
                      word: """host""",
                      // alsoEnglishWord: "also: host",
                      britshText: """IpaUK: /həʊst/""",
                      americanText: """IpaUS: /həʊst/""",
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
کوردی: خانەخوێ، میواندار، مازووڤان، پێشکەش‌کار، بەڕێوەبەر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێک کە خەڵکی دیکە بانگهێشت دەکات بۆ ماڵەکەی"""),
                    SentencesRow(
                      englishText:
                          """Ian, our host, introduced us to the other guests.""",
                      kurdishText:
                          """یان، میواندارەکەمان، ناساندمانی بە میوانەکانی دیکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Sonja stayed with an Argentine host family.""",
                      kurdishText:
                          """سانجا لەگەڵ خێزانێکی میوانداری ئەرژەنتینی مایەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) وڵاتێک، شارێک، یان دامەزراوەیەک کە میوانداری بۆنەیەک دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The college is playing host to a group of visiting Russian scientists.""",
                      kurdishText:
                          """کۆلێژەکە میوانداری گرووپێک لە زانایانی سەردانکاری ڕووسی دەکات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The wonderful city of Melbourne is host to this event.""",
                      kurdishText:
                          """شارە جوانەکەی مێلبۆرن میوانداری ئەم بۆنەیە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) پێشکەشکاری تەلەفیزیۆن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: compère"),
                    SentencesRow(
                      englishText:
                          """The event will be opened by television host Bill Punter.""",
                      kurdishText:
                          """بۆنەکە دەست پێدەکرێت لەلایەن پێشکەشکاری تەلەفیزیۆن بیڵ پەنتەر.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئاژەڵ یان ڕووەکێک کە یەکێکی دیکە لەسەری دەژیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The bacteria form clusters in the gut of the host animal.""",
                      kurdishText:
                          "بەکتریاکە تۆپەڵ درووست دەکات لە ڕیخۆڵەی ئاژەڵە خانەخوێکەدا.",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) ڕێژەیەکی زۆر لە خەڵکی یان شت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Lavender oil can relieve a whole host of ailments.""",
                      kurdishText:
                          """زەیتی لاڤندەر دەکرێت ژمارەیەکی زۆر لە نەخۆشی نەهێڵێت.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) ڕێکخستنی بۆنەیەک وەک میواندار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """South Africa hosted the World Cup finals.""",
                      kurdishText:
                          """ئەفریقای باشوور میوانداری یارییەکانی کۆتایی جامی جیهانی بوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Birmingham is hosting a three-day conference on drugs.""",
                      kurdishText:
                          """بیرمینگهام میوانداری کۆنفرانسێکی سێ ڕۆژەیی لەسەر مادە هۆشبەرەکان دەکات.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) بوون بە پێشکەشکاری پڕۆگرامێکی تەلەفیزیۆنی، ڕادیۆیی، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Charlie Rose will host tonight's show.""",
                      kurdishText:
                          """چارلی ڕۆوز پێشکەشکاری پڕۆگرامەکەی ئەمشەو دەبێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ڕێکخستنی بۆنەیەک کە میوانت بانگهێشت کردووە بۆی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Whose turn is it to host?""",
                      kurdishText: """نۆرەی کێیە میوانداری بکات؟""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
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