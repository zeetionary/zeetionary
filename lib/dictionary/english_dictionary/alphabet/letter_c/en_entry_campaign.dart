import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycampaign extends StatelessWidget {
// blank divider
  EnglishEntrycampaign({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcampaign(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("campaign"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns1(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Today police launched a campaign to reduce road accidents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns2(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The candidates are on the campaign trail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns3(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She led the campaign for parliamentary reform."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns4(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She led a successful campaign against the closure of the library."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns5(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Air battles had dominated the campaign."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns6(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The government has intensified the military campaign against the rebels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns7(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The party campaigned vigorously in the north of the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns8(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We have actively campaigned against whaling for the last 15 years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns9(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcampaigns99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns10(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcampaigns1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns11(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcampaigns1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns12(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcampaigns1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcampaigns13(String languageCode) async {
    // DOPSUM: CHANGE speakcampaign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcampaigns1313"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "campaign"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kæmˈpeɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcampaign("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæmˈpeɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcampaign("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- find: 
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: زنجیرە کردارێکی شەڕی، کردار (شەڕ)، هێرش، پەلامار، شاڵاو، هەڵمەت، خەبات، چالاکی، ستراتێژی

١. (ناو) زنجیرە چالاکییەکی بە پلان کە ئامانج لێی بەدەستهێنانێکی سیاسی، بازرگانی، یان کۆمەڵایەتییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Today police launched a campaign to reduce road accidents."),
                              const ExampleSentenceKurdish(
                                  text: "ئەمڕۆ پۆلیس کەمپینێکی ڕاگەیاند بۆ کەمکردنەوەی ڕووداوی هاتووچۆ."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "campaign", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcampaigns1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcampaigns1("en-US"),
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
                          "The candidates are on the campaign trail (= travelling around to attract support)."),
                          const ExampleSentenceKurdish(
                          text: "بەربژێرەکان لە هەڵمەتی بانگەشەدان."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          Column(
                          children: [
                          MyExpansionTile(
                          children: [
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "She led the campaign for parliamentary reform."),
                          const ExampleSentenceKurdish(
                          text: "سەرکردایەتی هەڵمەتی چاکسازیی پەرلەمانی دەکرد."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns3("en-US"),
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
                          "She led a successful campaign against the closure of the library."),
                          const ExampleSentenceKurdish(
                          text: "کەمپینێکی سەرکەوتووانەی بەڕێوەبرد دژ بە داخستنی کتێبخانەکە."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns4("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) زنجیرەیەک لە هێرش و شەڕ کە ئامانجێکی دیاریکراویان هەیە لە جەنگێکدا"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "Air battles had dominated the campaign."),
                          const ExampleSentenceKurdish(
                          text: "شەڕی ئاسمانی بەشی سەرەکیی هەڵمەتەکە بوون."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns5("en-US"),
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
                          "The government has intensified the military campaign against the rebels."),
                          const ExampleSentenceKurdish(
                          text: "حکومەت هەڵمەتی سەربازی چڕکردبووەوە دژ بە یاخیبووان."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns6("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) بەژداری یان ڕابەڕایەتی کردنی هەڵمەتێک"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "The party campaigned vigorously in the north of the country."),
                          const ExampleSentenceKurdish(
                          text: "پارتەکە بە سەختی بانگەشەی ئەنجامدا لە باکووری وڵاتەکە."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns7("en-US"),
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
                          "We have actively campaigned against whaling for the last 15 years."),
                          const ExampleSentenceKurdish(
                          text: "بۆ ماوەی ١٥ ساڵی ڕابردوو بە چالاکییەوە خەباتمان کردووە دژ بە ڕاوکردنی نەهەنگ."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcampaigns8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcampaigns8("en-US"),
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
- Noun: campaign (Derived forms: campaigns)
1. A race between candidates for elective office (= political campaign, run)
"I managed his campaign for governor";

2. A series of actions advancing a principle or tending toward a particular end (= cause, crusade, drive, movement, effort)
"he supported populist campaigns";
 
3. (military) several related operations aimed at achieving a particular goal (usually within geographical and temporal constraints) (= military campaign)

4. Verb: campaign (Derived forms: campaigned, campaigns, campaigning)
1. Stand or compete for an office or a position (= run)
"Who's campaigning for treasurer this year?";
 
2. Exert oneself continuously, vigorously, or obtrusively to gain an end or engage in a crusade for a certain cause or person; be an advocate for (= crusade, fight, press, push, agitate)
"She is campaigning for women's rights";

3. Go on a campaign; go off to war (= take the field)
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
  static String myVideoId = "https://youtu.be/zqllxbPWKNI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 431, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  static String myVideoId = "https://youtu.be/CaaJyRvvaq8?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 87, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "https://youtu.be/7EnWiGYT1g4?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 44, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  static String myVideoId = "https://youtu.be/AT0NDotcEuk?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 12, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  static String myVideoId = "https://youtu.be/u0yqMYGC6kc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 16, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  static String myVideoId = "https://youtu.be/vb-p--iRFew?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 781, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  static String myVideoId = "https://youtu.be/cK_RSgDqjX8?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 341, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "https://youtu.be/p7SAg5nyW_w?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 34, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  static String myVideoId = "https://youtu.be/h810bO-4LIs?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 22, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  static String myVideoId = "https://youtu.be/t7Y02-03ZFU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 516, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB