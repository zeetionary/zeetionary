import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygreen extends StatefulWidget {
  const EnglishEntrygreen({super.key});

  @override
  State<EnglishEntrygreen> createState() => _EnglishEntrygreenState();
}

class _EnglishEntrygreenState extends State<EnglishEntrygreen> {
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
- Adjective: green (derived forms: greener, greenest)
1. Of the colour between blue and yellow in the colour spectrum; similar to the colour of fresh grass (= greenish, light-green, dark-green, greeny)
"a green tree"; "green fields"; "green paint"; "a light-green tree"; "a dark-green tree";
 
2. Not damaging to the environment, or directed at preventing environmental damage (= environmentally-friendly, eco-friendly)
"Retailers can influence consumers by promoting green products and ideas in their shops";
 
3. Looking pale and unhealthy
"you're looking green"; "green around the gills"
 
4. Naive and easily deceived or tricked (= fleeceable, gullible)
"at that early age she had been green and in love";
 
5. Concerned with, supporting or in conformity with the political principles of the Green Party
 
6. Not fully developed or mature; not ripe (= unripe, unripened, immature)
"fried green tomatoes"; "green wood";
 
7. [informal] Lacking practical experience or training (= inexperienced, inexperient [non-standard])
"The students poked fun at the green teacher";

- Noun: green (derived forms: greens)
1. Green colour or pigment; resembling the colour of growing grass (= greenness, viridity)
 
2. A piece of open land for recreational use in an urban area (= park, commons, common)
 
3. An area of closely cropped grass surrounding the hole on a golf course (= putting green, putting surface)
"the ball rolled across the green and into the bunker";
 
4. Any of various leafy plants or their leaves and stems eaten as vegetables (= greens, leafy vegetable)
 
5. [slang] A street name for ketamine (= K [slang], jet [slang], super acid [slang], special K [slang], honey oil [slang], cat valium [slang], super C [slang])

- Verb: green (derived forms: greens, greening, greened)
1. Turn or become green
"The trees are greening"

- Noun: Green (derived forms: Greens)
1. An environmentalist who belongs to the Green Party
 
2. United States labour leader who was president of the American Federation of Labor from 1924 to 1952 and who led the struggle with the Congress of Industrial Organizations (1873-1952) (= William Green)
 
3. A river that rises in western Wyoming and flows southward through Utah to become a tributary of the Colorado River (= Green River)
""",
  );

  final String keyword = "green";
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
    await flutterTts.speak("""green""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Wait for the light to turn green.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He's got pink walls and a green carpet, which to my mind looks all wrong.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I think I'll take your advice and get the green dress.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I wore that skirt with the green spots.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""After the rains, the land was green with new growth.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The recipe called for green tomatoes and vinegar.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The Green Party has pledged to invest heavily in public transport.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The new trainees are still very green.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their leaves are a dark green.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was dressed all in green.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The room was decorated in a combination of greens and blues.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Eat up your greens.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Young leaves may be eaten as salad greens.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Children were playing on the village green.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did the ball land on the green?""");
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
                      word: """green""",
                      // alsoEnglishWord: "also: green",
                      britshText: """IpaUK: /ɡriːn/""",
                      americanText: """IpaUS: /ɡriːn/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
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
کوردی: سەوز، کەسک، شین، سەرسەوز، سەوزایی، شینایی، سەوزەڵانی، شیناوەرد،	(میوە) کاڵ، شین، نەگەییو، فەریک، کاڵ‌وکرچ،	ناسک، تورت،	(دار) تەڕ، وشکەوەنەبوو، خاو،	چاونەکراوە، تازەکار، کەم‌ئەزموون، خاو، مناڵ، ناپوخت،	سادە، ساویلکە،	ڕەنگ‌بزرکاو، زەرد، ڕەنگ‌نەخۆش،	کاڵ، کەم‌ڕەنگ،	یەکجار بەخیل، چاوپێ‌ھەڵنەھاتوو،	سەربە ژینگەپارێزی، لایەنگری ژینگەپارێز، ژینگەپارێز، بەرگی سەوز، جل‌وبەرگی سەوز،	سەوزەڵانی، سەوزایی، شینایی، شیناوەرد، مێرگ، شوێنی سەوز
"""),
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) سەوز"""),
                    SentencesRow(
                      englishText:
                          """Wait for the light to turn green (= on traffic lights).""",
                      kurdishText:
                          """بوەستە ڕۆشناییەکە ببێت بە سەوز پێش ئەوەی بچیت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's got pink walls and a green carpet, which to my mind looks all wrong.""",
                      kurdishText:
                          """دیواری پەمەیی ق ڕایەخی سەوزی ھەیە، کە لای من ھەمووی ھەڵە دیارە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I think I'll take your advice and get the green dress.""",
                      kurdishText:
                          """پێموایە ئامۆژگارییەکەت لە گوێ دەگرم و جلە سەوزەکە دەکڕم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I wore that skirt with the green spots.""",
                      kurdishText:
                          """ئەو تەنوورەم لەبەر کرد کە خاڵی سەوزی تێدایە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە بە سەوزەگیا داپۆشراوە"""),
                    SentencesRow(
                      englishText:
                          """After the rains, the land was green with new growth.""",
                      kurdishText:
                          """دوای بارانەکان، زەوییەکان سەوز بوون بە سەوزبوونی تازە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە ھێشتا ئامادە نییە بخورێت"""),
                    SentencesRow(
                      englishText:
                          """The recipe called for green tomatoes and vinegar.""",
                      kurdishText:
                          """ڕەچەتەکە تەماتەی نەگەییو و سرکەی دەویست.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) پەیوەندیدار بە پارتی ژینگەپارێزان"""),
                    SentencesRow(
                      englishText:
                          """The Green Party has pledged to invest heavily in public transport.""",
                      kurdishText:
                          """پارتی سەوز بەڵێنی داوە وەبەرھێنان بە ڕێژەیەکی زۆر بکات لە کەرتی گواستنەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) کەسێکی گەنج و بێ‌ئەزموون"""),
                    SentencesRow(
                      englishText: """The new trainees are still very green.""",
                      kurdishText:
                          """ڕاھێنراوە تازەکان ھێشتا زۆر کەم‌ئەزموونن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) ڕەنگی سەوز"""),
                    SentencesRow(
                      englishText: """Their leaves are a dark green.""",
                      kurdishText: """گەڵاکانیان سەوزی کاڵن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was dressed all in green.""",
                      kurdishText: """تەواو ڕەنگی سەوزی لەبەربوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The room was decorated in a combination of greens and blues.""",
                      kurdishText:
                          """ژوورەکە بە تێکەڵەیەکی سەوز و شین ڕازێندرابوویەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) سەوزە کە گەڵاکەی سەوزێکی کاڵە، بۆ نموونە کەلەرم و سپێناخ"""),
                    SentencesRow(
                      englishText: """Eat up your greens.""",
                      kurdishText: """سەوزەکانت بخۆ.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Young leaves may be eaten as salad greens.""",
                      kurdishText:
                          """گەڵا تازەکان دەکرێت وەک سەوزەی زەڵاتە بخورێن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) ناوچەیەکی سەوزایی"""),
                    SentencesRow(
                      englishText:
                          """Children were playing on the village green.""",
                      kurdishText:
                          """منداڵان لە سەوزایی گوندەکە یارییان دەکرد.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ناوچەیەک لە گۆڕەپانی گۆڵف کە لە دەوری کونەکەیە و چیمەنەکەی کورتکراوەتەوە"""),
                    SentencesRow(
                      englishText: """Did the ball land on the green?""",
                      kurdishText: """تۆپەکە لەسەر سەوزاییەکە نیشتەوە؟""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
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

// 188888880002200
const String _videoIdend = 'hS2x1zl4rn0';
const double _startSecondsend = 1418;
const String _videoIdone = 'FHJ3CMWnVxY';
const double _startSecondsone = 142;
const String _videoIdtwo = 'hTqtGJwsJVE';
const double _startSecondstwo = 1875;
const String _videoIdthree = 'yjhibJ-OqxE';
const double _startSecondsthree = 290;
const String _videoIdfour = 'Ht0IbFNbfSY';
const double _startSecondsfour = 25;
const String _videoIdfive = 'uBstq-_zaYk';
const double _startSecondsfive = 86;

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