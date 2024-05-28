import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycurse extends StatefulWidget {
  const EnglishEntrycurse({super.key});

  @override
  State<EnglishEntrycurse> createState() => _EnglishEntrycurseState();
}

class _EnglishEntrycurseState extends State<EnglishEntrycurse> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // const TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "curse");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: curse");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /kɜːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurse(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("curse"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcurse("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /kɜːrs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurse(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("curse"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcurse("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurses1(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He muttered a curse at the other driver."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses2(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family thought that they were under a curse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses3(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The witch is supposed to have put a curse on the house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses4(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Noise is a curse of modern city life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses5(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He hit his head as he stood up and cursed loudly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses6(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was cursing and screaming at me just because I was late."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses7(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cursed her bad luck."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses8(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He cursed himself for his stupidity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses9(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Legend has it that the whole village had been cursed by a witch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses10(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurses1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses11(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurses1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses12(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurses1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurses13(String languageCode) async {
    // DOPSUM: CHANGE speakcurse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurses1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دۆعالێ‌کردن، نەفرەت، خوداگیری، لەعنەت،	جنێو، جوێن، سخێف، دژوێن، دەم‌چەفتی،	بەڵا، ئاسێو، تەڵەزگە،	بێ‌نوێژی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) وشەیەکی ناشرین یان  کە هەندێک کەس بەکاریدێنن کە تووڕەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He muttered a curse at the other driver."),
                    ExampleSentenceKurdish(
                        text: "جنێوێکی دا بە شۆفێرەکەی دیکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "curse", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) وشەیەک یان دەستەواژەیەک کە هێزی سیحری هەیە بۆ ئەوەی شتێکی خراپ ڕووبدات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The family thought that they were under a curse."),
                    ExampleSentenceKurdish(
                        text: "خێزانەکە وایان دەزانی لەژێر نەفرەتدان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses2("en-US"),
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
                            "The witch is supposed to have put a curse on the house."),
                    ExampleSentenceKurdish(
                        text:
                            "سیحربازەکە وابیردەکرێتەوە کە نەفرەتی لە ماڵەکە کردبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) شتێک کە خراپەی لێدەکەوێتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Noise is a curse of modern city life."),
                    ExampleSentenceKurdish(
                        text: "ژاوەژاو بەڵایەکی ژیانی سەردەمییانەی شارە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) جنێودان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He hit his head as he stood up and cursed loudly."),
                    ExampleSentenceKurdish(
                        text:
                            "کە هەستا ئێشی بە سەری گەیاند و بە دەنگی بەرز دەستی بە جنێودان کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses5("en-US"),
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
                            "She was cursing and screaming at me just because I was late."),
                    ExampleSentenceKurdish(
                        text:
                            "هاواری دەکرد بە سەرمدا و جنێوی پێم دەدا تەنها بەهۆی ئەوەی درەنگ کەوتبووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) گوتنی قسەی بێ‌ڕێزانە بە خەڵکی یان بیرکردنەوە  بە خراپی دەربارەیان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She cursed her bad luck."),
                    ExampleSentenceKurdish(
                        text: "نەفرەتی لە بەختە خراپەکەی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses7("en-US"),
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
                        text: "He cursed himself for his stupidity."),
                    ExampleSentenceKurdish(
                        text: "نەفرەتی لەخۆی کرد بۆ گەمژەییەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بەکارهێنانی سیحر بۆ زیان گەیاندن "),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Legend has it that the whole village had been cursed by a witch."),
                    ExampleSentenceKurdish(
                        text:
                            "بەپێی ئەفسانەکان تەواوی گوندەکە لەلایەن ساحیرێکەوە نەفرەتی لێکراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurses9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurses9("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
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
- Verb: curse (derived forms: cursing, cursed, curses)
1. Utter obscenities or profanities (= cuss [informal], blaspheme, swear, imprecate, eff [Brit, informal], eff and blind [Brit])
"The drunken men were cursing loudly in the street";
 
2. Heap obscenities upon
"The taxi driver who felt he didn't get a high enough tip cursed the passenger"
 
3. Wish harm upon; invoke evil upon (= beshrew [archaic], damn, bedamn [archaic], anathemize, anathemise [Brit], imprecate, maledict [archaic], doggone [N. Amer, informal], dang [N. Amer, informal])
"The bad witch cursed the child";
 
4. Exclude from a church or a religious community (= excommunicate, unchurch)
"The gay priest was cursed when he married his partner";

- Noun: curse (derived forms: curses)
1. Profane or obscene expression usually of surprise or anger (= curse word, expletive, oath, swearing, swearword, cuss [informal], cussword [N. Amer, informal])
"curses were deleted";
 
2. An appeal to some supernatural power to inflict evil on some individual or group (= execration, condemnation)
 
3. An evil spell (= hex, jinx, whammy, mozz [Austral, informal])
"a witch put a curse on his whole family";
 
4. Something causing misery or death (= bane, scourge, nemesis)
"the curse of my life";
 
5. A severe affliction (= torment)
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
    videoId: 'D0x2dgpBDzc',
    startSeconds: 1339,
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
    videoId: '544DTGHIBM0',
    startSeconds: 992,
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
    videoId: 'lsFPbgK1v9I',
    startSeconds: 45,
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
    videoId: 'CzaJoyxRETQ',
    startSeconds: 76,
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
    videoId: 'qjqh9UVfNNk',
    startSeconds: 705,
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
    videoId: '4eGtKyc68Qw',
    startSeconds: 605,
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
    videoId: 'f7QWMUCMYOE',
    startSeconds: 499,
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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
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
    );
  }
}

// end WORD_WEB