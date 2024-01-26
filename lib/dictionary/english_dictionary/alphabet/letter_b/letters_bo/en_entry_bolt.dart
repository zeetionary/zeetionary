import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bolt" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bolt - /bəʊlt/

enum TtsState { playing }

class EnglishEntrybolt extends StatelessWidget {
// blank divider
  EnglishEntrybolt({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbolt(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bolt"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts1(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He slid back the bolt on the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts2(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I closed the window and drew the bolt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts3(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Use a bolt and nut to fasten the parts together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts4(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thunder rumbled after a bright bolt of lightning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts5(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The archer loaded a bolt into his crossbow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts6(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't forget to bolt the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts7(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The various parts of the car are then bolted together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts8(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plane swooped down low and the horses bolted."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts9(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When he saw the police arrive, he bolted down an alley."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts10(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't bolt your food!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts11(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many Democrats bolted the party to vote Republican."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts12(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbolts1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts13(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbolts1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts14(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbolts1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts15(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbolts1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbolts16(String languageCode) async {
    // DOPSUM: CHANGE speakbolt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbolts1616"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 22, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bolt"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bəʊlt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbolt("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bəʊlt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbolt("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 22
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
                  VideoIconForTab(), // 15
                  VideoIconForTab(), // 16
                  VideoIconForTab(), // 17
                  VideoIconForTab(), // 18
                  VideoIconForTab(), // 19
                  VideoIconForTab(), // 20
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
کوردی: قفڵ، قوفڵ، کلۆم، (بەرە)زمانەی قفڵ، چەفت، پێچ، کێلۆن، بورغی، بورغوو، چەخماخە، ھەورەتریشقە، دەرچوون، ڕەڤیان، ھەڵاتن، (کەوان) تیر، تاقە، تۆپ، ڕاست، قیت، شەق، ڕەپ

١. (ناو) کێلۆنە دەرگا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He slid back the bolt on the door."),
                              const ExampleSentenceKurdish(
                                  text: "کێلۆنی دەرگاکەی کردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I closed the window and drew the bolt (= slid the bolt across)."),
                              const ExampleSentenceKurdish(
                                  text: "پەنجەرەکەم گرت و کێلۆنەکەم داخست."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بورغوو؛ پارچە ئاسنێک کە لەگەڵ نەتێک بەکاردێت بۆ بەستنی شت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Use a bolt and nut to fasten the parts together."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بورغوو و نەت بەکاربێنە بۆ بەستنی پارچەکان پێکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ھەورەتریشقەیەکی لەناکاو لە ئاسماندا لە شێوەی ھێڵێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Thunder rumbled after a bright bolt of lightning."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تریشقە گرماندی لە دوای چەخماخەیەکی ھەورەبرووسکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) تیرێکی کورتی قورس کە لە کەوانێکەوە دەھاوێژرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The archer loaded a bolt into his crossbow."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تیرھاوێژەکە تیرێکی کورتی خستە کەوانەکەیەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بەستنی دەرگایەک یان پەنجەرەیەک بە کێلۆنێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Don't forget to bolt the door."),
                              const ExampleSentenceKurdish(
                                  text: "بیرت نەچێت دەرگاکە کێلۆن بدە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) بەستنی شت پێکەوە بە بورغوو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The various parts of the car are then bolted together."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پارچە جیاوازەکانی ئۆتۆمبێلەکە دواتر پێکەوە دەبەسترێن بە بورغوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ڕاکردنی ئاژەڵێک، بەتایبەتی ئەسپ، بەھۆی ئەوەی ترساوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The plane swooped down low and the horses bolted."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فڕۆکەکە نزمبووەوە و ئەسپەکان ھەڵھاتن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) ڕاکردن، بەتایبەتی بۆ ھەڵھاتن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When he saw the police arrive, he bolted down an alley."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە بینی پۆلیس گەشتن، بە کۆڵانێکدا ھەڵھات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) خواردنی شتێک بە خێرایی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Don't bolt your food!"),
                              const ExampleSentenceKurdish(
                                  text: "خواردنەکە ھەڵمەلووشە!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) وەستان لە پشتگیری گرووپێک یان پارتێکی سیاسی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Many Democrats bolted the party to vote Republican."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژمارەیەکی زۆر دەنگدەری دیموکراتەکان وازیان لە پارتەکە ھێنا بۆ دەنگدان بە کۆمارییەکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbolts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbolts11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    YoutubeEmbeddedthirteen(),
                    YoutubeEmbeddeddfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddeddsixteen(),
                    YoutubeEmbeddeddseventeen(),
                    YoutubeEmbeddeddeighteen(),
                    YoutubeEmbeddeddnineteen(),
                    YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
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
- Verb: bolt (derived forms: bolts, bolting, bolted)
1. Move or jump suddenly
"She bolted from her seat"
 
2. Secure or lock with a bolt
"bolt the door"
 
3. Swallow hastily
 
4. Run away; usually includes taking something or somebody along (= abscond, absquatulate [N. Amer], decamp, run off, go off, make off, make away)
"the accountant bolted with the cash from the safe";

5. Leave suddenly and as if in a hurry (= run off, run out, bolt out, beetle off)
"The listeners bolted when he discussed his strange ideas"; "When she started to tell silly stories, I bolted out";
 
6. Eat hastily without proper chewing (= gobble)
"Don't bolt your food!";

7. Make or roll into bolts
"bolt fabric"

- Noun: bolt (derived forms: bolts)
1. A discharge of lightning accompanied by thunder (= thunderbolt, bolt of lightning)
 
2. A sliding bar in a breech-loading firearm that ejects an empty cartridge and replaces it and closes the breech
 
3. The part of a lock that is engaged or withdrawn with a key (= deadbolt)
 
4. The act of moving with great haste (= dash)
"he made a bolt for the door";

5. A roll of cloth or wallpaper of a definite length
 
6. A screw that screws into a nut to form a fastener
 
7. A sudden abandonment (as from a political party)

- Adverb: bolt
1. In a rigid manner (= rigidly, stiffly)
"he sat bolt upright";

2. Directly (= bang, slap, slapdash, smack [informal])
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
    videoId: 'HB0CZ_5sPPw',
    startSeconds: 137,
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
    videoId: 'e09xig209cQ',
    startSeconds: 132,
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
    videoId: 'XnbCSboujF4',
    startSeconds: 278,
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
    videoId: 'U2ggYjdzfsg',
    startSeconds: 104,
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
    videoId: 'YGe49FRUJaM',
    startSeconds: 145,
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
    videoId: 'RxgKjz4mPYI',
    startSeconds: 140,
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
    videoId: 'xVQxvthAcLU',
    startSeconds: 310,
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
    videoId: '0zXfDafyyao',
    startSeconds: 1004,
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
    videoId: 'jzA49U11R1g',
    startSeconds: 169,
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
    videoId: '0pK4JDFLazs',
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'no27rp47seA',
    startSeconds: 52,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ByzxfIMRmNo',
    startSeconds: 409,
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '5h2xYwtnBXM',
    startSeconds: 985,
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqrqgKDJ1G8',
    startSeconds: 669,
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '2y9BJ-plK_g',
    startSeconds: 773,
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Ecy1FBdCRbQ',
    startSeconds: 334,
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'igNcDEEl5to',
    startSeconds: 28,
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '1VPfZ_XzisU',
    startSeconds: 59,
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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'jHTpW7euAns',
    startSeconds: 18,
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'NpBGnd1K9zg',
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

// end bolt
