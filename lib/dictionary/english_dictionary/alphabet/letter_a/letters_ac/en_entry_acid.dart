import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryacid - replace speakAcid - replace acid - /ˈæsɪd/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryacid extends StatelessWidget {
  EnglishEntryacid({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAcid(String languageCode) async {
    // DOPSUM: CHANGE speakAcid
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("acid"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc12846(String languageCode) async {
    // DOPSUM: CHANGE speakAcid
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The acid burned a hole in her coat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcid1598(String languageCode) async {
    // DOPSUM: CHANGE speakAcid
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It’s a very juicy fruit with a slightly acid flavour."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAcid(String languageCode) async {
  //   // DOPSUM: CHANGE speakAcid
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("acid"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, // 2 + VIDEOS FIND: DOPSUM_WRITE_A_SENTENCE
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
                            EntryTitle(word: "acid"), // Find /ˈæsɪd/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈæsɪd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAcid("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈæsɪd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAcid("en-US"),
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
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: ترش، ترشەڵۆک

١. (ناو) مادەیەکی کیمیایی کە زۆرجار ترشە و ھایدرۆجینی تێدایە، ھایدرۆجینەکە دەکرێت بگۆڕدرێتەوە بە کانزایەک بۆ درووستکردنی خوێ. ئەسید بەزۆری ترشییەکی زۆری ھەیە کە دەکرێت کون درووستبکات لە شتێکدا یان زیان بگەیەنێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The acid burned a hole in her coat."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەسیدەکە کونێکی درووستکرد لە پاڵتاوەکەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAc12846("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAc12846(
                                        "en-US"), // REPLACE acid /ˈæsɪd/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە ئەسیدی تێدایە"""),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شتێک کە زۆر ترشە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It’s a very juicy fruit with a slightly acid flavour."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "میوەیەکی زۆر ئاودارە لەگەڵ بوونی کەمێک تامی ترشی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcid1598("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAcid1598(
                                        "en-US"), // REPLACE acid /ˈæsɪd/
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
                    // YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
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
- Noun: acid (derived forms: acids)
1. Any of various water-soluble compounds having a sour taste and capable of turning litmus red and reacting with a base to form a salt
 
2. A corrosive liquid with a pH less than 7; a solution of in water of a substance that releases hydrogen ions
 
3. [slang] Street name for lysergic acid diethylamide (= back breaker [slang], battery-acid [slang], dose [slang], dot [slang], Elvis [slang], loony toons [slang], Lucy in the sky with diamonds [slang], pane [slang], superman [slang], window pane [slang])

- Adjective: acid 
1. Harsh or corrosive in tone (= acerb, acerbic, acrid, bitter, blistering, caustic, sulfurous [N. Amer], sulphurous [Brit, Cdn], virulent, vitriolic, acidulous, sulphureous [Brit])
"a barrage of acid comments";
 
2. Being sour to the taste (= acidic, acidulent, acidulous)
"They found a medium-sized red glossy fruit with a juicy and very acid pulp";
 
3. (chemistry) having the characteristics of an acid
"an acid reaction"
 
4. (music, as a modifier) being a distortion (as if hallucinogenic) of an existing genre
"acid house"
 
5. (geology) rich in silica
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
    videoId: 'WDetHC86Dgo',
    startSeconds: 252,
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
    videoId: 'SenOeiLOmL0',
    startSeconds: 282,
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
    videoId: 'CXvG2CBJ3SE',
    startSeconds: 505,
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
    videoId: 'X3TAROotFfM',
    startSeconds: 162,
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
    videoId: 'S3ksC_8jGuc',
    startSeconds: 168,
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
    videoId: 'hUBsxCcJeUc',
    startSeconds: 122,
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

// end
