import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygrand extends StatefulWidget {
  const EnglishEntrygrand({super.key});

  @override
  State<EnglishEntrygrand> createState() => _EnglishEntrygrandState();
}

class _EnglishEntrygrandState extends State<EnglishEntrygrand> {
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
- Adjective: grand (derived forms: grander, grandest)
1. Of behaviour that is impressive and ambitious in scale or scope (= expansive, heroic)
"in the grand manner"; "collecting on a grand scale";
 
2. Of or befitting a lord (= august, lordly)
"of grand lineage";
 
3. Ostentatiously rich and superior in quality (= deluxe, gilded, luxurious, opulent, princely, sumptuous, lush, luxury)
"grand dining rooms";
 
4. Extraordinarily good or great; used especially as an intensifier (= fantastic, howling [informal], marvelous [US], marvellous [Brit, Cdn], rattling [informal], terrific, tremendous, wonderful, wondrous, phenomenal, epic [slang], magnificent, heavenly [informal])
"a grand trip to the Orient";
 
5. Of high moral or intellectual value; elevated in nature or style (= exalted, elevated, sublime, high-flown, high-minded, lofty, rarefied, rarified, idealistic, noble-minded)
"a grand purpose";
 
6. Large and impressive in physical size or extent
"the bridge is a grand structure"
 
7. The most important and magnificent in adornment
"grand ballroom"; "grand staircase"
 
8. Used of a person's appearance or behaviour; befitting an eminent person (= distinguished, imposing, magisterial)
"his grand bearing";

- Noun: grand (derived forms: grands)
1. A piano with the strings on a horizontal harp-shaped frame; usually supported by three legs (= grand piano)
 
2. [informal] A thousand dollars or pounds
""",
  );

  final String keyword = "grand";
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
    await flutterTts.speak("""grand""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's not a very grand house.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The wedding was a very grand occasion.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The Palace of Versailles is very grand.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We stayed at the Grand Hotel.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The gallery had its grand opening on 18 January.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""New Yorkers built their city on a grand scale.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The film won the grand prize at the Berlin Film Festival.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Tomorrow is the grand final with just 12 contestants left from the hundreds who entered.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're all Lord or Lady somebody, but they're not at all grand.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Thanks. That'll be grand!""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fred did a grand job of painting the house.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It'll cost you five grand!""");
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
                      word: """grand""",
                      // alsoEnglishWord: "also: grand",
                      britshText: """IpaUK: /ɡrænd/""",
                      americanText: """IpaUS: /ɡrænd/""",
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
کوردی: گەورە، مەزن، کەڵنگ، بەشکۆ، شکۆمەند،	زۆرچاک، یەکجار باش،	ھەرەگەورە، گەورە،	سەرەکی، گرنگ، بەرکەفتی،	گشت، ھەموو،	بەرین، بەربڵاو،	خۆپێ‌زلانە،	(ماف) ڕشت
"""),
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) سەرنجڕاکێش و گەورە یان گرنگ"""),
                    SentencesRow(
                      englishText: """It's not a very grand house.""",
                      kurdishText: """خانوویەکی زۆر گەورە نییە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),

                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The wedding was a very grand occasion.""",
                      kurdishText: """ئاھەنگە ھاوسەرگیرییەکە بۆنەیەکی زۆر بەشکۆ بوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The Palace of Versailles is very grand.""",
                      kurdishText: """کۆشكی ڤێرسای زۆر بەشکۆیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ھاوەڵناو) لە ناوی بینا، ھتد ــی سەرنجڕاکێش یان زۆر گەورە بەکاردێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We stayed at the Grand Hotel.""",
                      kurdishText: """لە ھوتێلە گەورەکە ماینەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),

                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ھاوەڵناو) کە پێویستی بە ھەوڵ، پارە، و کاتی زۆر ھەیە بۆ سەرکەوتن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The gallery had its grand opening on 18 January.""",
                      kurdishText: """پێشانگاکە کرانەوە شکۆدارەکەی لە ١٨ ــی کانوونی دووەم.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """New Yorkers built their city on a grand scale.""",
                      kurdishText: """نیویۆرکییەکان شارەکەیان لەسەر ئاستێکی مەزن درووست کرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ھاوەڵناو) بەکاردێت بۆ باسکردنی شتێک کە گرنگترین یان گەورەترینە لەناو جۆرەکەی خۆیدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The film won the grand prize at the Berlin Film Festival.""",
                      kurdishText: """فیلمەکە باڵاترین خەڵاتی فیستیڤاڵی فیلمی بەرلینی بردەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Tomorrow is the grand final with just 12 contestants left from the hundreds who entered.""",
                      kurdishText: """سبەی یاری گرنگی کۆتاییە بە تەنھا ١٢ ڕکابەر لە کۆی ئەو سەدان کەسەی بەژدارییان کرد.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ھاوەڵناو) ڕەفتارکردن بە شکۆوە بەھۆی ئەوەی سەر بە ئاستی باڵان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They're all Lord or Lady somebody, but they're not at all grand.""",
                      kurdishText: """ھەموویان فڵان بەڕێز یان خاتوونن، بەڵام کەسانی زۆر گرنگ نین.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ھاوەڵناو) کە زۆر باش یان نایاب دەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Thanks. That'll be grand!""",
                      kurdishText: """سوپاس. ئەوە نایاب دەبێت!""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Fred did a grand job of painting the house.""",
                      kurdishText: """فرێد ئیشێکی نایابی کردنی لە بۆیەکردنی خانووەکە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٧. (ناو) ١٠٠٠ پاوەند یان دۆلار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It'll cost you five grand!""",
                      kurdishText: """ئەوە پێنج ھەزار دەکەوێت لەسەرت!""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
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
const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 1199;
const String _videoIdone = 'e09xig209cQ';
const double _startSecondsone = 644;
const String _videoIdtwo = 'HDntl7yzzVI';
const double _startSecondstwo = 1348;
const String _videoIdthree = 'YRhqMWUH2Ig';
const double _startSecondsthree = 1406;
const String _videoIdfour = 'Mx8JkGHaGUI';
const double _startSecondsfour = 1565;
const String _videoIdfive = 'a9m3GD0DbPY';
const double _startSecondsfive = 77;

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