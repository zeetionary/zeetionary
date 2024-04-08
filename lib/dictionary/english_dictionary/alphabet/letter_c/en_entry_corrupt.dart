import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycorrupt extends StatelessWidget {
  const EnglishEntrycorrupt({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              const EntryAndIPA(),
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
                    const EnglishMeaning(),
                    KurdishMeaning(),
                    const YoutubeVideos(),
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
    return const EntryTitle(word: "corrupt");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: corrupt");
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
        const IpaUKtext(),
        TTSUK(),
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
    return const IPAofEnglish(text: "IpaUK: /kəˈrʌpt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupt(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corrupt"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorrupt("en-GB"),
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
        const IpaUStext(),
        TTSUS(),
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
    return const IPAofEnglish(text: "IpaUS: /kəˈrʌpt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupt(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corrupt"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(onPressed: () => speakcorrupt("en-US"),);
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupts1(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was seen as the only way to overthrow a corrupt regime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts2(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They promised to seek out the corrupt officials who had accepted the bribes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts3(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had been engaged in corrupt practices."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts4(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The whole system is inefficient and corrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts5(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The file on the disk seems to be corrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts6(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was corrupted by power and ambition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts7(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The study claimed that violence on television corrupts the minds of children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts8(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sect was criticized for promoting a corrupted form of Buddhism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts9(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The program has somehow corrupted the system files."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts10(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrupts1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts11(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrupts1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts12(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrupts1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrupts13(String languageCode) async {
    // DOPSUM: CHANGE speakcorrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrupts1300"); // DOPSUM: CHANGE TEXT
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
کوردی: خراپ، گەندەڵ، بەرتیل‌خۆر،	هەرزە، جڵف، شپرزە،	گۆڕاو، دەسکاری‌کراو، پڕ لە هەڵە، هەڵاوی، پڕخەوش (زمان، دەق و هتد
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) گەندەڵ؛ هەبوونی ئامادەیی بۆ بەکارهێنانی دەسەڵاتی خۆیان بۆ ئەنجامدانی کاری خراپ یان نایاسایی لە بۆ پارە یان بۆ بەدەستهێنانی سوود"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It was seen as the only way to overthrow a corrupt regime."),
                    ExampleSentenceKurdish(
                        text:
                            "بە تەنها ڕێگا بینرا بۆ کۆتایی هێنان بە ڕژێمێکی گەندەڵ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "corrupt", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts1("en-US"),
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
                            "They promised to seek out the corrupt officials who had accepted the bribes."),
                    ExampleSentenceKurdish(
                        text:
                            "بەڵێنیان دا ئەو بەرپرسە گەندەڵانە بدۆزنەوە کە بەرتیلیان وەرگرتبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ڕەفتاری نائەخلاقی یان خراپ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They had been engaged in corrupt practices."),
                    ExampleSentenceKurdish(
                        text: "لە کاری نائەخلاقی تێوەگلابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts3("en-US"),
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
                        text: "The whole system is inefficient and corrupt."),
                    ExampleSentenceKurdish(
                        text: "تەواوی سیستەمەکە ناکارامە و خراپە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) فایلێکی کۆمپیوتەری کە کارناکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The file on the disk seems to be corrupt."),
                    ExampleSentenceKurdish(text: "فایلی ناو دیسکەکە تێکچووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) هەبوونی کاریگەری خراپ لەسەر کەسێک و بردنی بە لای کاری نائەخلاقی و خراپدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was corrupted by power and ambition."),
                    ExampleSentenceKurdish(
                        text: "بە دەسەڵات و تەماح چاوی کوێر بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts6("en-US"),
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
                            "The study claimed that violence on television corrupts the minds of children."),
                    ExampleSentenceKurdish(
                        text:
                            "لێکۆڵینەوەکە توندوتیژی لەسەر تەلەفیزیۆن مێشکی منداڵان تێکدەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) گۆڕینی شێوازی سەرەتای شتێک بەشێوەیەک کە خراپ بووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The sect was criticized for promoting a corrupted form of Buddhism."),
                    ExampleSentenceKurdish(
                        text:
                            "گرووپەکە ڕەخنەی لێ گیردرا بۆ بانگەشە بۆ جۆرێکی تێکدراوی بودیزم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) تێکدانی فایلی کۆمپیوتەری بە درووستکردنی هەڵە تێیدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The program has somehow corrupted the system files."),
                    ExampleSentenceKurdish(
                        text:
                            "پڕۆگرامەکە بەشێوەیەک فایلەکانی سیستەمەکەی تێکداوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrupts9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrupts9("en-US"),
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
- Adjective: corrupt (derived forms: corrupter, corruptest)
1. Tending to act dishonestly in exchange for money or other personal gain (= crooked [informal], bent [Brit, informal])
 
2. Lacking in integrity
"humanity they knew to be corrupt...from the day of Adam's creation"; "a corrupt and incompetent city government"
 
3. Containing errors or alterations (= corrupted)
"a corrupt text";
 
4. [archaic] Touched by rot or decay (= tainted)
"corrupt bacon";

- Verb: corrupt (derived forms: corrupted, corrupting, corrupts)
1. Alter from the original to become worse or broken (= spoil)
 
2. Corrupt morally or by intemperance or sensuality (= pervert, subvert, demoralize, demoralise [Brit], debauch, debase, profane, vitiate, deprave, misdirect)
"Socrates was accused of corrupting young men"; "corrupt the morals";
 
3. (crime) make illegal payments to in exchange for favours or influence (= bribe, buy, grease the palm of)
"This judge can be corrupted";
 
4. (of someone's image or good reputation) damage, place under suspicion or cast doubt upon (= defile, sully, taint, cloud, tarnish, soil, stain)
"corrupt someone's reputation";
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 1039,
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
    videoId: 'SY3y6zNTiLs',
    startSeconds: 42,
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
    videoId: 'USL6P8haroY',
    startSeconds: 663,
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
    videoId: 'Ggs_FTrwnGk',
    startSeconds: 1312,
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
    videoId: 'JcpboMScfIY',
    startSeconds: 2875,
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
    videoId: 'YCnFYvL17v4',
    startSeconds: 1309,
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
    videoId: 'TEFqEr7HGX4',
    startSeconds: 237,
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