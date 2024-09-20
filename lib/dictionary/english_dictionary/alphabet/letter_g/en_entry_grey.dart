import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygrey extends StatefulWidget {
  const EnglishEntrygrey({super.key});

  @override
  State<EnglishEntrygrey> createState() => _EnglishEntrygreyState();
}

class _EnglishEntrygreyState extends State<EnglishEntrygrey> {
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
- Adjective: grey (derived forms: greyer, greyest)
Usage: Brit, Cdn (US: gray)
1. Of an achromatic colour of any lightness intermediate between the extremes of white and black (= gray [US], greyish [Brit, Cdn], grayish [US])
"the little grey cells"; "grey flannel suit";
 
2. Showing characteristics of age, especially having grey or white hair (= gray [US], grey-haired [Brit, Cdn], gray-haired [US], grey-headed [Brit, Cdn], gray-headed [US], grizzly, hoar, hoary, white-haired)
"whose beard with age is grey";
 
3. Used to signify the Confederate forces in the American Civil War (who wore grey uniforms) (= gray [US])
"a stalwart grey figure";
 
4. Intermediate in character or position (= gray [US])
"a grey area between clearly legal and strictly illegal";

- Noun: grey (derived forms: greys)
Usage: Brit, Cdn (US: gray)
1. A neutral achromatic colour midway between white and black (= gray [US], grayness [US], greyness [Brit, Cdn])
 
2. Clothing that is a grey colour (= gray [US])
"he was dressed in grey";
 
3. Any organization or party whose uniforms or badges are grey (= gray [US])
"the Confederate army was a vast grey";
 
4. Horse of a light grey or whitish colour (= gray [US])
 
5. The SI unit of energy absorbed from ionizing radiation; equal to the absorption of one joule of radiation energy by one kilogram of matter; one grey equals 100 rad (= gray [US], Gy)

- Verb: grey (derived forms: greyed, greying, greys)
Usage: Brit, Cdn (US: gray)
1. Make grey (= gray [US])
"The painter decided to grey the sky";
 
2. Turn grey (= gray [US])
"Her hair began to grey";

- Noun: Grey (derived forms: Greys)
1. Englishman who as Prime Minister implemented social reforms including the abolition of slavery throughout the British Empire (1764-1845) (= Charles Grey, Second Earl Grey)
 
2. Queen of England for nine days in 1553; she was quickly replaced by Mary Tudor and beheaded for treason (1536-1554) (= Lady Jane Grey)
 
3. United States writer of western adventure novels (1875-1939) (= Zane Grey)
""",
  );

  final String keyword = "grey";
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
    await flutterTts.speak("""grey""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her hair was turning grey.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He started to go/turn grey in his mid-forties.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hate these grey days.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The sky looks very grey. I think it's going to rain.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's gone very grey.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His face was grey with pain.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Life seems grey and pointless without him.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Ours is a company that isn't run by grey men in suits.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His eyes are a dark grey.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The adult male's wings are of light grey.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's riding the grey.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His hair was greying at the sides.""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """grey""",
                      // alsoEnglishWord: "also: grey",
                      britshText: """IpaUK: /ɡreɪ/""",
                      americanText: """IpaUS: /ɡreɪ/""",
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
کوردی: بۆر، فیلی، شینکی، قوڕقوشمی، خۆڵەمێشی، سوربی، (قژ) بۆز، سپی(تێکەوتوو)، (کەسێ) قژبۆر، مووبۆر، گەورە، ماش‌وبرنجی، مووبۆز،	پیرانە،	کۆن، قەدیمی،	دڵساردکەرەوە، ناھومێدکەر،	(ڕوخسار) ڕەنگ‌بزرکاو، زەردھەڵگەڕاو،	(ھەوا) ھەوری، لێڵ، تاریک،	ماندووکەر، عاجزکەر، وەڕەزکەر، دڵتەنگ‌کەر، ھیچ،	ئاسایی، بێ‌ناونیشان، بێ‌نێو،	(ڕەنگ) توند، تۆخ
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ھەبوونی ڕەنگی دووکەڵ یان خەڵەمێش"""),
                    SentencesRow(
                      englishText: """Her hair was turning grey.""",
                      kurdishText: """قژی خۆڵەمێشی دەبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He started to go/turn grey in his mid-forties.""",
                      kurdishText:
                          """لە ناوەڕاستی چلەکانی دەستی کرد بەوەی (قژی) خۆڵەمێشی بێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کەش‌وھەوای ھەوراوی"""),
                    SentencesRow(
                      englishText: """I hate these grey days.""",
                      kurdishText: """ڕقم لەم ڕۆژە ھەوراوییانەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The sky looks very grey. I think it's going to rain.""",
                      kurdishText:
                          """ئاسمان زۆر ھەوراوییە. پێموایە باران دەبارێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) ھەبوونی قژی خۆڵەمێشی"""),
                    SentencesRow(
                      englishText: """He's gone very grey.""",
                      kurdishText: """زۆر خۆڵەمێشی بووە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) ڕەنگپەڕیو بەھۆی ماندوویەتی، نەخۆشی، یان دڵتەنگی"""),
                    SentencesRow(
                      englishText: """His face was grey with pain.""",
                      kurdishText: """ڕووخساری لە ئازاردا دەرپەڕیو بووبوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە وات لێ دەکات دڵتەنگ بیت؛ کە حەزت نییە"""),
                    SentencesRow(
                      englishText:
                          """Life seems grey and pointless without him.""",
                      kurdishText: """ژیان بەبێ ئەو ھیچ و بێ‌مانا دیارە..""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) کە سەرنجڕاکێش نییە"""),
                    SentencesRow(
                      englishText:
                          """Ours is a company that isn't run by grey men in suits.""",
                      kurdishText:
                          """ھینەی ئێمە کۆمپانیاکە کە لە لایەن پیاوانی بێزارکەری قات لەبەرەوە بەڕێوە نابرێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) ڕەنگی خۆڵەمێشی"""),
                    SentencesRow(
                      englishText: """His eyes are a dark grey.""",
                      kurdishText: """چاوەکانی خۆڵەمێشی تاریکن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The adult male's wings are of light grey.""",
                      kurdishText:
                          """باڵەکانی نێرینە پێگەشتووەکان خۆڵەمێشی ڕۆشنن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) ئەسپی خۆڵەمێشی یان سپی"""),
                    SentencesRow(
                      englishText: """She's riding the grey.""",
                      kurdishText: """سواری ئەسپە بۆرەکە دەکات.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) بوون بە خۆڵەمێشی"""),
                    SentencesRow(
                      englishText: """His hair was greying at the sides.""",
                      kurdishText: """قژی لە لایەکانەوە خۆڵەمێشی دەبوو.""",
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

const String _videoIdend = 'RfXxh0Eff_w';
const double _startSecondsend = 12;
const String _videoIdone = 'umPDFJkH3_M';
const double _startSecondsone = 4;
const String _videoIdtwo = 'QJMTk8sBfFE';
const double _startSecondstwo = 10;
const String _videoIdthree = 'omcNGrnt7Sg';
const double _startSecondsthree = 1531;
const String _videoIdfour = 'iS7mO38uspg';
const double _startSecondsfour = 27;
const String _videoIdfive = 'Vs2tKCszzJc';
const double _startSecondsfive = 0;

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