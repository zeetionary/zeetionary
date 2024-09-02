import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryendless extends StatefulWidget {
  const EnglishEntryendless({super.key});

  @override
  State<EnglishEntryendless> createState() => _EnglishEntryendlessState();
}

class _EnglishEntryendlessState extends State<EnglishEntryendless> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""endless""");
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
                      word: """endless""",
                      // alsoEnglishWord: "also: endless",
                      britshText: """IpaUK: /ˈendləs/""",
                      americanText: """IpaUS: /ˈendləs/""",
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
  final String keyword = "endless";
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The possibilities are endless.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We don't have an endless supply of money, you know.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There were endless meetings to attend.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The journey seemed endless.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It was a seemingly endless eight weeks before the letter arrived.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const KurdishVocabulary(text: """
کوردی: بێ‌کۆتایی، بێ‌دوایی، کۆتایی‌نەھاتوو، بێ‌ئەندازە، بێ‌سەروبن، لەرادەبەدەر
"""),
          const DefinitionKurdish(
              text:
                  """١. (ھاوەڵناو) کە بڕ یان قەبارەیەکی زۆری ھەیە وا دەردەکەوێت کە کۆتایی نەبێت"""),
          SentencesRow(
            englishText: """The possibilities are endless.""",
            kurdishText: """ئەگەرەکان بێ‌کۆتان.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We don't have an endless supply of money, you know.""",
            kurdishText: """دەزانیت کە سەرچاوەی بێ‌کۆتای پارەمان نییە.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There were endless meetings to attend.""",
            kurdishText:
                """ژمارەیەکی زۆر لە کۆبوونەوە ھەبوون بۆ بەژداری تێیاندا.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ھاوەڵناو) کە بۆ ماوەیەکی زۆر بەردەوامە و وەھا دەردەکەوێت کە کۆتایی نەبێت"""),
          SentencesRow(
            englishText: """The journey seemed endless.""",
            kurdishText: """گەشتەکە بێ‌کۆتا دیاربوو.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It was a seemingly endless eight weeks before the letter arrived.""",
            kurdishText:
                """ھەشت ھەفتەی درێژخایەن دەرکەوتوو بوو پێش ئەوەی نامەکە گەشت.""",
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
- Adjective: endless
1. Tiresomely long; seemingly without end (= eternal, interminable, unending)
"endless debates"; "an endless conversation";
 
2. Infinitely great in number
"endless waves"
 
3. Having no known beginning and presumably no end (= dateless, sempiternal)
"time is endless";
 
4. Having the ends united so as to form a continuous whole
"an endless chain"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

const String _videoIdend = 'tXjHb5QmDV0';
const double _startSecondsend = 298;
const String _videoIdone = 'HDntl7yzzVI';
const double _startSecondsone = 1779;
const String _videoIdtwo = '544DTGHIBM0';
const double _startSecondstwo = 196;
const String _videoIdthree = 'mY3SEMTROas';
const double _startSecondsthree = 510;
const String _videoIdfour = 'uKgaVlMN7IY';
const double _startSecondsfour = 421;
const String _videoIdfive = 'yRmOWcWdQAo';
const double _startSecondsfive = 987;
const String _videoIdsix = '3RkhZgRNC1k';
const double _startSecondssix = 1108;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdsix,
      startSeconds: _startSecondssix,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdsix,
        startSeconds: _startSecondssix,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB