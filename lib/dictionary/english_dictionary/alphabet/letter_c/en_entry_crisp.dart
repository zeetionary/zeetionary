import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrisp extends StatefulWidget {
  const EnglishEntrycrisp({super.key});

  @override
  State<EnglishEntrycrisp> createState() => _EnglishEntrycrispState();
}

class _EnglishEntrycrispState extends State<EnglishEntrycrisp> {
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
    return const EntryTitle(word: "crisp");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crisp");
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
    return const IPAofEnglish(text: "IpaUK: /krɪsp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrisp(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crisp"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrisp("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krɪsp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrisp(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crisp"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrisp("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrisps1(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bake until the pastry is golden and crisp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps2(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crisp apple had a satisfying crunch with every bite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps3(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sheets looked clean and crisp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps4(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a crisp winter morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps5(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ground was covered with crisp leaves in the autumn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps6(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The recording sounds very crisp, considering its age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps7(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her answer was crisp, and she gave no details."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps8(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you gorge yourself on crisps like that, you won't eat your dinner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps9(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you eat three good meals a day, you're less likely to snack on biscuits and crisps."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps10(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cook until the bacon starts to crisp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps11(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrisps1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps12(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrisps1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrisps13(String languageCode) async {
    // DOPSUM: CHANGE speakcrisp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrisps1300"); // DOPSUM: CHANGE TEXT
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
کوردی: چین‌دار، ئوتوکراو، قەدکراو، دەق‌دراو،	ناسک، قرپ، قرچ، تورت، وشک،	برژاو،	تازە، تەڕوتازە (میوە و سەوزە)،	کورتە،	سارد و وشک (هەوا)،	بڕا، شێلگیر، بەبڕشت، پتەو، یەکلایی‌کەرەوە،	(قژ) فڕ، لوول،	(وێنە یان پلانێ) شەق، ڕوون، دیار، ئاشکرا
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) وشک و ڕەق و خۆش"),
          const AlsoEnglishckb(word: "ھەروەھا: crispy"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Bake until the pastry is golden and crisp."),
                    ExampleSentenceKurdish(
                        text:
                            "بیبرژێنە تاوەکو هەویرەکە ئاڵتوونی و خرمدار دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crisp", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) ڕەق و تازە"),
          const AlsoEnglishckb(word: "ھەروەھا: crispy"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The crisp apple had a satisfying crunch with every bite."),
                    ExampleSentenceKurdish(
                        text:
                            "سێوە تازەکە خرمەیەکی خۆشی هەبوو لەگەڵ هەر گازێکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) پاک و خاوێن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The sheets looked clean and crisp."),
                    ExampleSentenceKurdish(
                        text: "ڕایەخەکە پاک و خاوێن دیاربوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) وشک و سارد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It was a crisp winter morning."),
                    ExampleSentenceKurdish(text: "بەیانییەکی ساردی زستان بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) گەڵا، بەفر، هتد کە ڕەق و وشکن و دەنگی قرچەقرچ دەردەکەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The ground was covered with crisp leaves in the autumn."),
                    ExampleSentenceKurdish(
                        text: "لە زستاندا زەوییەکە بە گەڵای ڕەق داپۆشرابوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) ڕوون و تیژ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The recording sounds very crisp, considering its age."),
                    ExampleSentenceKurdish(
                        text: "تۆمارەکە زۆر ڕوونە بە لەبەرچاوگرتنی تەمەنەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ھاوەڵناو) شێوازی قسەکردنی کەسێک کە سەرقاڵی پیشان دەدات یان ئەوەی کە کراوە نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her answer was crisp, and she gave no details."),
                    ExampleSentenceKurdish(
                        text:
                            "وەڵامەکەی یەکلایی‌کەرەوە بوو و هیچ وردەکارییەکی نەگووت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) چپسی پەتاتە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "If you gorge yourself on crisps like that, you won't eat your dinner."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر خۆت بەو شێوەیە بە چپسی پەتاتە بتەقێنیت، ناتوانیت نانی ئێوارە بخۆیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps8("en-US"),
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
                            "If you eat three good meals a day, you're less likely to snack on biscuits and crisps."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر سێ ژەمە خواردنی باشی ڕۆژانە بخۆیت ئەگەری کەم دەبێت بەربیتە بسکیت و چپسی پەتاتە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) برژاندن یان لێنانی خواردن تاوەکو توێژاڵێکی ڕەقی دەبێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Cook until the bacon starts to crisp."),
                    ExampleSentenceKurdish(
                        text: "تاوەکو گۆشتە بەرازەکە ڕەق دەبێتەوە بیبرژێنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrisps10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrisps10("en-US"),
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
- Adjective: crisp (Derived forms: crisper, crispest)
1. Tender and brittle (= crispy, crunchy)
"crisp potato chips";
 
2. Pleasingly firm and fresh
"crisp lettuce"
 
3. (of something seen or heard) clearly defined (= sharp)
"the crisp snap of dry leaves underfoot";
 
4. Pleasantly cold and invigorating (= frosty, nipping, nippy [informal], snappy [informal])
"crisp clear nights and frosty mornings";
 
5. Brief and to the point; effectively cut short (= curt, laconic, terse)
"a crisp retort";
 
6. (of wine) having a refreshing amount of acidity
 
7. (of hair) in small tight curls (= frizzly, frizzy, kinky, nappy)

- Noun: crisp (Derived forms: crisps)
Usage: Brit (N. Amer: potato chip)
1. A thin crisp slice of potato fried in deep fat (= chip [N. Amer], potato chip [N. Amer], Saratoga chip, potato crisp [Brit])

- Verb: crisp (Derived forms: crisps, crisping, crisped)
1. (cooking) make brown and crisp by heating (= crispen, toast)
"crisp potatoes";
 
2. [archaic] Make wrinkles or creases on a smooth surface; make a pressed, folded or wrinkled line in; 'crisp' is archaic (= wrinkle [archaic], ruckle [archaic], crease [archaic], crinkle [archaic], scrunch [archaic], scrunch up [archaic])
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
    videoId: 'https://youtu.be/zrJYW08beVE',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/YwWnJxyvKFk?t=',
    startSeconds: 27,
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
    videoId: 'https://youtu.be/Kj6Mj3ocf10',
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
    videoId: 'https://youtu.be/96rh6zoigeY',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/D8BXYIZ_7sE?t=',
    startSeconds: 1337,
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
    videoId: 'https://youtu.be/5NgxKJI7l3E',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ORPYMcDIY8I?t=',
    startSeconds: 851,
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