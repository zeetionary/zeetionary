import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjar extends StatefulWidget {
  const EnglishEntryjar({super.key});

  @override
  State<EnglishEntryjar> createState() => _EnglishEntryjarState();
}

class _EnglishEntryjarState extends State<EnglishEntryjar> {
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
- Noun: jar (Derived forms: jars)
1. A cylindrical vessel, typically used for storing food
 
2. The quantity contained in a jar (- jarful)
"he drank a jar of beer";
 
3. A sudden jarring impact (- jolt, jounce, shock)
"all the jars and jolts were smoothed out by the shock absorbers";

- Verb: jar (Derived forms: jars, jarred, jarring)
1. Be incompatible; be or come into conflict (- clash, collide)
"These colours jar";
 
2. Move or cause to move with a sudden jerky motion (- jolt)
 
3. Shock physically (- shake up, bump around)
 
4. Affect in a disagreeable way
"This play jarred the audience"
 
5. Place in a cylindrical vessel
"jar the jam"
""",
  );

  final String keyword = "jar";
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
    await flutterTts.speak("""jar""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She filled the jars with the tomato sauce.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Keep your empty jam jars for bottling next year’s fruit.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He bought a jar of orange conserve to enjoy with his afternoon tea.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This gadget's great for opening jars.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The woman filled the water jar at the well.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After you grind the coffee, use a funnel to pour it into the jar.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The water jar cracked.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you fancy a jar after work?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He jarred his knee in training yesterday.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her laugh was beginning to jar on me.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her brown shoes jarred with the rest of the outfit.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The dirty old building jarred with the luxury hotels around it.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/ONsIETpp_6Y?t=214';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/nsnyl8llfH4?t=228';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/58XEfDtU0Z4?t=484';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/hzAgFNh4vRY?t=145';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/iDNZGw6uWZg?t=118';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/Is1IWMPNqh4?t=626';
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
                      word: """jar""",
                      // alsoEnglishWord: "also: jar",
                      britshText: """IpaUK: /dʒɑː(r)/""",
                      americanText: """IpaUS: /dʒɑːr/""",
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
کوردی: مەڕکانە، کووپە، گۆزە، گۆزەڵە، کووزەڵە، کووزە، جەڕە، شووشە بیرە، لیوانی ئاووجۆ، پارچ، شووشەی دەم‌گەورە
"""),
// With short examples define "jar", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) قوتوویەک کە بەکاردێت بۆ هەڵگرتنی خواردن، بە تایبەتی مرەبا، هەنگوین، هتد"""),
                    SentencesRow(
                      englishText:
                          """She filled the jars with the tomato sauce.""",
                      kurdishText: """شووشەکانی پڕکرد لە سۆسی تەماتە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Keep your empty jam jars for bottling next year’s fruit.""",
                      kurdishText:
                          "شووشە مرەبا بەتاڵەکان بپارێزە بۆ ئەوەی ساڵی داھاتوو میوەیان تێ‌بخەیت.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """After you grind the coffee, use a funnel to pour it into the jar.""",
                      kurdishText:
                          """لە دوای ئەوەی قاوەکە دەھاریت، ڕەحەتییەک بەکاربھێنە بۆ ئەوەی بیڕژێنیتە شووشەکەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This gadget's great for opening jars.""",
                      kurdishText:
                          """ئەم ئامرازە زۆر بەسوودە بۆ کردنەوەی شووشە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) شووشەیەک و ئەوەی تێیدایە"""),
                    SentencesRow(
                      englishText:
                          """He bought a jar of orange conserve to enjoy with his afternoon tea.""",
                      kurdishText:
                          "شووشەیەک مرەبای پرتەقاڵی کڕی بۆ خواردنی لەگەڵ چایی نیوەڕۆیدا.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) دۆڵکە؛ گۆزەڵە لە ڕابردوودا"""),
                    SentencesRow(
                      englishText:
                          """The woman filled the water jar at the well.""",
                      kurdishText: """ژنەکە گۆزەڵەکەی لە بیرەکە پڕکرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The water jar cracked.""",
                      kurdishText: """دۆڵکە ئاوەکە درزی برد.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) گڵاسێک بیرە"""),
                    SentencesRow(
                      englishText: """Do you fancy a jar after work?""",
                      kurdishText: """دوای کار حەز بە گڵاسێک بیرە هەیە؟""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ئەوەی لێدانێکی توندی لەناکاوت بەربکەوێت"""),
                    SentencesRow(
                      englishText:
                          """He jarred his knee in training yesterday.""",
                      kurdishText:
                          """دوێنێ لە ڕاهێنان ئازاری گەیاند بە لاقی.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) هەبوونی کاریگەرییەکی ناخۆش و بێزارکەر"""),
                    const AlsoEnglishckb(word: "ھەروەھا: grate"),
                    SentencesRow(
                      englishText: """Her laugh was beginning to jar on me.""",
                      kurdishText:
                          """پێکەنینەکەی دەستی دەکرد بەوەی بێزارم بکات.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) ئەوەی جیاواز بیت لە شتێک بە شێوەیەکی ناخۆش یان نامۆ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: clash"),
                    SentencesRow(
                      englishText:
                          """Her brown shoes jarred with the rest of the outfit.""",
                      kurdishText:
                          """پێڵاوە قاوەییەکانی نەدەگونجا لەگەڵ بەشەکانی دیکەی جلەکەی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The dirty old building jarred with the luxury hotels around it.""",
                      kurdishText:
                          """بینا پیسە کۆنەکە نەدەگونجا لەگەڵ هوتێلەکانی دەورووبەری.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
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
// end jar