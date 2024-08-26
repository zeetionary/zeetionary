import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfirm extends StatefulWidget {
  const EnglishEntryfirm({super.key});

  @override
  State<EnglishEntryfirm> createState() => _EnglishEntryfirmState();
}

class _EnglishEntryfirmState extends State<EnglishEntryfirm> {
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
- Adjective: firm (derived forms: firmest, firmer)
1. Not soft or yielding to pressure (= solid)
"a firm mattress"; "the snow was firm underfoot";
 
2. With more than adequate force or sureness (= strong)
"a firm grasp";
 
3. Marked by firm determination or resolution; not shakable (= steadfast, steady, stiff, unbendable, unfaltering, unshakable, unwavering, unshakeable)
"firm convictions"; "a firm mouth";
 
4. Not subject to revision or change
"a firm contract"; "a firm offer"
 
5. (of especially a person's physical features) not shaking or trembling
"his voice was firm and confident"; "a firm step"
 
6. Not liable to fluctuate or especially to fall (= steady, unfluctuating)
"stocks are still firm";
 
7. Securely established
"holds a firm position as the country's leading poet"
 
8. Possessing the tone and resiliency of healthy tissue
"firm muscles"
 
9. Securely fixed in place (= fast, immobile)
"the post was still firm after being hit by the car";
 
10. Unwavering in devotion to friend, vow or cause (= loyal, truehearted, fast)
"a firm ally";

- Noun: firm (derived forms: firms)
1. The members of a business organization that owns or operates one or more establishments
"he worked for a brokerage firm"; (= house, business firm)

- Verb: firm (derived forms: firms, firmed, firming)
1. Become taut or tauter (= tauten)
"Your muscles will firm when you exercise regularly";
 
2. Make taut or tauter (= tauten)

- Adverb: firm
1. With resolute determination (= firmly, steadfastly, unwaveringly)
"you must stand firm";
""",
  );

  final String keyword = "firm";
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
    await flutterTts.speak("""firm""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They hired an engineering firm to produce a model of their device.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """By the age of only 28 she was a partner in a top law firm.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'm a designer at a London-based publishing firm.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""These peaches are still firm.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Bake the cakes until they are firm to the touch.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'd rather sleep on a firm mattress than a soft one.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She is a firm favourite with the children.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They remained firm friends.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""No firm agreement was reached.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We stand firm on these principles.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Stand the fish tank on a firm base.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """No building can stand without firm foundations, and neither can a marriage.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""With a firm grip on my hand, he pulled me away.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""‘No,’ she repeated, her voice firmer this time.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Parents must be firm with their children.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The company now has a firm footing in the marketplace.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We need to keep a firm grip on the situation.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The euro remained firm against the dollar, but fell against the yen.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Firm the soil around the plant.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This product claims to firm your body in six weeks.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """firm""",
                      // alsoEnglishWord: "also: firm",
                      britshText: """IpaUK: /fɜːm/""",
                      americanText: """IpaUS: /fɜːrm/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
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
                    const DividerDefinition(),
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
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: پتەو، تۆکمە، قایم (نە زۆر و نە کەم)، جێگیر، بەھێز، سەخت، نەلەق، پێ‌بەجێ، سەقامگیر، چەقیو، ڕەق، توند، ڕۆنەچوو، دانەدەر،	بەڕشت، شێلگر، (لەسەر)سوور، بڕا، پتەو، بەبڕیار،	یەکلایی‌کەرەوە، لێبڕاوانە،	بەوەفا، بەئەمەگ، یەکلایی،	پتەو، بەبیروباوەڕ، تۆکمە،	لێ‌ڕابینراو، باوەڕپێکراو، بەڵگەنامەیی، جێ‌متمانە،	تەواو، ڕەبەق،	سەقامگیر، جێگیر (پارە، دراو و ھتد)، پتەو، تۆکمە، یەکلایی‌کەرەوانە، لێبڕاوانە
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) بازرگانی یان کۆمپانیایەک"""),
                    SentencesRow(
                      englishText:
                          """They hired an engineering firm to produce a model of their device.""",
                      kurdishText:
                          """کۆمپانیایەکی ئەندازیارییان گرت بۆ درووستکردنی نموونەیەکی ئامێرەکەیان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """By the age of only 28 she was a partner in a top law firm.""",
                      kurdishText:
                          """لە تەمەنی ٢٨ ساڵیدا ھاوبەشی کۆمپانیایەکی باڵای یاسایی بوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm a designer at a London-based publishing firm.""",
                      kurdishText:
                          """دیزاینەرم لە کۆمپانیایەکی بڵاوکەرەوە لە لەندەن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) شتێک کە پتەو و سەختە بە ئاسانی ناگۆڕێت"""),
                    SentencesRow(
                      englishText: """These peaches are still firm.""",
                      kurdishText: """قۆخەکان ھێشتا توندن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Bake the cakes until they are firm to the touch.""",
                      kurdishText:
                          """کێکەکان ببرژێنە تاوەکو توندن بۆ دەستلێدان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'd rather sleep on a firm mattress than a soft one.""",
                      kurdishText:
                          """پێم باشترە لەسەر دۆشەکەیەکی توند بخەوم وەک لە نەرم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە ئەگەری کەمە بگۆڕێت"""),
                    SentencesRow(
                      englishText:
                          """She is a firm favourite with the children.""",
                      kurdishText: """دڵخوازێکی نەگۆڕی منداڵانە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They remained firm friends.""",
                      kurdishText: """وەک ھاوڕێی بەوەفا مانەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """No firm agreement was reached.""",
                      kurdishText: """ھیچ ڕێکەوتنێکی نەگۆڕ ئەنجام نەدرا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We stand firm on these principles.""",
                      kurdishText:
                          """بە پتەوی لەسەر ئەم بیروباوەڕانە دەمێنینەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کو توند لە شوێنێک جێگیرە"""),
                    SentencesRow(
                      englishText: """Stand the fish tank on a firm base.""",
                      kurdishText:
                          """حەوزی ماسییەکە لەسەر بناغەیەکی جێگیر دابنێ.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """No building can stand without firm foundations, and neither can a marriage.""",
                      kurdishText:
                          """ھیچ بینایەک ناتوانێت بەبێ بنچینەیەکی جێگیر بوەستێت، و ھەروەھا ھاوسەرگیریش.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) بەھێز و نەگۆڕ"""),
                    SentencesRow(
                      englishText:
                          """With a firm grip on my hand, he pulled me away.""",
                      kurdishText: """بە گرتنی توندی دەستم دووری خستمەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """‘No,’ she repeated, her voice firmer this time.""",
                      kurdishText:
                          """دووبارە گوتییەوە 'نەخێر'، ئەمجارە بە توندی.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) کە بەھێزە و وای پیشان دەدات لە کۆنترۆڵ دایە"""),
                    SentencesRow(
                      englishText:
                          """Parents must be firm with their children.""",
                      kurdishText:
                          """دایبابان دەبێت توند بن بەرامبەر منداڵەکانیان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company now has a firm footing in the marketplace.""",
                      kurdishText:
                          """کۆمپانیاکە ئێستا پێگەیەکی بەھێزی ھەیە لە مارکێتەکە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need to keep a firm grip on the situation.""",
                      kurdishText:
                          """دەبێت کۆنترۆڵی توندمان بەسەر دۆخەکەدا ھەبێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) کە دراوێک لە دراوێکی دیکە کەمتر نابێت"""),
                    SentencesRow(
                      englishText:
                          """The euro remained firm against the dollar, but fell against the yen.""",
                      kurdishText:
                          """یۆرۆ بەھێز بەرامبەر دۆلار مایەوە، بەڵام بەرامبەر یەن داشکا.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) ئەوەی شتێک بەھێز یان توند بکەیت"""),
                    SentencesRow(
                      englishText: """Firm the soil around the plant.""",
                      kurdishText: """خۆڵی دەوری ڕووەکەکە توند بکە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This product claims to firm your body in six weeks.""",
                      kurdishText:
                          """ئەم بەرھەمە بانگەشەی ئەوە دەکات کە لە شەش ھەفتەدا جەستەت توند دەکات.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
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
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
                  // YoutubeEmbeddedseven(),
                  // YoutubeEmbeddedeight(),
                  // YoutubeEmbeddednine(),
                  // YoutubeEmbeddedten(),
                  // YoutubeEmbeddedeleven(),
                  // YoutubeEmbeddedtwelve(),
                  // YoutubeEmbeddedthirteen(),
                  // YoutubeEmbeddeddfourteen(),
                  // YoutubeEmbeddedfifteen(),
                  // YoutubeEmbeddeddsixteen(),
                  // YoutubeEmbeddeddseventeen(),
                  // YoutubeEmbeddeddeighteen(),
                  // YoutubeEmbeddeddnineteen(),
                  // YoutubeEmbeddedtwenty(),
                  // YoutubeEmbeddedmulti(),
                  YoutubeEmbeddedend(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _videoIdend = 'DPZzrlFCD_I';
const double _startSecondsend = 43;
const String _videoIdone = 'qWAagS_MANg';
const double _startSecondsone = 443;
const String _videoIdtwo = '2fOWFfpLYW0';
const double _startSecondstwo = 170;
const String _videoIdthree = '7j5ul4XBjAI';
const double _startSecondsthree = 340;
const String _videoIdfour = '0jtWcq3zLfo';
const double _startSecondsfour = 29;
const String _videoIdfive = 'FdxDkLGCZxo';
const double _startSecondsfive = 90;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB