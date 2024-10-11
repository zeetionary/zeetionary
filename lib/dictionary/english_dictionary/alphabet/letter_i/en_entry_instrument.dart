import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinstrument extends StatefulWidget {
  const EnglishEntryinstrument({super.key});

  @override
  State<EnglishEntryinstrument> createState() => _EnglishEntryinstrumentState();
}

class _EnglishEntryinstrumentState extends State<EnglishEntryinstrument> {
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
- Noun: instrument (Derived forms: instruments)
1. A device that requires skill for proper use
 
2. The means whereby some act is accomplished (- tool)
"my greed was the instrument of my destruction";
 
3. A person used by another to gain an end (- pawn, cat's-paw)
 
4. (law) a document that states some contractual relationship or grants some right (- legal document, legal instrument, official document)
 
5. The semantic role of the entity (usually inanimate) that the agent uses to perform an action or start a process (- instrumental role)
 
6. Any of various devices or contrivances that can be used to produce musical tones or sounds (- musical instrument)

- Verb: instrument (Derived forms: instrumenting, instruments, instrumented)
1. Equip with instruments for measuring, recording, or controlling
 
2. (music) write an instrumental score for (- instrumentate)
 
3. Address a legal document to
""",
  );

  final String keyword = "instrument";
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
    await flutterTts.speak("""instrument""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is he learning an instrument?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The piece can be played on a keyboard instrument.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Scientists then began using powerful instruments to peer through the planet's dense atmosphere.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Instruments for surgery have become hugely more sophisticated.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The autopsy revealed that the deceased had been hit with a blunt instrument.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There was a warning light flashing on the instrument panel.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The law is not the best instrument for dealing with family matters.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They agreed that the UN was the best instrument for reaching agreement.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The despot claimed to be the chosen instrument of divine providence.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'pFEB0chiuJA';
    const double startSecondsend = 0;
    const String videoIdone = 'xXvgT-AgLAo';
    const double startSecondsone = 435;
    const String videoIdtwo = 'kTaYet07Ioo';
    const double startSecondstwo = 736;
    const String videoIdthree = 'ZoLU3-dhoY0';
    const double startSecondsthree = 244;
    const String videoIdfour = 'L1kYZHnHS0E';
    const double startSecondsfour = 874;
    const String videoIdfive = 'nMuepMTnIow';
    const double startSecondsfive = 238;

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
                      word: """instrument""",
                      // alsoEnglishWord: "also: instrument",
                      britshText: """IpaUK: /ˈɪnstrəmənt/""",
                      americanText: """IpaUS: /ˈɪnstrəmənt/""",
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
کوردی: ئامێر، ئاموور، ئامراز، هەجەت، هۆ، کەرستە، دەزگا،	ئامێر، ساز،	(قانوونی یان فەرمی) بەڵگە، نووسراوە،	داردەست، ئامێر
"""),
// With short examples define "instrument", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) ئامێری میوزیکی، بۆ نموونە پیانۆ"""),
                    SentencesRow(
                      englishText: """Is he learning an instrument?""",
                      kurdishText: """خەریکی فێربوونی ئامێری میوزیکییە؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The piece can be played on a keyboard instrument.""",
                      kurdishText:
                          """پارچە میوزیکە دەکرێت بە ئامێری کیبۆرد بژەندرێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئامێرێک کە بۆ مەبەستێکی دیاریکراو بەکاردێت، بەتایبەتی بۆ کاری زانستی یان تایبەتی"""),
                    SentencesRow(
                      englishText:
                          """Scientists then began using powerful instruments to peer through the planet's dense atmosphere.""",
                      kurdishText:
                          """زاناکان دواتر دەستیان کرد بە بەکارهێنانی ئامێری بەهێز بۆ سەیرکردنی بەرگەهەوای چڕی هەسارەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Instruments for surgery have become hugely more sophisticated.""",
                      kurdishText:
                          """ئامێرەکانی نەشتەرگەری زۆر بەرەو پێشچوونە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The autopsy revealed that the deceased had been hit with a blunt instrument.""",
                      kurdishText:
                          """توێکارییەکە ئاشکرای کرد مردووەکە بە ئامێرێکی کول لێی درابوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئامێرێک کە بۆ پێوانی خێرایی، پلەی گەرمی، دووریم هتد بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """There was a warning light flashing on the instrument panel.""",
                      kurdishText:
                          """لایتێکی ئاگادارکەرەوە لەسەر شاشەی پێوەرەکە پرتەی دەکرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شتێک کە لەلایەن کەسێک بەکاردێت بۆ بەدەستهێنانی شتێک؛ ک/شت کە وەها دەکات شتیک ڕووىدات"""),
                    SentencesRow(
                      englishText:
                          """The law is not the best instrument for dealing with family matters.""",
                      kurdishText:
                          """یاساکە باشترین شت نییە بۆ مامەڵە لەگەڵ کێشەی خێزانی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They agreed that the UN was the best instrument for reaching agreement.""",
                      kurdishText:
                          """ڕێکەوتن لەسەر ئەوەی نەتەوە یەکگرتووەکان باشترین ڕێگا بوو بۆ گەشتن بە ڕێکەوتن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) کەسێک کە لەلایەن کەسێکی بەهێزتر بەکاردێت یان کۆنترۆڵ دەکرێت"""),
                    SentencesRow(
                      englishText:
                          """The despot claimed to be the chosen instrument of divine providence.""",
                      kurdishText:
                          """دیکتاتۆرەکە بانگەشەی ئەوەی دەکرد کە نێردراوی هەڵبژێردراوی ڕۆحی پیرۆز بێت.""",
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
// end instrument