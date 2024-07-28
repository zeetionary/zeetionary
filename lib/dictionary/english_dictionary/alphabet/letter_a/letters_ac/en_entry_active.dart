import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryactive - replace speakActive - replace active - /ˈæktɪv/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryactive extends StatelessWidget {
  EnglishEntryactive({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakactive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("active");
  }

  Future<void> speakactive1257(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Staying physically active in later years can also keep you feeling younger.");
  }

  Future<void> speakactive4568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were both politically active.");
  }

  Future<void> speakacti4568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These animals are active only at night.");
  }

  Future<void> speakactive5847(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That child has a very active imagination.");
  }

  Future<void> speakactive5374(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ensure the website URL is an active link.");
  }

  Future<void> speakactive2538(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In ‘He was driving the car’, the verb is active.");
  }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  // Future<void> speakactive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "active"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈæktɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakactive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈæktɪv/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakactive("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: چالاک، خەبات‌کار، گورج، ئازا، لەش‌سووک، کارا، بەکار، بەجم‌وجوڵ، نەسرەوتوو، بزۆز، (ڕێزمان) دیار یان زانراو، کاریگەر، بەباندۆر، ڕشت، شێلگیر
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) سەرقاڵ بە کارکردن" ""),
                          SentencesRow(
                            englishText:
                                "Staying physically active in later years can also keep you feeling younger.",
                            kurdishText:
                                "ھێشتنەوەی چالاکیی جەستەیی لە کۆتاییەکانی ژیانت وات لێ دەکات ھەست بە گەنجی بکەی.",
                            onPressedBritish: () => speakactive1257("en-GB"),
                            onPressedAmerican: () => speakactive1257(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بەژداربوون لە شتێک"""),
                          SentencesRow(
                            englishText: "They were both politically active.",
                            kurdishText: "ھەردووکیان لە سیاسەتدا چالاک بوون.",
                            onPressedBritish: () => speakactive4568("en-GB"),
                            onPressedAmerican: () => speakactive4568(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) کردنی شتێک بە بەردەوامی"""),
                          SentencesRow(
                            englishText:
                                "These animals are active only at night.",
                            kurdishText: "ئەم ئاژەڵانە تەنھا لە شەودا چالاکن.",
                            onPressedBritish: () => speakacti4568("en-GB"),
                            onPressedAmerican: () => speakacti4568(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) کارا و پڕ لە بیرۆکە"""),
                          SentencesRow(
                            englishText:
                                "That child has a very active imagination.",
                            kurdishText: "ئەو منداڵە خەیاڵێکی کارای ھەیە.",
                            onPressedBritish: () => speakactive5847("en-GB"),
                            onPressedAmerican: () => speakactive5847(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە ھێشتا کاردەکات"""),
                          SentencesRow(
                            englishText:
                                "Ensure the website URL is an active link.",
                            kurdishText:
                                "دڵنیابەوە کە لینکی وێبسایتەکە چالاکە.",
                            onPressedBritish: () => speakactive5374("en-GB"),
                            onPressedAmerican: () => speakactive5374(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) لە ڕێزماندا ئەو کردارەیە کە بکەری ڕستەکە جێبەجێکەریەتی """),
                          SentencesRow(
                            englishText:
                                "In ‘He was driving the car’, the verb is active.",
                            kurdishText:
                                "لە ڕستەی 'ئەو ئۆتۆمبێلەکەی لێدەخوڕی،' کردارەکە لە شێوەی دیارە.",
                            onPressedBritish: () => speakactive2538("en-GB"),
                            onPressedAmerican: () => speakactive2538(
                                "en-US"), // REPLACE active /ˈæktɪv/
                          ),
                        ],
                      ),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedend(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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

  // Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: active 
1. Taking part in an activity (= participating)
"an active member of the club"; "he was politically active";
 
2. Characterized by energetic activity
"an active toddler"; "active as a gazelle"; "an active man is a man of action"
 
3. Disposed to take action or effectuate change
"a director who takes an active interest in corporate operations"; "an active antagonism"; "he was active in drawing attention to their grievances"
 
4. (military) engaged in or ready for military or naval operations (= combat-ready, fighting)
"on active duty";
 
5. In operation (= alive)
"an active tradition";
 
6. (pathology) tending to become more severe or wider in scope
"active tuberculosis"
 
7. Exerting influence or producing a change or effect
"an active ingredient"
 
8. Full of activity or engaged in continuous activity
"an active seaport"; "an active bond market"; "an active account"
 
9. (of the sun) characterized by an increased occurrence of sunspots and flares and radio emissions
 
10. (grammar) expressing that the subject of the sentence has the semantic function of actor:
 
11. (grammar) expressing action rather than a state of being
- dynamic
 
12. (of e.g. volcanoes) capable of erupting
 
13. (of e.g. volcanoes) erupting or liable to erupt
"active volcanoes"
 
14. Engaged in full-time work
"active duty"; "though past retirement age he is still active in his profession"

- Noun: active (derived forms: actives)
1. Chemical agent capable of activity (= active agent)
 
2. The voice used to indicate that the grammatical subject of the verb is performing the action or causing the happening denoted by the verb (= active voice)
"'The boy threw the ball' uses the active voice";
 
3. A person who is a participating member of an organization
"the club issues a list of members, both the actives and the retirees"
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '5pgxzPoxv4w';
  final double _startSeconds = 1;

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

  final String _videoId = 'E0WT1HtB-Sc';
  final double _startSeconds = 1;

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

  final String _videoId = 'z9SZKYxd0rk';
  final double _startSeconds = 1;

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

  final String _videoId = 'oxGqj3W0dkw';
  final double _startSeconds = 5;

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

  final String _videoId = 'MSq-KGj_cnY';
  final double _startSeconds = 13;

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

  final String _videoId = 'pEX1rAVv6qw';
  final double _startSeconds = 176;

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

  final String _videoId = 'JL0pqJeE4_w';
  final double _startSeconds = 1;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '96VbRWUPAA0';
  final double _startSeconds = 88;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'vb4goOr09Ok';
  final double _startSeconds = 258;

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

  final String _videoId = 'IpcljElEraQ';
  final double _startSeconds = 25;

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
