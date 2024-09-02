import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryace extends StatefulWidget {
  const EnglishEntryace({super.key});

  @override
  State<EnglishEntryace> createState() => _EnglishEntryaceState();
}

class _EnglishEntryaceState extends State<EnglishEntryace> {
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
- Noun: ace (derived forms: aces)
1. The smallest whole number or a numeral representing this number (= one, 1, I, single, unity)
"he has the ace but will need a two and three to go with it";
 
2. One of four playing cards in a deck having a single pip on its face
 
3. [informal] Someone who is dazzlingly skilled in any field (= adept, champion, sensation, maven [US, informal], mavin [US, informal], virtuoso, genius, hotshot [informal], star, superstar, whiz [informal], whizz [informal], wizard [informal], wiz [informal], megastar [informal])
 
4. A serve that the receiver is unable to reach

- Verb: ace (derived forms: aces, acing, aced)
1. Easily do well at; pass perfectly (= breeze through [informal], pass with flying colors [US], sweep through, sail through, nail [informal], pass with flying colours [Brit, Cdn])
"You will ace";
 
2. Score an ace against
"He aced his opponents"
 
3. (golf) play (a hole) in one stroke
 
4. (tennis) serve an ace against (someone)

- Adjective: ace
1. Of the highest quality, skill, etc.; very good or impressive (= A-one [informal], crack [informal], first-rate, super, tiptop, topnotch [informal], top-notch [informal], tops [informal], A1 [informal], excellent, first-class, fantabulous [informal], splendid, ripping [Brit, informal], mean [informal], beezer [UK, archaic], lush [Brit, informal], stellar [informal], awesome [informal], brilliant, outstanding, top-drawer)
"an ace reporter";
 
2. Brilliant; very good (= socko [N. Amer, informal], righteous [US, slang], fab [Brit, informal], crucial [slang], rad [N. Amer, slang], radical [N. Amer, slang], nang [Brit, slang], phat [slang], legit [US, slang], awesomesauce [informal], amazeballs [informal], beaut [Austral, NZ, informal], lit [US, slang], storming [Brit, informal], blinding [Brit, slang], stonking [Brit, informal], brill [Brit, informal], wicked [slang], cushty [Brit, informal], def [slang], magic [Brit, slang], smokin' [slang], smoking [slang], super [informal], sick [N. Amer, slang])

- Noun: ACE
1. A major strategic headquarters of NATO safeguarding an area extending from Norway to Turkey (= Allied Command Europe)
 
2. Proteolytic enzyme that converts angiotensin I into angiotensin II (= angiotensin converting enzyme, angiotensin-converting enzyme)
""",
  );
// 188888880002200

  final String keyword = "ace";
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
    await flutterTts.speak("""ace""");
  }

  Future<void> speaka256981(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He aced all his tests.");
  }

  Future<void> speaka82694(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("French ace Mbappé scored a penalty.");
  }

  Future<void> speaka12748(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He served 20 aces in the match.");
  }

  Future<void> speaka19437(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had an ace time.");
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
                      word: """ace""",
                      // alsoEnglishWord: "also: ace",
                      britshText: """IpaUK: /eɪs/""",
                      americanText: """IpaUS: /eɪs/""",
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
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: (پەڕێن) تەک، تەکخاڵ، تاک، تاق، ئاس، یەکجارباش، بێ‌وێنە، بێ‌ھاوتا، عال، تۆزێ، نەختێ، نیسکێ
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) سەرکەوتووبوون لە شتێک" ""),
                          SentencesRow(
                            englishText: "He aced all his tests.",
                            kurdishText:
                                "لە ھەموو تاقیکردنەوەکانی سەرکەوتووبوو.",
                            onPressedBritish: () => speaka256981("en-GB"),
                            onPressedAmerican: () =>
                                speaka256981("en-US"), // REPLACE ace
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) کاردێکی یاریی کۆنکان بە سمبولێکی گەورەوە لە ناوەڕاستی کە دەکرێت گەورەترین یان نزمترین بەھای ھەبێت"""),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) کەسێک کە زۆرباشە لە کردنی شتێک"""),
                          SentencesRow(
                            englishText: "French ace Mbappé scored a penalty.",
                            kurdishText:
                                "بلیمەتەکەی فەرەنسا، مباپێ، لێدانێکی سزای کرد بە گۆڵ.",
                            onPressedBritish: () => speaka82694("en-GB"),
                            onPressedAmerican: () =>
                                speaka82694("en-US"), // REPLACE ace
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) لە یاری تێنسدا، یەکەم سێرڤە کە ھێندە خێرایە دەبێت بە خاڵ """),
                          SentencesRow(
                            englishText: "He served 20 aces in the match.",
                            kurdishText:
                                "لە یارییەکەدا ٢٠ جار ھەر بە یەکەم لێدان خاڵی تۆمارکرد.",
                            onPressedBritish: () => speaka12748("en-GB"),
                            onPressedAmerican: () =>
                                speaka12748("en-US"), // REPLACE ace
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) زۆرباش """),
                          SentencesRow(
                            englishText: "We had an ace time.",
                            kurdishText: "کاتێکی زۆرخۆشمان ھەبوو.",
                            onPressedBritish: () => speaka19437("en-GB"),
                            onPressedAmerican: () =>
                                speaka19437("en-US"), // REPLACE ace
                          ),
                        ],
                      ),
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
                  YoutubeEmbeddedsix(),
                  YoutubeEmbeddedseven(),
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1512;

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

  final String _videoId = 'LBSFeJ1WLv4';
  final double _startSeconds = 218;

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

  final String _videoId = 'UWialL0r81k';
  final double _startSeconds = 488;

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

  final String _videoId = 'iogjPsCceqc';
  final double _startSeconds = 376;

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

  final String _videoId = '4hG9wI5-_Lc';
  final double _startSeconds = 153;

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

  final String _videoId = 'ARiX-z9a044';
  final double _startSeconds = 154;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '6kfpLFvmCIQ';
  final double _startSeconds = 93;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'fyXD3X8zITA';
  final double _startSeconds = 99;

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

// end
