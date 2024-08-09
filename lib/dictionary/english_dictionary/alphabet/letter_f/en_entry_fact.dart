import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfact extends StatefulWidget {
  const EnglishEntryfact({super.key});

  @override
  State<EnglishEntryfact> createState() => _EnglishEntryfactState();
}

class _EnglishEntryfactState extends State<EnglishEntryfact> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""fact""");
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
                      word: """fact""",
                      // alsoEnglishWord: "also: fact",
                      britshText: """IpaUK: /fækt/""",
                      americanText: """IpaUS: /fækt/""",
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
  final String keyword = "fact";
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

    await flutterTts.speak("""First, some basic facts about healthy eating.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Isn't it a fact that the firm is losing money?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """It's a well-known fact that dogs have an acute sense of smell.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """I know for a fact that she's involved in something illegal.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The report is based on hard facts.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Get your facts right before you start making accusations.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We didn't get on well, and that's a fact.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The judge instructed both lawyers to stick to the facts of the case.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I wish you'd get your facts right!""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Do you know for a fact that he is in London?""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The story is based on fact.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Is the account fact or fiction?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""This is simply historical fact.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's important to distinguish between fact and opinion.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We don't hide the fact that we've made mistakes.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I could no longer ignore the fact that he was unhappy.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I did everything I could, and she acknowledged the fact.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The very fact that this happened more than once shows there is a problem.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Despite the fact that she was wearing a seat belt, she was thrown sharply forward.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Due to the fact that they did not read English, the prisoners were unaware of what they were signing.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ڕاستی، ھەیان، بووە، بوویەر، ڕووداو، شتی دیار و مسۆگەر، بوونی بەرچاو، ڕاستەقینە،	زانیاری
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) شتێک کە وەک ڕاستی سەیر دەکرێت، بە تایبەتی کە دەکرێت بسەلمێندرێت"""),
          SentencesRow(
            englishText: """First, some basic facts about healthy eating.""",
            kurdishText:
                """سەرەتا، ھەندێک ڕستی بنچینەیی سەبارەت بە خواردنی تەندرووست.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Isn't it a fact that the firm is losing money?""",
            kurdishText: """ئەوە ڕاستییەک نییە کە کۆمپانیاکە زیان دەکات؟""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """It's a well-known fact that dogs have an acute sense of smell.""",
                    kurdishText:
                        """ئەوە ڕاستییەکی باش زانراوە کە سەگ ھەستێکی بەھێزی بۆنکردنی ھەیە.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I know for a fact (= I am certain) that she's involved in something illegal.""",
                    kurdishText:
                        """وەک ڕاستییەک دەیزانم کە لە کارێکی نایاسایی تێوەگلاوە.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The report is based on hard facts (= information that can be proved to be true).""",
                    kurdishText:
                        """ڕاپۆرتەکە پشتی بە ڕاستیی حاشاھەڵنەگر گرتووە.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Get your facts right (= make sure your information is correct) before you start making accusations.""",
                    kurdishText:
                        """ڕاستییەکانت بەدڵنیایی وەربگرە پێش ئەوەی دەست بە تۆمەتبەخشینەوە بکەیت.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """We didn't get on well, and that's a fact.""",
                    kurdishText:
                        """باش لەگەڵ یەکدی نەگونجاین و ئەوە ڕاستییەکە.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The judge instructed both lawyers to stick to the facts of the case.""",
                    kurdishText:
                        """دادوەرەکە ڕێنمایی ھەردوو پارێزەرەکەی کرد پابەند بن بە ڕاستییەکانی کەیسەکەوە.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I wish you'd get your facts right!""",
                    kurdishText: """بەھیوام ڕاستییەکانت بە درووستی وەرگرتبا.""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Do you know for a fact that he is in London?""",
                    kurdishText: """دڵنیایت کە لە لەندەنە؟""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) شتی ڕاستی نەک درووستکراو"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The story is based on fact.""",
            kurdishText: """چیرۆکەکە پشتی بە ڕاستی بەستووە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Is the account fact or fiction?""",
            kurdishText: """گێڕانەوەکە ڕاستییە یان خەیاڵی؟""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """This is simply historical fact.""",
            kurdishText: """ئەمە بە ئاشکرایی ڕاستییەکی مێژووییە.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's important to distinguish between fact and opinion.""",
            kurdishText: """گرنگە جیاوازی لە نێوان ڕاستی و بۆچوون بکرێت.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) بۆ ئاماژەکردن بە دۆخێکی دیاریکراو کە بوونی ھەیە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We don't hide the fact that we've made mistakes.""",
            kurdishText: """ئەو ڕاستییە ناشارینەوە کە ھەڵەمان کردووە.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I could no longer ignore the fact that he was unhappy.""",
            kurdishText:
                """نەمدەتوانی چی دیکە ئەو ڕاستییە بشارمەوە کە دڵتەنگ بوو.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I did everything I could, and she acknowledged the fact.""",
            kurdishText: """ھەرچی توانیم کردم، و دانی نا بە ڕاستییەکەدا.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The very fact that this happened more than once shows there is a problem.""",
            kurdishText:
                """ئەو ڕاستییەی کە ئەمە زیاتر لە جارێک ڕوویدا ئەوە پیشان دەدات کە کێشەیەک ھەیە.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Despite the fact that she was wearing a seat belt, she was thrown sharply forward.""",
            kurdishText:
                """سەرەڕای ئەو ڕاستییەی کە پشتێنی سەلامەتیی بەستبوو، بە توندی بۆ پێشەوە فڕێدرا.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Due to the fact that they did not read English, the prisoners were unaware of what they were signing.""",
            kurdishText:
                """بەھۆی ئەو ڕاستییەی کە نەیاندەتوانی ئینگلیزی بخوێننەوە. زیندانییەکان بێ‌ئاگا بوون لەوەی چیان واژۆ دەکرد.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
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
- Noun: fact (derived forms: facts)
1. A piece of information about circumstances that exist or events that have occurred
"first you must collect all the facts of the case"
 
2. A statement or assertion of verified information about something that is the case or has happened
"he supported his argument with an impressive array of facts"
 
3. An event known to have happened or something known to have existed
"your fears have no basis in fact"; "how much of the story is fact and how much fiction is hard to tell"
 
4. A concept whose truth can be proved
"scientific hypotheses are not facts"
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

const String _videoIdend = '21Z4RIOFhMA';
const double _startSecondsend = 911;
const String _videoIdone = '40a1AAbq_LE';
const double _startSecondsone = 783;
const String _videoIdtwo = 'jQO-OrjpybQ';
const double _startSecondstwo = 555;
const String _videoIdthree = '5pXU5xUiSmc';
const double _startSecondsthree = 0;
const String _videoIdfour = 'GlPaFt6C56Y';
const double _startSecondsfour = 176;
const String _videoIdfive = 'AFS6saV981Q';
const double _startSecondsfive = 493;

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