import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryadvance - replace speakAdvance - replace advance - /ədˈvɑːns/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadvance extends StatelessWidget {
  EnglishEntryadvance({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdvance(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv2567(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We live in an age of rapid technological advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdvan3567(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Enemy advances had forced them to retreat into the mountains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv253(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The publishers have paid me an advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv23574(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had made advances to one of his colleagues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdvan6988(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our knowledge of the disease has advanced considerably over recent years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAd456(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The troops were finally given the order to advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv3568(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They worked together to advance the cause of democracy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva391(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We will advance you the money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva7864(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The article advances a new theory to explain changes in the climate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva8529(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The date of the trial has been advanced by one week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv9678(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Participants advance through the program by answering a series of questions."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAdvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAdvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "advance"), // Find /ədˈvɑːns/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ədˈvɑːns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAdvance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ədˈvɑːns/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAdvance("en-US"),
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
کوردی: پێشکەوتن، پێشکەوت، بەرکەوتن، چوونەپێش، پێش‌وەچوون، پێشڕەوی، ھەستان، بەرزبوونەوە، زۆربوون، چوونەسەرێ، چوونەسەرەوەی نرخ، گرانی، یارمەتی، قەرز، پیشەکی، پێش، پێش‌پێدان، ھەوڵ و تێکۆشان بۆ دەست‌پێ‌کردنی پێوەندی سێکسی، سازکردن
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەرەوپێشچوون و سەرکەوتن" ""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We live in an age of rapid technological advance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە سەردەمێکدا دەژین کە تەکنەلۆژیا بەخێرایی بەرەو پێشەوە دەچێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv2567("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv2567(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆ پێشەوە جووڵەی کۆمەڵێک کەس، بەتایبەت یەکەی سەربازی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Enemy advances had forced them to retreat into the mountains."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێشڕەویی دوژمن ناچاری کردبوون بکشێنەوە ناو چیکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdvan3567("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdvan3567(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پارەیەک کە لەپێشدا دەدرێت وەک پێشەکی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The publishers have paid me an advance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڵاوکەرەوەکان پێشەکییەکیان داوە پێم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv253("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv253(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ھەوڵدان بۆ دەستپێکردنی پەیوەندیی سێکسی لەگەڵ کەسێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He had made advances to one of his colleagues."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەوڵیدا پەیوەندی سێکسی لەگەڵ یەکێک لە ھاوکارەکانی درووست بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv23574("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv23574(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەرەوپێشچوون و گەشەکردن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Our knowledge of the disease has advanced considerably over recent years."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تێگەشتنمان بۆ نەخۆشییەکە زۆر بەرەوپێشچووە لە چەند ساڵی ڕابردوودا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdvan6988("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdvan6988(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) بەرەوپێشچوونی کۆمەڵە کەسێک، بەتایبەتی پێشڕەویکردنی سەربازی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The troops were finally given the order to advance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەربازان لە کۆتاییدا فەرمانی پێشڕەوییان پێدرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAd456("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAd456(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) یارمەتیدان لە سەرکەوتنی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They worked together to advance the cause of democracy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێکەوە کاریان کرد بۆ بەرەوپێشچوونی دۆزی دیموکراسی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv3568("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv3568(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پێدانی پارە لە پێش کاتی خۆی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We will advance you the money."),
                                    ExampleSentenceKurdish(
                                        text: "پارەکەت بە پێشەکی پێدەدەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva391("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva391(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) پێشنیارکردنی بیرۆکەیەک یان پلانێک بۆ گەنگەشەکردن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The article advances a new theory to explain changes in the climate."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وتارەکە بیردۆزێکی تازە پێشنیار دەکات بۆ ڕوونکردنەوەی گۆڕان لە ئاووھەوا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva7864("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva7864(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی کاتی ڕووداوێک بۆ ئەوەی زووتر ڕووبدات"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The date of the trial has been advanced by one week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێکەوتی دانیشتنەکەی دادگا یەک ھەفتە ھێنراوەتە پێشەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva8529("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva8529(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) چوونە قۆناغێکی دواتری شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Participants advance through the program by answering a series of questions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەژداربووان دەچنە قۆناغەکانی دواتری پڕۆگرامەکە بە وەڵامدانەوەی ژمارەیەک پرسیار."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv9678("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv9678(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
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
- Verb: advance (derived forms: advanced, advances, advancing)
1. Move forward, also in the metaphorical sense (= progress, pass on, move on, march on, go on)
"Time advances";
 
2. Bring forward for consideration or acceptance (= throw out)
"advance an argument";
 
3. Increase or raise (= boost, supercharge)
"advance the voltage in an electrical circuit";
 
4. Contribute to the progress or growth of (= promote, boost, further, encourage)
"I am advancing the use of computers in the classroom";
 
5. Cause to move forward (= bring forward)
 
6. Obtain advantages, such as points, etc. (= gain, win, pull ahead, make headway, get ahead, gain ground)
 
7. Make progress in knowledge or status (= progress, come on, come along, get on, get along, shape up)
"He advanced well in school";
 
8. Become more developed and sophisticated
"We are advancing technology every day"
 
9. Give a promotion to or assign to a higher position (= promote, upgrade, kick upstairs, raise, elevate)
"Women tend not to advance in the major law firms";

10. Pay in advance
"Can you advance me some money?"
 
11. Move forward (= set ahead)
"we have to advance clocks and watches when we travel eastward";
 
12. Rise in rate or price (= gain)
"The stock market advanced 24 points today";

- Noun: advance ((derived forms: advances))
1. A movement forward (= progress, progression)
"he listened for the advance of the troops";
 
2. A change for the better; progress in development (= improvement, betterment)
 
3. A tentative suggestion designed to elicit the reactions of others (= overture, approach, feeler)
"she rejected his advances";
 
4. The act of moving forward (as toward a goal) (= progress, progression, procession, advancement, forward motion, onward motion)
 
5. An amount paid before it is earned (= cash advance)
 
6. Increase in price or value (= rise)
"the news caused a general advance on the stock market";

- Adjective: advance 
1. Being ahead of time or need (= beforehand)
"gave advance warning";
 
2. Situated ahead or going before (= advanced, in advance)
"an advance party"; "an in advance party";
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
    videoId: 'X4qjfVZR51s',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Yi-lD_LX_qM',
    startSeconds: 217,
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
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1509,
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
    videoId: 'D_Y18GEjfNY',
    startSeconds: 148,
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
    videoId: 'yRmOWcWdQAo',
    startSeconds: 1176,
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
    videoId: 'IEp31mUaxfg',
    startSeconds: 211,
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
    videoId: 'IgF3OX8nT0w',
    startSeconds: 13,
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
    videoId: 'aTDG16Mh2_w',
    startSeconds: 224,
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
    videoId: 'YkmlPaGui5k',
    startSeconds: 1879,
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
    videoId: 'pTk9HnIwEYU',
    startSeconds: 434,
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
