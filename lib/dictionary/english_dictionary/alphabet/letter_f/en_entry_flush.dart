import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflush extends StatefulWidget {
  const EnglishEntryflush({super.key});

  @override
  State<EnglishEntryflush> createState() => _EnglishEntryflushState();
}

class _EnglishEntryflushState extends State<EnglishEntryflush> {
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
- Verb: flush (derived forms: flushing, flushed, flushes)
1. Turn red, as if in embarrassment or shame (= blush, crimson, redden)
"The girl flushed when a young man whistled as she walked by";
 
2. Cause to flow through something
"The garbage flushed down the river"
 
3. Glow or cause to glow with warm colour or light
"the sky flushed with rosy splendour"
 
4. Make level or straight (= level, even out, even)
"flush the ground";
 
5. Rinse, clean, or empty with a liquid (= scour, purge)
"flush the wound with antibiotics";
 
6. Irrigate with water from a sluice (= sluice)
 
7. Cause to flow or flood with or as if with water
"flush the meadows"

- Adverb: flush
1. Squarely or solidly
"hit him flush in the face"
 
2. In the same plane
"set it flush with the top of the table"

- Noun: flush (derived forms: flushes)
1. The period of greatest prosperity or productivity (= flower, prime, peak, heyday, bloom, blossom, efflorescence)
 
2. A rosy colour (especially in the cheeks) taken as a sign of good health (= bloom, blush, rosiness)
 
3. Sudden brief sensation of heat (associated with menopause and some mental disorders) (= hot flash [N. Amer], hot flush [Brit])
 
4. A poker hand with all 5 cards in the same suit
 
5. A sudden pleasurable excitement (= bang, charge, rush, thrill, kick, buzz [informal])
 
6. A sudden rapid flow (as of water) (= gush, outpouring)
"he heard the flush of a toilet";

7. Sudden reddening of the face (as from embarrassment, guilt, shame or modesty) (= blush)

- Adjective: flush
1. Of a surface exactly even with an adjoining one, forming the same plane
"a door flush with the wall"; "the bottom of the window is flush with the floor"
 
2. Having an abundant supply of money or possessions of value (= affluent, loaded [informal], moneyed, wealthy, substantial, minted [informal])
"a speculator flush with cash";
""",
  );

  final String keyword = "flush";
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
    await flutterTts.speak("""flush""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sam felt her cheeks flush red.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She flushed with anger.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He flushed scarlet with embarrassment.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""My children never flush the toilet after them.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Flush the pipe out with clean water.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Gallons of toxic waste were flushed into the sea.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Drinking lots of water will help to flush toxins out of the body.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're trying to flush him out of hiding.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Hunters are allowed to use dogs to flush foxes from their hiding places.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A pink flush spread over his cheeks.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There was an unhealthy flush across his thin face.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A flush of embarrassment rose to her cheeks.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Give the toilet a flush.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I’m flush this week—I’ll pay.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The company was flush with funds at that time.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Make sure the paving stones are flush with the lawn.""");
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
                      word: """flush""",
                      // alsoEnglishWord: "also: flush",
                      britshText: """IpaUK: /flʌʃ/""",
                      americanText: """IpaUS: /flʌʃ/""",
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
کوردی: لێشاوبەستنی ئاو،	فشار یان تەوژمی زۆری ئاو، ئاوتێگرتن، فیشقە،	سوورەوەبوون، سوورھەڵگەڕان،	ھەڵچوون،	ھەڕەت، تاف، جەنگە، سەرەتا، دەسپێک،	ھەڵدانی تازەی گەڵا، گوڵ و میوە
"""),
// With short examples define "flush", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) سووربوونەوە، بەتایبەتی بەھۆی شەرمەزاری، ئەوەی کە گەرماتە، یان تووڕەی"""),
                    SentencesRow(
                      englishText: """Sam felt her cheeks flush red.""",
                      kurdishText: """سام ھەستی کرد گۆناکانی سووربوونەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She flushed with anger.""",
                      kurdishText: """لە تووڕەییدا سووربوویەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He flushed scarlet with embarrassment.""",
                      kurdishText: """سکارلێتی لە خەجاڵەتیدا سوورکردەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) پاککردنەوەی سەرئاو"""),
                    SentencesRow(
                      englishText:
                          """My children never flush the toilet after them.""",
                      kurdishText:
                          """منداڵەکانم ھەرگیز سەرئاو دوای خۆیان پاکناکەنەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) پاککردنەوەی شتێک بەوەی ئاو بەناویدا تێپەڕێنیت"""),
                    SentencesRow(
                      englishText: """Flush the pipe out with clean water.""",
                      kurdishText: """بۆرییەکە بە ئاوی پاک پاکبکەوە.""",
                      englishNote:
                          """Also: Flush clean water through the pipe.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) نەھێشتنی شتێک بە بەکارھێنان یان پرژاندنی خێرای ئاو یان شلەی تر"""),
                    SentencesRow(
                      englishText:
                          """Gallons of toxic waste were flushed into the sea.""",
                      kurdishText:
                          """چەندین گاڵۆن لە پاشماوەی ژەھراوی فڕێدرانە دەریاوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Drinking lots of water will help to flush toxins out of the body.""",
                      kurdishText:
                          """خواردنەوەی ئاوێکی زۆر یارمەتیدەر دەبێت لە دەرکردنی مادەی پیس لە جەستە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) زۆرکردن لە ئاژەڵێک یان کەسێک کە ئەو شوێنە جێبھێڵێت کە خۆی لێشاردووە"""),
                    SentencesRow(
                      englishText:
                          """They're trying to flush him out of hiding.""",
                      kurdishText: """دەیانەوێت لە خۆحەشاردان سەری بکەن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Hunters are allowed to use dogs to flush foxes from their hiding places.""",
                      kurdishText:
                          """ڕاوکەران ڕێگا پێدراون کە سەگ بەکاربھێنن تاوەکو ڕێوی لە کونەکەی بھێننە دەرەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ڕەنگێکی سوور کە لەسەر ڕووخسار دەردەکەوێت بەھۆی ئەوەی کە شەرمەزار، بەجۆش، یان گەماتە"""),
                    SentencesRow(
                      englishText: """A pink flush spread over his cheeks.""",
                      kurdishText:
                          """ڕەنگێکی پەمەیی بەسەر ڕووخساریدا بڵاوبوویەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was an unhealthy flush across his thin face.""",
                      kurdishText:
                          """سووربوونەوەیەکی ناتەندرووست لەسەر ڕووخساری بوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) ھەستێکی بەھێزی لەناکاو"""),
                    SentencesRow(
                      englishText:
                          """A flush of embarrassment rose to her cheeks.""",
                      kurdishText:
                          """ھەستێکی شەرمەزاری بە گۆناکانیدا بڵاوبوویەوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) پاککردنەوەی سەرئاو بە ئاو پێداکردن"""),
                    SentencesRow(
                      englishText: """Give the toilet a flush.""",
                      kurdishText: """پاککردنەوەیەکی سەرئاوەکە بکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) ھەبوونی پارەیەکی زۆر، بەزۆری بۆ ماوەیەکی کەم"""),
                    SentencesRow(
                      englishText: """I’m flush this week—I’ll pay.""",
                      kurdishText: """ئەم ھەفتەیە پارەدارم ـ من دەیدەم.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company was flush with funds at that time.""",
                      kurdishText: """ئەو کاتە کۆمپانیاکە بەژێر پارەوە بوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) دوو ڕوو کە ھەمان بەرزییان ھەیە"""),
                    SentencesRow(
                      englishText:
                          """Make sure the paving stones are flush with the lawn.""",
                      kurdishText:
                          """دڵنیا بەرەوە کە بەردەکان ڕێکن لەگەڵ چیمەنەکە.""",
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

const String _videoIdend = 'BxWw8AO4ZmI';
const double _startSecondsend = 239;
const String _videoIdone = 'D_Y18GEjfNY';
const double _startSecondsone = 228;
const String _videoIdtwo = 'MzSktgpfD84';
const double _startSecondstwo = 522;
const String _videoIdthree = '57htei0Xw1E';
const double _startSecondsthree = 338;
const String _videoIdfour = '2xcWYu18a-w';
const double _startSecondsfour = 38;
const String _videoIdfive = '5e5MyNP6zYY';
const double _startSecondsfive = 88;

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