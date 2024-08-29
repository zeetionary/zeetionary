import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryenclose extends StatefulWidget {
  const EnglishEntryenclose({super.key});

  @override
  State<EnglishEntryenclose> createState() => _EnglishEntryencloseState();
}

class _EnglishEntryencloseState extends State<EnglishEntryenclose> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("enclose");
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
                      word: "enclose",
                      // alsoEnglishWord: "also: enclose",
                      britshText: "IpaUK: /ɪnˈkləʊz/",
                      americanText: "IpaUS: /ɪnˈkləʊz/",
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  YoutubeEmbeddedsix(),
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "enclose";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The yard had been enclosed with iron railings.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("All translated words should be enclosed in brackets.");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She felt his arms enclose her.");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The park that encloses the monument has recently been enlarged.");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Please return the completed form, enclosing a recent photograph.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی: دە نێوان دانان، پێوەلکاندن، پێوەنووساندن
// """),
          const DefinitionKurdish(
              text:
                  """١. (کردار) بنیاتنانی دیوارێک، پەرژینێک، ھتد بە دەوری شتێکدا"""),
          SentencesRow(
            englishText: """The yard had been enclosed with iron railings.""",
            kurdishText: """حەوشەکە بە محاجەرەی ئاسنین داخرابوو.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """All translated words should be enclosed in brackets.""",
            kurdishText:
                """ھەموو وشەیەکی وەرگێڕدراو دەبێت بخردرێتە ناو کەوانە .""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (کردار) دەوردانی شتێک"""),
          SentencesRow(
            englishText: """She felt his arms enclose her.""",
            kurdishText: """(خوازراوی) ھەستی دەکرد باڵی لە دەوری ئاڵابوو.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The park that encloses the monument has recently been enlarged.""",
            kurdishText:
                """ئەو پارکەی کە دەوری مۆنیومێنتەکەی دابوو تازەگی گەورە کرابوو.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) ناردنی شتێک لە ھەمان پاکەت یان بەرگەنامەی شتێکی دیکە"""),
          SentencesRow(
            englishText:
                """Please return the completed form, enclosing a recent photograph.""",
            kurdishText:
                """تکایە فۆرمەکە بە تەواوی بگەڕێنەوە، ھاوپێچ لەگەڵ وێنەیەکی تازە.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US" ""),
          ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence600""",
          //   onPressedBritish: () => speaksentence6("en-GB"),
          //   onPressedAmerican: () => speaksentence6sentence700""",
          //   onPressedBritish: () => speaksentence7("en-GB"),
          //   onPressedAmerican: () => speaksentence7sentence800""",
          //   onPressedBritish: () => speaksentence8("en-GB"),
          //   onPressedAmerican: () => speaksentence8sentence900""",
          //   onPressedBritish: () => speaksentence9("en-GB"),
          //   onPressedAmerican: () => speaksentence9sentence_1000""",
          //   onPressedBritish: () => speaksentence10("en-GB"),
          //   onPressedAmerican: () => speaksentence10sentence1100""",
          //   onPressedBritish: () => speaksentence11("en-GB"),
          //   onPressedAmerican: () => speaksentence11sentence1200""",
          //   onPressedBritish: () => speaksentence12("en-GB"),
          //   onPressedAmerican: () => speaksentence12sentence1300""",
          //   onPressedBritish: () => speaksentence13("en-GB"),
          //   onPressedAmerican: () => speaksentence13sentence1400""",
          //   onPressedBritish: () => speaksentence14("en-GB"),
          //   onPressedAmerican: () => speaksentence14sentence1500""",
          //   onPressedBritish: () => speaksentence15("en-GB"),
          //   onPressedAmerican: () => speaksentence15sentence1600""",
          //   onPressedBritish: () => speaksentence16("en-GB"),
          //   onPressedAmerican: () => speaksentence16sentence1700""",
          //   onPressedBritish: () => speaksentence17("en-GB"),
          //   onPressedAmerican: () => speaksentence17sentence1800""",
          //   onPressedBritish: () => speaksentence18("en-GB"),
          //   onPressedAmerican: () => speaksentence18sentence1900""",
          //   onPressedBritish: () => speaksentence19("en-GB"),
          //   onPressedAmerican: () => speaksentence19sentence_2000""",
          //   onPressedBritish: () => speaksentence20("en-GB"),
          //   onPressedAmerican: () => speaksentence20sentence2100""",
          //   onPressedBritish: () => speaksentence21("en-GB"),
          //   onPressedAmerican: () => speaksentence21sentence2200""",
          //   onPressedBritish: () => speaksentence22("en-GB"),
          //   onPressedAmerican: () => speaksentence22sentence2300""",
          //   onPressedBritish: () => speaksentence23("en-GB"),
          //   onPressedAmerican: () => speaksentence23sentence2400""",
          //   onPressedBritish: () => speaksentence24("en-GB"),
          //   onPressedAmerican: () => speaksentence24sentence2500""",
          //   onPressedBritish: () => speaksentence25("en-GB"),
          //   onPressedAmerican: () => speaksentence25sentence2600""",
          //   onPressedBritish: () => speaksentence26("en-GB"),
          //   onPressedAmerican: () => speaksentence26sentence2700""",
          //   onPressedBritish: () => speaksentence27("en-GB"),
          //   onPressedAmerican: () => speaksentence27sentence2800""",
          //   onPressedBritish: () => speaksentence28("en-GB"),
          //   onPressedAmerican: () => speaksentence28sentence2900""",
          //   onPressedBritish: () => speaksentence29("en-GB"),
          //   onPressedAmerican: () => speaksentence29sentence_3000""",
          //   onPressedBritish: () => speaksentence30("en-GB"),
          //   onPressedAmerican: () => speaksentence30sentence3100""",
          //   onPressedBritish: () => speaksentence31("en-GB"),
          //   onPressedAmerican: () => speaksentence31sentence3200""",
          //   onPressedBritish: () => speaksentence32("en-GB"),
          //   onPressedAmerican: () => speaksentence32sentence3300""",
          //   onPressedBritish: () => speaksentence33("en-GB"),
          //   onPressedAmerican: () => speaksentence33sentence3400""",
          //   onPressedBritish: () => speaksentence34("en-GB"),
          //   onPressedAmerican: () => speaksentence34sentence3500""",
          //   onPressedBritish: () => speaksentence35("en-GB"),
          //   onPressedAmerican: () => speaksentence35sentence3600""",
          //   onPressedBritish: () => speaksentence36("en-GB"),
          //   onPressedAmerican: () => speaksentence36sentence3700""",
          //   onPressedBritish: () => speaksentence37("en-GB"),
          //   onPressedAmerican: () => speaksentence37sentence3800""",
          //   onPressedBritish: () => speaksentence38("en-GB"),
          //   onPressedAmerican: () => speaksentence38sentence3900""",
          //   onPressedBritish: () => speaksentence39("en-GB"),
          //   onPressedAmerican: () => speaksentence39sentence_4000""",
          //   onPressedBritish: () => speaksentence40("en-GB"),
          //   onPressedAmerican: () => speaksentence40sentence4100""",
          //   onPressedBritish: () => speaksentence41("en-GB"),
          //   onPressedAmerican: () => speaksentence41sentence4200""",
          //   onPressedBritish: () => speaksentence42("en-GB"),
          //   onPressedAmerican: () => speaksentence42sentence4300""",
          //   onPressedBritish: () => speaksentence43("en-GB"),
          //   onPressedAmerican: () => speaksentence43sentence4400""",
          //   onPressedBritish: () => speaksentence44("en-GB"),
          //   onPressedAmerican: () => speaksentence44sentence4500""",
          //   onPressedBritish: () => speaksentence45("en-GB"),
          //   onPressedAmerican: () => speaksentence45sentence4600""",
          //   onPressedBritish: () => speaksentence46("en-GB"),
          //   onPressedAmerican: () => speaksentence46sentence4700""",
          //   onPressedBritish: () => speaksentence47("en-GB"),
          //   onPressedAmerican: () => speaksentence47sentence4800""",
          //   onPressedBritish: () => speaksentence48("en-GB"),
          //   onPressedAmerican: () => speaksentence48sentence4900""",
          //   onPressedBritish: () => speaksentence49("en-GB"),
          //   onPressedAmerican: () => speaksentence49sentence_5000""",
          //   onPressedBritish: () => speaksentence50("en-GB"),
          //   onPressedAmerican: () => speaksentence50sentence5100""",
          //   onPressedBritish: () => speaksentence51("en-GB"),
          //   onPressedAmerican: () => speaksentence51sentence5200""",
          //   onPressedBritish: () => speaksentence52("en-GB"),
          //   onPressedAmerican: () => speaksentence52sentence5300""",
          //   onPressedBritish: () => speaksentence53("en-GB"),
          //   onPressedAmerican: () => speaksentence53sentence5400""",
          //   onPressedBritish: () => speaksentence54("en-GB"),
          //   onPressedAmerican: () => speaksentence54sentence5500""",
          //   onPressedBritish: () => speaksentence55("en-GB"),
          //   onPressedAmerican: () => speaksentence55sentence5600""",
          //   onPressedBritish: () => speaksentence56("en-GB"),
          //   onPressedAmerican: () => speaksentence56sentence5700""",
          //   onPressedBritish: () => speaksentence57("en-GB"),
          //   onPressedAmerican: () => speaksentence57sentence5800""",
          //   onPressedBritish: () => speaksentence58("en-GB"),
          //   onPressedAmerican: () => speaksentence58sentence5900""",
          //   onPressedBritish: () => speaksentence59("en-GB"),
          //   onPressedAmerican: () => speaksentence59sentence_6000""",
          //   onPressedBritish: () => speaksentence60("en-GB"),
          //   onPressedAmerican: () => speaksentence60sentence6100""",
          //   onPressedBritish: () => speaksentence61("en-GB"),
          //   onPressedAmerican: () => speaksentence61sentence6200""",
          //   onPressedBritish: () => speaksentence62("en-GB"),
          //   onPressedAmerican: () => speaksentence62sentence6300""",
          //   onPressedBritish: () => speaksentence63("en-GB"),
          //   onPressedAmerican: () => speaksentence63sentence6400""",
          //   onPressedBritish: () => speaksentence64("en-GB"),
          //   onPressedAmerican: () => speaksentence64sentence6500""",
          //   onPressedBritish: () => speaksentence65("en-GB"),
          //   onPressedAmerican: () => speaksentence65sentence6600""",
          //   onPressedBritish: () => speaksentence66("en-GB"),
          //   onPressedAmerican: () => speaksentence66sentence6700""",
          //   onPressedBritish: () => speaksentence67("en-GB"),
          //   onPressedAmerican: () => speaksentence67sentence6800""",
          //   onPressedBritish: () => speaksentence68("en-GB"),
          //   onPressedAmerican: () => speaksentence68sentence6900""",
          //   onPressedBritish: () => speaksentence69("en-GB"),
          //   onPressedAmerican: () => speaksentence69sentence_7000""",
          //   onPressedBritish: () => speaksentence70("en-GB"),
          //   onPressedAmerican: () => speaksentence70sentence7100""",
          //   onPressedBritish: () => speaksentence71("en-GB"),
          //   onPressedAmerican: () => speaksentence71sentence7200""",
          //   onPressedBritish: () => speaksentence72("en-GB"),
          //   onPressedAmerican: () => speaksentence72sentence7300""",
          //   onPressedBritish: () => speaksentence73("en-GB"),
          //   onPressedAmerican: () => speaksentence73sentence7400""",
          //   onPressedBritish: () => speaksentence74("en-GB"),
          //   onPressedAmerican: () => speaksentence74sentence7500""",
          //   onPressedBritish: () => speaksentence75("en-GB"),
          //   onPressedAmerican: () => speaksentence75sentence7600""",
          //   onPressedBritish: () => speaksentence76("en-GB"),
          //   onPressedAmerican: () => speaksentence76sentence7700""",
          //   onPressedBritish: () => speaksentence77("en-GB"),
          //   onPressedAmerican: () => speaksentence77sentence7800""",
          //   onPressedBritish: () => speaksentence78("en-GB"),
          //   onPressedAmerican: () => speaksentence78sentence7900""",
          //   onPressedBritish: () => speaksentence79("en-GB"),
          //   onPressedAmerican: () => speaksentence79sentence_8000""",
          //   onPressedBritish: () => speaksentence80("en-GB"),
          //   onPressedAmerican: () => speaksentence80sentence8100""",
          //   onPressedBritish: () => speaksentence81("en-GB"),
          //   onPressedAmerican: () => speaksentence81sentence8200""",
          //   onPressedBritish: () => speaksentence82("en-GB"),
          //   onPressedAmerican: () => speaksentence82sentence8300""",
          //   onPressedBritish: () => speaksentence83("en-GB"),
          //   onPressedAmerican: () => speaksentence83sentence8400""",
          //   onPressedBritish: () => speaksentence84("en-GB"),
          //   onPressedAmerican: () => speaksentence84("en-US" ""),
          // ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
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
- Verb: enclose (derived forms: enclosing, encloses, enclosed)
1. Surround, cover or wrap completely (= envelop, enfold, enwrap, wrap)
"Fog enclosed the house";
 
2. Surround completely (= close in, inclose, shut in)
"Darkness enclosed him";
 
3. Place, fit, or thrust (something) into another thing (= insert, inclose, stick in, put in, introduce)
"enclose your ticket here";
 
4. Close in (= hold in, confine)
"darkness enclosed him";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'ktVSavCov9Y';
  final double _startSeconds = 275;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'xZL3YRZOMW4';
  final double _startSeconds = 172;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'tqWXteVXo-A';
  final double _startSeconds = 842;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'PVs_xZ46Cxw';
  final double _startSeconds = 889;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'NZLbTuBDhJg';
  final double _startSeconds = 162;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '4Nr1AgIfajI';
  final double _startSeconds = 68;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'tSfrKccioxA';
  final double _startSeconds = 347;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB