import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryadministration - replace speakAdministration - replace administration - /ədˌmɪnɪˈstreɪʃn/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadministration extends StatelessWidget {
  EnglishEntryadministration({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdministration(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("administration"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdminis2547(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university loses a lot of money through poor administration."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdminist3547(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was Secretary of Education in Obama's first administration."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdministr2222(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The administration of justice involves making sure that people are treated fairly in legal matters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdmi25682(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hospital administration can refuse patients' access to their own records."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdm25589(String languageCode) async {
    // DOPSUM: CHANGE speakAdministration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are strict controls on the administration of drugs."); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(
                                word:
                                    "administration"), // Find /ədˌmɪnɪˈstreɪʃn/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /ədˌmɪnɪˈstreɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAdministration("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ədˌmɪnɪˈstreɪʃn/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAdministration("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(), // FIND: 2,
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
کوردی: بەڕێوەبەری، بەڕێوەبردن، ھەڵسووڕاندن، بەڕێوەبەرایەتی، کارگێڕی،ج ێبەجێ‌کردن، پیادەکردن، سەرپەرشتی، سەرپەرستی، بەرپرسان، ھەڵسووڕێنەران، بەڕێوەبەران، میری، حکومەت، دان (سوێند)، بەڕێوەبەرایەتی، حکومەتی وڵات بەتایبەت لە ئەمریکا

١. (ناو) بەڕێوەبردنی شوێنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The university loses a lot of money through poor administration."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زانکۆکە پارەیەکی زۆر لەدەستدەدات بەھۆی خراپ بەڕێوەبردن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdminis2547("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdminis2547(
                                        // REPLACE: administration /ədˌmɪnɪˈstreɪʃn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) حکومەتی وڵاتێک، بەتایبەتی ئەمریکا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was Secretary of Education in Obama's first administration."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وەزیری پەروەردە بوو لە کابینەکەی ئۆباما."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdminist3547("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdminist3547(
                                        // REPLACE: administration /ədˌmɪnɪˈstreɪʃn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پڕۆسەی ڕێکخستنی شێوازی کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The administration of justice involves making sure that people are treated fairly in legal matters."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەڵسووڕاندنی کاری دادپەروەری ئەوە لەخۆدەگرێت کە دڵنیایی بدەیت کە خەڵکی بە یەکسانی مامەڵەیان لەگەڵ دەکرێت لە کێشە یاساییەکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakAdministr2222("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdministr2222(
                                        // REPLACE: administration /ədˌmɪnɪˈstreɪʃn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ئەو کەسانەی کە شوێنێک بەڕێوەدەبەن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The hospital administration can refuse patients' access to their own records."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرپرسانی نەخۆشخانەکە دەتوانن ڕێگری لە نەخۆشان بکەن داتای خودی خۆیان ببینن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdmi25682("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdmi25682(
                                        // REPLACE: administration /ədˌmɪnɪˈstreɪʃn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پێدانی دەرمان بە کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are strict controls on the administration of drugs."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆنترۆڵی توند ھەیە لەسەر پێدانی دەرمان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdm25589("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdm25589(
                                        // REPLACE: administration /ədˌmɪnɪˈstreɪʃn/
                                        "en-US"),
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
- Noun: administration (derived forms: administrations)
1. The work of organizing and managing the affairs of a business, organization or activity (= admin [informal])
 
2. A method of tending to or managing the affairs of some group of people (especially the group's business affairs) (= disposal)
 
3. The persons (or committees or departments etc.) who make up a body for the purpose of administering something (= governance, governing body, establishment, brass, organization, organisation [Brit], admin [informal])
"he claims that the present administration is corrupt";
 
4. The act of administering medication (= giving medication)
 
5. The tenure of a president (= presidency, presidential term)
"things were quiet during the Eisenhower administration";
 
6. The act of governing; exercising authority (= government, governing, governance, government activity)
"he had considerable experience of administration";
 
7. The act of meting out justice according to the law (= judicature)
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
    videoId: 'cCKkr2IIfVU',
    startSeconds: 96,
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
    videoId: 'yXj7Hfrc5PM',
    // startSeconds: 222222222222222,
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
    videoId: 'sV6uuMAnJUE',
    startSeconds: 885,
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
    videoId: 'nGrB-5ieeMU',
    startSeconds: 386,
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
    videoId: 'FQ4hvLqNfqo',
    startSeconds: 894,
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
    videoId: 'ziwYbVx_-qg',
    startSeconds: 98,
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
    videoId: 'IGyP2uMM3i0',
    startSeconds: 156,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'YAr7O8-iRgQ',
    startSeconds: 2058,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'o1RS7D_szJo',
    startSeconds: 1458,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '4XlZHweHEtc',
    startSeconds: 600,
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
