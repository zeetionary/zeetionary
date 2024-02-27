import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclose extends StatelessWidget {
  // blank divider
  EnglishEntryclose({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclose(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("close"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses1(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "// speakcloses111111111111111111111111111111111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses2(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses3(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses4(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses5(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses6(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses7(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses8(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses9(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses10(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses11(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses12(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses13(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "close"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kləʊzd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclose("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kləʊzd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclose("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: 
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) پێنناسە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "// speakcloses111111111111111111111111111111111"),
                                    ExampleSentenceKurdish(
                                        text: "رستە_رستە_رستە_رستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "close", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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
- Verb: close (Derived forms: closing, closed, closes)
1. Move so that an opening or passage is obstructed; make shut (= shut)
"Close the door";
 
2. Stop being open; become shut or obstructed (= shut)
"The windows closed with a loud bang";
 
3. Cease to operate or cause to cease operating (= close up, fold, shut down, close down)
"The owners decided to move and to close the factory"; "My business closes every night at 8 P.M."; "close up the shop"; "close down the shop";
 
4. Finish or terminate (meetings, speeches, etc.)
"The meeting was closed with a charge by the chairman of the board"
 
5. Finish in a particular way or with a particular event (= conclude)
"The concert closed with a nocturne by Chopin";
 
6. Complete a business deal, negotiation, or an agreement
"We closed on the house on Friday"; "They closed the deal on the building"
 
7. Be priced or listed when trading stops
"The stock market closed high this Friday"; "My new stocks closed at £59 last night"
 
8. Engage at close quarters
"close with the enemy"
 
9. Cause a window or an application to disappear on a computer desktop
 
10. (ball game) change one's body stance so that the forward shoulder and foot are closer to the intended point of impact
 
11. Come together, as if in an embrace
"Her arms came together around her long lost relative"; "Her arms closed around her long lost relative"
 
12. Draw near
"The probe closed with the space station"
 
13. Bring together all the elements or parts of
"Management closed ranks"
 
14. Bar access to
"Due to the accident, the road had to be closed for several hours"
 
15. Fill or stop up (= fill up)
"Can you close the cracks with caulking?";
 
16. Unite or bring into contact or bring together the edges of (= close up)
"close the circuit"; "close a wound"; "close up an umbrella";
 
17. Finish a game in baseball by protecting a lead
"The relief pitcher closed with two runs in the second inning"

- Adjective: close (Derived forms: closest, closer)
1. At or within a short distance in space or time or having elements near each other
"close to noon"; "how close are we to town?"; "a close formation of ships"
 
2. Close in relevance or relationship
"a close family"; "we are all...in close sympathy with..."; "close kin"; "a close resemblance"
 
3. Not far distant in time, space, degree or circumstances (= near, nigh)
"she was close to tears"; "had a close call";
 
4. Rigorously attentive; strict and thorough
"close supervision"; "paid close attention"; "a close study"; "kept a close watch on expenditures"
 
5. Marked by fidelity to an original (= faithful)
"a close translation";
 
6. (of a contest or contestants) evenly matched (= tight)
"a close contest";
 
7. In close proximity; crowded (= confining)
"close quarters";
 
8. Lacking fresh air (= airless, stuffy, unaired)
"the dreadfully close atmosphere";
 
9. (of textiles) having little space between threads; dense (= tight)
"a close weave";
 
10. Strictly confined or guarded
"kept under close custody"
 
11. Confined to specific persons
"a close secret"
 
12. Fitting closely but comfortably (= snug, close-fitting)
"a close fit";
 
13. Used of hair or haircuts
"a close military haircut"
 
14. Giving or spending with reluctance (= cheeseparing, near, penny-pinching, skinny)
"very close with his money";
 
15. Inclined to secrecy or reticence about divulging information (= closelipped, closemouthed, secretive, tightlipped)
"although they knew her whereabouts her friends kept close about it";

- Adverb: close 
1. Not far away in position, relationship or time (= near, nigh)
"the bullet didn't come close"; "don't get too close to the fire";
 
2. In an attentive manner (= closely, tight)
"he remained close on his guard";

- Noun: close (Derived forms: closes)
1. The temporal end; the concluding time (= stopping point, finale, finis, finish, last, conclusion)
"they were playing better at the close of the season";
 
2. The last section of a communication (= conclusion, end, closing, ending)
 
3. The concluding part of any performance (= finale, closing curtain, finis)
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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

// speakcloses111111111111111111111111111111111
// end WORD_WEB