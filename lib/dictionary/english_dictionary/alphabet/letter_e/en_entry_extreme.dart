import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryextreme extends StatefulWidget {
  const EnglishEntryextreme({super.key});

  @override
  State<EnglishEntryextreme> createState() => _EnglishEntryextremeState();
}

class _EnglishEntryextremeState extends State<EnglishEntryextreme> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""extreme""");
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
                      word: """extreme""",
                      // alsoEnglishWord: "also: extreme",
                      britshText: """IpaUK: /ɪkˈstriːm/""",
                      americanText: """IpaUS: /ɪkˈstriːm/""",
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "extreme";
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

    await flutterTts.speak("""The heat in the desert was extreme.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The film depicts extreme violence.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Such results should be treated with extreme caution.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Children will be removed from their parents only in extreme circumstances.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It can cause nausea and, in extreme cases, death.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She was forced to take extreme measures.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Don't go doing anything extreme like leaving the country.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """It was the most extreme example of cruelty to animals I had ever seen.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Fascism was basically an extreme form of nationalism.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Their ideas are too extreme for me.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She didn't like the idea—it sounded too extreme.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The city is in the extreme west of Ireland.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She sat on the extreme edge of her seat.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """He used to be very shy, but now he's gone to the opposite extreme.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """At the other extreme, the top 10 per cent receives 30 per cent of the nation's income.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Their views are at opposite extremes from each other.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The climate is mild with no extremes of temperature.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Many of these plants won't tolerate temperature extremes.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دوایین، ئاخر، کۆتایی، ئەوپەڕ، دوورترین، ھەرەدوور،	زۆرینە، پڕانی، زۆربە،	توندترین، سەخت‌ترین، توند(وتیژ)، نائاسایی، تیژی، قورس، ناخۆش، سەخت، گران، ئاریش، دژوار،	تونڕەو، زێدەڕەو، زێدەڕۆ، پەڕگر،	لەڕادەبەدەر، یەکجار زۆر، بێ‌ئەندازە، دواڕادە، دواپلە، کۆتایی، ئاخر، ئەوپەڕ، سەرپەڕ، سەر، دوایین (خاڵ)،	لا، ڕادە، ئەندازە،	تونڕەوی، زێدەڕەوی، پێ‌درێژی، پەڕگری، پەڕگیری
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) بە ئاستێکی زۆر"""),
          SentencesRow(
            englishText: """The heat in the desert was extreme.""",
            kurdishText: """گەرمای بیابانەکە زۆر توند بوو.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The film depicts extreme violence.""",
            kurdishText: """فیلمەکە توندوتیژی تەواو توند پیشان دەدات.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Such results should be treated with extreme caution.""",
            kurdishText:
                """ئەنجامی وەھا دەبێت بە وریایی تەواو زۆرەوە مامەڵەی لەگەڵ بکرێت.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ھاوەڵناو) کە ئاسایی نییە"""),
          SentencesRow(
            englishText:
                """Children will be removed from their parents only in extreme circumstances.""",
            kurdishText:
                """منداڵان تەنھا لە ھەلومەرجی تەواو نائاسایی لە دایک و باوک دەسەندرێتەوە.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It can cause nausea and, in extreme cases, death.""",
            kurdishText:
                """دەکرێت ببێتە ھۆکاری ھێڵنج‌دان و، لە دۆخی تایبەتدا، مردن.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She was forced to take extreme measures.""",
            kurdishText: """زۆری لێکرا ھەنگاوی تەووا توند بنێت.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Don't go doing anything extreme like leaving the country.""",
            kurdishText: """شتی زۆر نائاسایی وکە جێھێشتنی وڵات مەکە.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It was the most extreme example of cruelty to animals I had ever seen.""",
            kurdishText:
                """ئەوە نائاساییترین نموونەی دڕندەیی بەڵام بە ئاژەڵان بوو کە تا ئێستا دیبووم.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ھاوەڵناو) زۆر دوور لەوەی زۆر کەس بە ئاسایی، پەسەندکراو، یان گونجاوی دادەنێن"""),
          SentencesRow(
            englishText:
                """Fascism was basically an extreme form of nationalism.""",
            kurdishText:
                """فاشیزم لە بنەڕەت‌دا شێوەیەکی توندی نەتەوەپەرستی بوو.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Their ideas are too extreme for me.""",
            kurdishText: """بیرۆکەکانیان زۆر توندن بۆ من.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She didn't like the idea—it sounded too extreme.""",
            kurdishText: """حەزی بە بیرۆکەکە نەبوو ـ زۆر توند دیار بوو.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ھاوەڵناو) چەندە بکرێت دوور لە چەق، سەرەتا، یان ئەو ئاراستەیەی کە باسکراوە"""),
          SentencesRow(
            englishText: """The city is in the extreme west of Ireland.""",
            kurdishText: """شارەکە لە ئەوپەڕی ڕۆژئاوای ئێرلەندایە.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She sat on the extreme edge of her seat.""",
            kurdishText: """لە ئەوپەڕی قەراغی کورسییەکەی دانیشت.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) ھەست، دۆخ، شێوازی ڕەفتار، ھتد کە چەندە بکرێت جیاوازە لە یەکێکی دیکە، یان تەواو دژیەتی"""),
          SentencesRow(
            englishText:
                """He used to be very shy, but now he's gone to the opposite extreme (= changed from one extreme kind of behaviour to another).""",
            kurdishText:
                """جاران زۆر شەرمن بوو. بەڵام ئێستا ڕێک پێچەوانەیەتی.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """At the other extreme, the top 10 per cent receives 30 per cent of the nation's income.""",
            kurdishText:
                """لە پەڕەکەی دیکەوە، ١٠ لە سەد ڕێژەی ٣٠ لە سەدی داھاتی وڵاتەکەی دەبرد.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Their views are at opposite extremes from each other.""",
            kurdishText: """بۆچوونیان لە ڕادەی پێچەوانەن لە یەکەوە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٦. (ناو) بەرزترین ئاستی شتێک"""),
          SentencesRow(
            englishText:
                """The climate is mild with no extremes of temperature.""",
            kurdishText: """ئاووھەواکە ئارامە بەبێ ھیچ زۆرییەکی پلەی گەرمی.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Many of these plants won't tolerate temperature extremes.""",
            kurdishText:
                """زۆرێک لەم ڕووەکانە بەرگەی بەرزی پلەی گەرمی ناگرن.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
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
- Adjective: extreme (derived forms: extremest, extremes, extremer)
1. Of the greatest possible degree, extent or intensity (= utmost, uttermost)
"extreme cold";
 
2. Far beyond a norm in quantity, amount or degree; to an utmost degree
"an extreme example"; "extreme temperatures"; "extreme danger"
 
3. Beyond a norm in views or actions
"an extreme conservative"; "an extreme liberal"; "extreme views on integration"; "extreme opinions"
 
4، Most distant in any direction
"the extreme edge of town"

- Noun: extreme (derived forms: extremes)
1. The furthest or highest degree of something
"he carried it to extremes"
 
2. The point located farthest from the middle of something (= extreme point, extremum)
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

const String _videoIdend = 'VrKW58MS12g';
const double _startSecondsend = 662;
const String _videoIdone = 'XG8b7WhANNA';
const double _startSecondsone = 733;
const String _videoIdtwo = 'Oq-06inhB3U';
const double _startSecondstwo = 91;
const String _videoIdthree = 'Twb47ynU4lw';
const double _startSecondsthree = 29;
const String _videoIdfour = 'HpAEJVTdIZQ';
const double _startSecondsfour = 692;
const String _videoIdfive = 'AdqQWg3ImEw';
const double _startSecondsfive = 95;

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