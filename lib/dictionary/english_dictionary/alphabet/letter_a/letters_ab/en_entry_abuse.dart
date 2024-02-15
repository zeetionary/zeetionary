// replace these: EnglishEntryabuse - speakAbuse - abuse - /əˈbjuːs/

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryabuse extends StatelessWidget {
  EnglishEntryabuse({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbuse(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abuse"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA5741(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The boy had been sexually abused."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA15876(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She abused her position as principal by giving jobs to her friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA1258(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People who abuse alcohol over a long period will develop health problems."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA14582(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The man burst into a torrent of foul-mouthed racist abuse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA25641(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She suffered years of physical abuse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA45961(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was arrested on charges of corruption and abuse of power."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA26935(String languageCode) async {
    // DOPSUM: CHANGE speakAbuse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The legal system in this country is open to abuse."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                                word: "abuse"), // DOPSUM: CHANGE WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: noun > /əˈbjuːs/, verb > /əˈbjuːz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAbuse("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: noun > /əˈbjuːs/, verb > /əˈbjuːz/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbuse("en-US"),
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
                          const DefinitionKurdish(text: """
کوردی: چەوت یان خراپ بەکارھێنان، خراپ جووڵانەوە، ھەڵس‌وکەوتی خراپ، بە توندوتیژی جووڵانەوە، جنێو، دەم‌چەوتی، ڕەف، سخێف، دەس‌درێژی (ڕەگەزی)، ئەشکەنجەی لەشی/جەستەیی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەکارھێنانی شتێک بەشێوەیەکی خراپ"
                                  ""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The legal system in this country is open to abuse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سیستەمی دادوەری لەم وڵاتە ئەکرێت خراپ بەکاربێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA26935("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA26935("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was arrested on charges of corruption and abuse of power."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستگیرکرا بە تۆمەتەکانی گەندڵی و خراپ بەکارھێنانی دەسەڵات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA45961("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA45961("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) مامەڵەی خراپ لەگەڵ کەسێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She suffered years of physical abuse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ چەندین ساڵ بەدەست توندوتیژی جەستەییەوە ناڵاندی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA25641("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA25641("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) قسەی چەوت و ناشرین و لەلایەن کەسێکی توڕەوە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The man burst into a torrent of foul-mouthed racist abuse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پیاوەکە دەستیکرد بە ژمارەیەکی زۆر لە قسەی پیسی ڕەگەزپەرستییانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA14582("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA14582("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بەکارھێنانی شتێک بە خراپی، یان بەکارھێنانی شتێکی خراپ کە زیانی بۆ جەستە ھەیە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "People who abuse alcohol over a long period will develop health problems."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو کەسانەی کە کە کحوول بۆ ماوەیەکی زۆر بەکاردێنن کێشەی تەندرووستییان بۆ درووستدەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA1258("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA1258("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەکارھێنانی زانیاری یان دەسەڵات بەشێوەیەکی خراپ"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She abused her position as principal by giving jobs to her friends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێگەکەی خراپ بەکارھێنا وەک بەڕێوەبەرێک بە پێدانی کار بە ھاوڕێکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA15876("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA15876("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) دەستدرێژیکردنە سەر کەسێک، زۆرجار دەستدرێژی سێکسی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The boy had been sexually abused."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کوڕەکە دەستدرێژیی سێکسی کرابووە سەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA5741("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA5741("en-US"),
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
                        YoutubeEmbeddedend(),
                      ],
                    ), // DOPSUM: FROM YOUTUBE BELOW
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
- Verb: abuse (derived forms: abused, abuses, abusing)
1. Treat badly (= mistreat, maltreat, ill-use, ill-treat, step on [informal])
"This boss abuses his workers";
 
2. Use to one's advantage in a way that was not intended (= pervert, misuse)
"Don't abuse the system";
 
3. Use foul or abusive language towards (= clapperclaw [archaic], blackguard, shout)
"The actress abused the policeman who gave her a parking ticket";
 
4. Use wrongly, improperly or excessively
"Her husband often abuses alcohol"; "while she was pregnant, she abused drugs"
 
5. Subject to sexual assault (= sexually assault)
"she was abused by her uncle";

- Noun: abuse (derived forms: abuses)
1.Cruel or inhumane treatment (= maltreatment, ill-treatment, ill-usage)
"the child showed signs of physical abuse";
 
2. A rude expression intended to offend or hurt (= insult, revilement, contumely [archaic], vilification)
"when a student made a stupid mistake he spared them no abuse";
 
3. Improper or excessive use (= misuse)
"the abuse of public funds"; "alcohol abuse";
 
4. (law) a statutory offence that provides that it is a crime to knowingly cause another person to engage in an unwanted sexual act by force or threat (= sexual assault, sexual abuse, sex crime, sex offense [US], sex offence [Brit, Cdn])
"most states have replaced the common law definition of rape with statutes defining sexual abuse";
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
    startSeconds: 313,
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
    videoId: '_0RTH57v66I',
    startSeconds: 948,
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
    videoId: '_0RTH57v66I',
    startSeconds: 948,
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
    videoId: 'vn1_vUghWzA',
    startSeconds: 103,
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
    videoId: 'wrsUbwKGuko',
    startSeconds: 2654,
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
    videoId: 'wrsUbwKGuko',
    startSeconds: 2654,
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
    videoId: 'Qc0vRRJuQic',
    startSeconds: 53,
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'SOq05_6w0ig',
    startSeconds: 734,
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

// end
