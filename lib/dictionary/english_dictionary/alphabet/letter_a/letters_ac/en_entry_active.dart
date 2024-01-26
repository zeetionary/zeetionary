import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// replace these: replace EnglishEntryactive - replace speakActive - replace active - /ˈæktɪv/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryactive extends StatelessWidget {
  EnglishEntryactive({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakActive(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActive1257(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Staying physically active in later years can also keep you feeling younger."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActive4568(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were both politically active."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActi4568(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These animals are active only at night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActive5847(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "That child has a very active imagination."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActive5374(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ensure the website URL is an active link."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActive2538(String languageCode) async {
    // DOPSUM: CHANGE speakActive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In ‘He was driving the car’, the verb is active."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActive(String languageCode) async {
  //   // DOPSUM: CHANGE speakActive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("active"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
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
                            EntryTitle(word: "active"), // Find /ˈæktɪv/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈæktɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakActive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈæktɪv/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakActive("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
کوردی: چالاک، خەبات‌کار، گورج، ئازا، لەش‌سووک، کارا، بەکار، بەجم‌وجوڵ، نەسرەوتوو، بزۆز، (ڕێزمان) دیار یان زانراو، کاریگەر، بەباندۆر، ڕشت، شێلگیر

١. (ھاوەڵناو) سەرقاڵ بە کارکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Staying physically active in later years can also keep you feeling younger."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێشتنەوەی چالاکیی جەستەیی لە کۆتاییەکانی ژیانت وات لێ دەکات ھەست بە گەنجی بکەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActive1257("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActive1257(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بەژداربوون لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They were both politically active."),
                              const ExampleSentenceKurdish(
                                  text: "ھەردووکیان لە سیاسەتدا چالاک بوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActive4568("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActive4568(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) کردنی شتێک بە بەردەوامی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "These animals are active only at night."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم ئاژەڵانە تەنھا لە شەودا چالاکن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActi4568("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActi4568(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) کارا و پڕ لە بیرۆکە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "That child has a very active imagination."),
                              const ExampleSentenceKurdish(
                                  text: "ئەو منداڵە خەیاڵێکی کارای ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActive5847("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActive5847(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە ھێشتا کاردەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Ensure the website URL is an active link."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دڵنیابەوە کە لینکی وێبسایتەکە چالاکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActive5374("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActive5374(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) لە ڕێزماندا ئەو کردارەیە کە بکەری ڕستەکە جێبەجێکەریەتی """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "In ‘He was driving the car’, the verb is active."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ڕستەی 'ئەو ئۆتۆمبێلەکەی لێدەخوڕی،' کردارەکە لە شێوەی دیارە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakActive2538("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakActive2538(
                                        "en-US"), // REPLACE active /ˈæktɪv/
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '5pgxzPoxv4w',
    startSeconds: 1,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'E0WT1HtB-Sc',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'z9SZKYxd0rk',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'oxGqj3W0dkw',
    startSeconds: 5,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'MSq-KGj_cnY',
    startSeconds: 13,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'pEX1rAVv6qw',
    startSeconds: 176,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'JL0pqJeE4_w',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '96VbRWUPAA0',
    startSeconds: 88,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'vb4goOr09Ok',
    startSeconds: 258,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'IpcljElEraQ',
    startSeconds: 25,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end
