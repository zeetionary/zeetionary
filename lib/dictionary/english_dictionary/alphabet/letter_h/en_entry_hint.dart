import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhint extends StatefulWidget {
  const EnglishEntryhint({super.key});

  @override
  State<EnglishEntryhint> createState() => _EnglishEntryhintState();
}

class _EnglishEntryhintState extends State<EnglishEntryhint> {
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
- Verb: hint (Derived forms: hinted, hinting, hints)
1. Make an indirect suggestion; intimate by a hint (- suggest)

- Noun: hint (Derived forms: hints)
1. An indirect suggestion (- intimation, breath)
"not a hint of scandal ever touched her"; 
 
2. A slight indication (- clue)
 
3. A slight but appreciable amount (- touch, tinge, mite, pinch, jot, speck, soupçon)
"this dish could use a hint of garlic";
 
4. A just detectable amount (- trace, tint, suggestion)
"a hint mockery in her manner";
 
5. An indication of potential opportunity (- tip, lead, steer, confidential information, wind)
"he got a hint on the stock market";
 
6. A small piece of useful advice or information (- tip, pointer)
""",
  );

  final String keyword = "hint";
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
    await flutterTts.speak("""hint""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He gave a broad hint that he was thinking of retiring.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He resented any hint that he might be to blame.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I dropped a few subtle hints about the payment being due.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is that a hint to me to leave?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""At the first hint of trouble, they left.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The opening scene gives us a hint of things to come.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a hint of sadness in his voice.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do I detect a hint of jealousy in your voice?""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He showed not a hint of remorse.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The slightest hint of gossip upset her.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The teacher’s book gives useful hints on how to develop reading skills.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What are you hinting at?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They hinted (that) there might be more job losses.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He hinted strongly that he would be resigning soon.""");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'lYu1ysDULwA';
    const double startSecondsend = 28;
    const String videoIdone = '_Z0ZQT0FttM';
    const double startSecondsone = 1823;
    const String videoIdtwo = 'lGSOWwUvJiU';
    const double startSecondstwo = 1590;
    const String videoIdthree = 'vw2SaHkGfss';
    const double startSecondsthree = 86;
    const String videoIdfour = 'dhgEpr87Yac';
    const double startSecondsfour = 585;
    const String videoIdfive = 'C7zy1OQ-2f0';
    const double startSecondsfive = 23;

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
                      word: """hint""",
                      // alsoEnglishWord: "also: hint",
                      britshText: """IpaUK: /hɪnt/""",
                      americanText: """IpaUS: /hɪnt/""",
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
کوردی: ئاماژە، بەگوێ‌دادان، مێزە، پلار، لاپلار، نیشانە، کورتەئاماژە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شتێک کە بە ناڕاستەوخۆ دەیڵێیت یان دەیکەیت بۆ ئەوەی بە کەسێک بڵێیت کە چۆن بیردەکەیتەوە"""),
                    SentencesRow(
                      englishText:
                          """He gave a broad hint (= one that was obvious) that he was thinking of retiring.""",
                      kurdishText:
                          """ئاماژەیەکی ئاشكرای دا کە بیر لە خانەنشین‌بوون دەکاتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He resented any hint that he might be to blame.""",
                      kurdishText:
                          """ڕقی لە هەر ئاماژەیەک بوو کە ئەو ڕەنگە بەرپرسیار بێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I dropped a few subtle hints about the payment being due.""",
                      kurdishText:
                          """چەند ئاماژەیەکی ناڕوون دا کە کاتی پارەوەرگرتنە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Is that a hint to me to leave?""",
                      kurdishText: """ئەوە ئاماژەیە بۆم کە بچم؟""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە ئاماژە بەوە دەکات کە چی ڕوودەدات لە داهاتوودا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: sign"),
                    SentencesRow(
                      englishText:
                          """At the first hint of trouble, they left.""",
                      kurdishText: """لەگەڵ یەکەم ئاماژەی کێشە، ڕۆشتن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The opening scene gives us a hint of things to come.""",
                      kurdishText:
                          """دیمەنی دەستپێک ژمارەیەک ئاماژەمان پێدەدات کە چی ڕوودەدات.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کەمێک لە شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: suggestion، trace"),
                    SentencesRow(
                      englishText:
                          """There was a hint of sadness in his voice.""",
                      kurdishText: """کەمێک لە نیگەرانی لە دەنگیدا بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do I detect a hint of jealousy in your voice?""",
                      kurdishText:
                          """ئایا ئەوە کەمێک لە حەسوودییە لە دەنگتدا دەیبینم؟""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He showed not a hint of remorse.""",
                      kurdishText: """تۆزقاڵێک لە پەشیمانی پیشان نەدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The slightest hint of gossip upset her.""",
                      kurdishText: """کەمترین قسەوقسەڵۆک بێزاری دەکرد.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کەمێک زانیاری یان ڕاوێژ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: tip"),
                    SentencesRow(
                      englishText:
                          """The teacher’s book gives useful hints on how to develop reading skills.""",
                      kurdishText:
                          """پەرتووکی مامۆستاکە زانیاری دەدات لەسەر ئەوەی چۆن شارەزایی خوێندنەوە گەشە پێبدەیت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ئاماژەکردن بە شتێک بە شێوەی ناڕاستەوخۆ"""),
                    SentencesRow(
                      englishText: """What are you hinting at?""",
                      kurdishText: """ئاماژە بە چی دەکەیت؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They hinted (that) there might be more job losses.""",
                      kurdishText:
                          """ئاماژەیان بەوە کرد کە لەدەستچوونی کاری زیاتر هەبێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He hinted strongly that he would be resigning soon.""",
                      kurdishText:
                          """بە ڕێژەیەکی زۆر ئاماژەی بەوە کرد کە دەکرێت زوو دەست لەکار بکێشێتەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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