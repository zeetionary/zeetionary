import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryace - replace speakAce - replace ace - /eɪs/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryace extends StatelessWidget {
  EnglishEntryace({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAce(String languageCode) async {
    // DOPSUM: CHANGE speakAce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("ace"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA256981(String languageCode) async {
    // DOPSUM: CHANGE speakAce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He aced all his tests."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA82694(String languageCode) async {
    // DOPSUM: CHANGE speakAce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("French ace Mbappé scored a penalty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA12748(String languageCode) async {
    // DOPSUM: CHANGE speakAce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He served 20 aces in the match."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA19437(String languageCode) async {
    // DOPSUM: CHANGE speakAce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We had an ace time."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAce(String languageCode) async {
  //   // DOPSUM: CHANGE speakAce
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("ace"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // 2 + VIDEOS FIND: DOPSUM_WRITE_A_SENTENCE
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
                            EntryTitle(word: "ace"), // Find /eɪs/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /eɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAce("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /eɪs/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAce("en-US"),
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
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: (پەڕێن) تەک، تەکخاڵ، تاک، تاق، ئاس، یەکجارباش، بێ‌وێنە، بێ‌ھاوتا، عال، تۆزێ، نەختێ، نیسکێ

١. (کردار) سەرکەوتووبوون لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He aced all his tests."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ھەموو تاقیکردنەوەکانی سەرکەوتووبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA256981("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakA256981("en-US"), // REPLACE ace
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) کاردێکی یاریی کۆنکان بە سمبولێکی گەورەوە لە ناوەڕاستی کە دەکرێت گەورەترین یان نزمترین بەھای ھەبێت"""),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) کەسێک کە زۆرباشە لە کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "French ace Mbappé scored a penalty."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بلیمەتەکەی فەرەنسا، مباپێ، لێدانێکی سزای کرد بە گۆڵ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA82694("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakA82694("en-US"), // REPLACE ace
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) لە یاری تێنسدا، یەکەم سێرڤە کە ھێندە خێرایە دەبێت بە خاڵ """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He served 20 aces in the match."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە یارییەکەدا ٢٠ جار ھەر بە یەکەم لێدان خاڵی تۆمارکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA12748("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakA12748("en-US"), // REPLACE ace
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) زۆرباش """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We had an ace time."),
                              const ExampleSentenceKurdish(
                                  text: "کاتێکی زۆرخۆشمان ھەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA19437("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakA19437("en-US"), // REPLACE ace
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
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
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
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1512,
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
    videoId: 'LBSFeJ1WLv4',
    startSeconds: 218,
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
    videoId: 'UWialL0r81k',
    startSeconds: 488,
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
    videoId: 'iogjPsCceqc',
    startSeconds: 376,
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
    videoId: '4hG9wI5-_Lc',
    startSeconds: 153,
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
    videoId: 'ARiX-z9a044',
    startSeconds: 154,
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
    videoId: '6kfpLFvmCIQ',
    startSeconds: 93,
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
    videoId: 'fyXD3X8zITA',
    startSeconds: 99,
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
