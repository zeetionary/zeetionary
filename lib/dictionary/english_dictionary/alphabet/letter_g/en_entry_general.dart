import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygeneral extends StatefulWidget {
  const EnglishEntrygeneral({super.key});

  @override
  State<EnglishEntrygeneral> createState() => _EnglishEntrygeneralState();
}

class _EnglishEntrygeneralState extends State<EnglishEntrygeneral> {
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
- Adjective: general
1. Applying to all or most members of a category or group
"the general public"; "general assistance"; "a general rule"; "in general terms"; "comprehensible to the general reader"
 
2. Not specialized or limited to one class of things
"general studies"; "general knowledge"
 
3. Prevailing among and common to the general public
"the general discontent"
 
4. Somewhat indefinite
"bearing a general resemblance to the original"; "a general description of the merchandise"
 
5. Of worldwide scope or applicability (= cosmopolitan, ecumenical, oecumenical [archaic], universal, worldwide, world-wide, global)
"an issue of general import";
 
6. (medicine) affecting the entire body
"a general anaesthetic"; "general symptoms"

- Noun: general (derived forms: generals)
1. (military) a general officer of the highest rank (= full general)
 
2. The head of a religious order or congregation (= superior general)
 
3. A fact about the whole (as opposed to particular)
"he discussed the general but neglected the particular"

- Verb: general (derived forms: generaling, generalled, generals, generalling, generaled)
1. Command as a general
""",
  );

  final String keyword = "general";
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
    await flutterTts.speak("""general""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The general opinion is that the conference was a success.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There is general agreement on that point.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The general trend has been a slow decline in output.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bad weather has been fairly general.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The general consensus was that the scheme was too expensive.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There was a general amnesty for crimes committed during the civil war.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There is one exception to this general principle.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""As a general rule he did what he could to be helpful.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This opinion is common among the general population.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I know how it works in general terms.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They gave a general description of the man.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Carton here uses the word ‘business’ in a very general sense.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They fired in the general direction of the enemy.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We shall keep the discussion fairly general.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The building was in a general state of disrepair.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Both generals had commanded units in that area.""");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """general""",
                      // alsoEnglishWord: "also: general",
                      britshText: """IpaUK: /ˈdʒenrəl/""",
                      americanText: """IpaUS: /ˈdʒenrəl/""",
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
کوردی: گشتی، ھەمەکی، ھەموو، خەڵک، خەڵکی ڕەمەکی، جەماوەر، تێکڕا، گشت، گشتگیر، گشتگرەوە، نابەرتەسک، ھەمووگر، سەراپاگیر، سەرتاسەری، سەرانسەری، ھەمەلایەنە، گشت‌لایەنە،	ھەمیشەیی،	ئاسایی، عەدەتی،	(لە لێکدانا) سەرـ، ـگشتی، سەرۆک، سەرۆکی گشتی، فەرماندەر، سەرکردە
"""),
// With short examples define "general", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە کاریگەری دەبێت لە زۆرینەی خەڵک، شوێن، یان شت"""),
                    SentencesRow(
                      englishText:
                          """The general opinion is that the conference was a success.""",
                      kurdishText:
                          """بۆچوونی گشتی (= زۆرینە) ئەوەیە کە کۆنفرانسەکە سەرکەوتووبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """There is general agreement on that point.""",
                              kurdishText:
                                  """ڕێکەوتنی گشتی لەسەر ئەو خاڵە ھەیە.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The general trend has been a slow decline in output.""",
                              kurdishText:
                                  """ترێندی گشتی ھێواشییەک بووە لە بەرھەمھێنان.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The bad weather has been fairly general (= has affected most areas).""",
                              kurdishText:
                                  """کەشە خراپەکە تا ڕادەیەک گشتی بووە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The general consensus was that the scheme was too expensive.""",
                              kurdishText:
                                  """ھاودەنگی گشتی ئەوەیە کە پلانەکە زۆری تێدەچوو.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There was a general amnesty for crimes committed during the civil war.""",
                              kurdishText:
                                  """لێبوردنی گشتی ھەبوو بۆ ئەو تاوانانەی کە لە ماوەی جەنگە ناوخۆییەکە ئەنجام دران.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) ئاسایی؛ وەک ھەمیشە"""),
                    SentencesRow(
                      englishText:
                          """There is one exception to this general principle.""",
                      kurdishText: """یەک لادان ھەیە بۆ ئەم بنچینە گشتییە.""",
                      englishNote:
                          """This means there is one specific case where the usual rule does not apply.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As a general rule (= usually) he did what he could to be helpful.""",
                      kurdishText:
                          """بەشێوەیەکی گشتی ئەوەی دەکرد کە بیتوانایە بۆ یارمەتی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This opinion is common among the general population (= ordinary people).""",
                      kurdishText:
                          """ئەم بۆچوونە باوە لەناو خەڵکە گشتییەکەدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە بەشە گرنگەکانی شتێک لەخۆ دەگرێت نەک وردەکاری"""),
                    SentencesRow(
                      englishText: """I know how it works in general terms.""",
                      kurdishText: """بە گشتگیری دەزانم چۆن کار دەکات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They gave a general description of the man.""",
                      kurdishText:
                          """ناساندنێکی گشتگیری پیاوەکەیان دا بەدەستەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Carton here uses the word ‘business’ in a very general sense.""",
                      kurdishText:
                          """کارتن لێرەدا وشەی 'business' بە شێوەیەکی گشتی بەکاردێنێت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) بە نزیکەیی بەو ئاراستەیەی کە باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """They fired in the general direction of the enemy.""",
                      kurdishText:
                          """بە ئاراستەی گشتی دوژمندا تەقەیان دەکرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە تایبەت نییە بە بابەتێکی دیاریکراو یان تایبەت"""),
                    SentencesRow(
                      englishText:
                          """We shall keep the discussion fairly general.""",
                      kurdishText:
                          """دەبێت باسەکە بە کەمێک گشتگیر بھیڵێنەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) کە پەیوەندیدار نییە بە یەک لایەنی کەسێک یان شتێک"""),
                    SentencesRow(
                      englishText:
                          """The building was in a general state of disrepair.""",
                      kurdishText: """بیناکە لە دۆخێکی گشتی شێواویدا بوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) ئەفسەرێکی زۆر پلە بەرز لە ھێزی ئاسمانی ئەمریکا؛ ئەفسەری بەرزترین پێگە لە ھێزی دەریایی ئەمریکا"""),
                    SentencesRow(
                      englishText:
                          """Both generals had commanded units in that area.""",
                      kurdishText:
                          """ھەردوو ژەنەڕاڵەکە ستایشی یەکەکانی ئەو ناوچەیان کرد.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
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

const String _videoIdend = '_wNsZEqpKUA';
const double _startSecondsend = 522;
const String _videoIdone = 'HDntl7yzzVI';
const double _startSecondsone = 175;
const String _videoIdtwo = 'DA2ukcfd9Vo';
const double _startSecondstwo = 90;
const String _videoIdthree = 'QEbYo07jLoY';
const double _startSecondsthree = 700;
const String _videoIdfour = '1tUfxNIlnqY';
const double _startSecondsfour = 339;
const String _videoIdfive = 's3B-qp3U5G0';
const double _startSecondsfive = 529;

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