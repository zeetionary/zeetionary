import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfoul extends StatefulWidget {
  const EnglishEntryfoul({super.key});

  @override
  State<EnglishEntryfoul> createState() => _EnglishEntryfoulState();
}

class _EnglishEntryfoulState extends State<EnglishEntryfoul> {
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
- Adjective: foul (derived forms: foulest, fouler)
1. Highly offensive; arousing aversion or disgust (= disgusting, disgustful [archaic], distasteful, loathly, loathsome, repellent, repellant, repelling, revolting, skanky [informal], wicked, yucky [informal], gross-out [informal], loathful [archaic], yukky [informal])
"a foul smell";
 
2. Offensively malodorous (= fetid, foetid [Brit], foul-smelling, funky [N. Amer, informal], noisome, smelly, stinking, ill-scented)
"a foul odour"; "a foul-smelling odour";
 
3. Violating accepted standards or rules (= cheating, dirty, unsporting, unsportsmanlike)
"used foul means to gain power";
 
4. (of a manuscript) defaced with changes (= dirty, marked-up)
"foul copy";
 
5. Characterized by obscenity (= filthy, nasty, smutty)
"foul language";
 
6. Disgustingly dirty; filled or smeared with offensive matter (= filthy, nasty, cruddy [informal])
"a foul pond";
 
7. (nautical) not having freedom of motion due to collision or entanglement; entangled (= afoul, fouled)
"a foul anchor";
 
8. (of a baseball) not hit between the foul lines

- Noun: foul (derived forms: fouls)
1. (sport) an act that violates the rules of a sport

- Verb: foul (derived forms: fouls, fouling, fouled)
1. (baseball) hit a foul ball (= pollute, contaminate)
 
2. Make impure in a bad way; make something harmful, especially by the addition of some unwanted substance
"The industrial wastes fouled the lake";
 
3. Become or cause to become obstructed (= clog, choke off, clog up, back up, congest, choke)
"The leaves foul our drains in the Fall";
 
4. Commit a foul; break the rules
 
5. Spoil, spot, stain, or pollute (= befoul, defile, maculate [literary])
"The townspeople fouled the river by emptying raw sewage into it";
 
6. Make unclean
"foul the water"
 
7. Become soiled and dirty
""",
  );

  final String keyword = "foul";
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
    await flutterTts.speak("""foul""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Foul drinking water was blamed for the epidemic.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She could smell his foul breath.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The air in the cell was foul.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's in a foul mood.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This tastes foul.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His boss has a foul temper.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She exploded in a torrent of foul language at me.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What foul weather!""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""All murders are foul and futile.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Harper was penalized for a foul tackle.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was fouled inside the penalty area.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do not permit your dog to foul the grass.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The oil spill fouled the river and destroyed habitats.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rope fouled the propeller.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The referee did not call a foul on the player.""");
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
                      word: """foul""",
                      // alsoEnglishWord: "also: foul",
                      britshText: """IpaUK: /faʊl/""",
                      americanText: """IpaUS: /faʊl/""",
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
کوردی: بۆگەن، گەنیو، گنخاو، ناخۆش، خراپ، پیس، چەپەڵ، گڵاو، گەمار،	(ھەوا) ناخۆش، ناسازگار، پڕبا و بارانی، خراپ،	قەبە، ناحەز، ناشیرین، کرێت، ناشایست،	پیس، بێ‌بەزەیی، چەپەڵ،	ھەرزە، پڕ لە قسەی ساردوسووک،	(وەرزش) نادادپەروەرانە، ناپیاوانە، دوور لە ڕێسای وەرزشی،	(دەریاوانی، تەناف و ھتد) لێک‌ئاڵاو، ئاڵۆسکاو، تێک‌گیراو، شێواو،	(قۆڵەکوورە و ھتد) گیراو، بەرگیراو
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) پیس و بۆگەن"""),
                    SentencesRow(
                      englishText:
                          """Foul drinking water was blamed for the epidemic.""",
                      kurdishText:
                          """ئاوی خواردنەوەی پیس بە ھۆکاری نەخۆشییەکە دانرا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She could smell his foul breath.""",
                      kurdishText: """بۆنی ھەناسە پیسەکەیی دەکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The air in the cell was foul.""",
                      kurdishText: """ھەوای زیندانەکە پیس بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) زۆر ناخۆش؛ زۆر خراپ"""),
                    SentencesRow(
                      englishText: """She's in a foul mood.""",
                      kurdishText: """لە کەشێکی خراپە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This tastes foul.""",
                      kurdishText: """تامی ناخۆشە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His boss has a foul temper.""",
                      kurdishText: """سەرپەرشتەکەی مەجازێکی خراپی ھەیە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە زمانی ناشرین لەخۆ دەگرێت"""),
                    SentencesRow(
                      englishText:
                          """She exploded in a torrent of foul language at me.""",
                      kurdishText: """بە لێشاوێک لە جنێو پێمدا ھاتە خوار.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کەشووھەوای خراپ کە با و بارانی بەھێزی ھەیە"""),
                    SentencesRow(
                      englishText: """What foul weather!""",
                      kurdishText: """چی کەشێکی نالەبارە!""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) کە نائەخلاقی و دڕندانەیە"""),
                    SentencesRow(
                      englishText: """All murders are foul and futile.""",
                      kurdishText: """ھەموو کوشتنەکان چەپەڵ و بێ‌بەرھەمن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) کە دژ بە یاسکانی وەرزشێکە"""),
                    SentencesRow(
                      englishText:
                          """Harper was penalized for a foul tackle.""",
                      kurdishText: """ھارپەر بۆ لێسەندنێکی ھەڵە سزادرا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) کردنی شتێک بە یاریزانێکی دیکە کە دژ بە یاساکانی یارییەکەیە؛ لە یاریی بەیسبۆڵ واتا تۆپەکە بخەیتە دەرەوەی یاریگاکە"""),
                    SentencesRow(
                      englishText: """He was fouled inside the penalty area.""",
                      kurdishText: """لە ناو ناوچەی سزا لێیدرا.""",
                      englishNote:
                          """This means that he was unfairly stopped or obstructed by another player within the designated penalty area on the field.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) پیسکردن، بە تایبەتی بە پیسایی جەستە"""),
                    SentencesRow(
                      englishText:
                          """Do not permit your dog to foul the grass.""",
                      kurdishText:
                          """ڕێگا بە سەگەکەت مەدە چیمەنەکە پیس بکات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The oil spill fouled the river and destroyed habitats.""",
                      kurdishText:
                          """ڕژانی نەوتەکە ڕووبارەکەی پیسکرد و چەندین ژینگەی ژیانکردنی لەناوبرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) گیربوون لە شتێک و وەستاندنی لە کارکردن"""),
                    SentencesRow(
                      englishText: """The rope fouled the propeller.""",
                      kurdishText: """حەبلەکە ئازڵکا بە پەروانەکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) کارێک کە دژ بە یاساکانی یارییەکە"""),
                    SentencesRow(
                      englishText:
                          """The referee did not call a foul on the player.""",
                      kurdishText:
                          """ناوبژیوانەکە فاوڵی ناگرت لەسەر یاریزانەکە.""",
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

const String _videoIdend = 'QLq6GEiHqR8';
const double _startSecondsend = 625;
const String _videoIdone = 'SY3y6zNTiLs';
const double _startSecondsone = 128;
const String _videoIdtwo = 'raSeaAeryWE';
const double _startSecondstwo = 984;
const String _videoIdthree = 'hoihoGGdQ4U';
const double _startSecondsthree = 697;
const String _videoIdfour = 'JoGjIRVY9t4';
const double _startSecondsfour = 1580;
const String _videoIdfive = 'mBbOF8LVCj4';
const double _startSecondsfive = 135;

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