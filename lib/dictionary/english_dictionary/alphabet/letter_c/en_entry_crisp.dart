import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: CustomTabBarNew(
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
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crisp");
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
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crisp");
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
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bake until the pastry is golden and crisp.");
  }

  Future<void> speakcrisps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The crisp apple had a satisfying crunch with every bite.");
  }

  Future<void> speakcrisps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sheets looked clean and crisp.");
  }

  Future<void> speakcrisps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was a crisp winter morning.");
  }

  Future<void> speakcrisps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The ground was covered with crisp leaves in the autumn.");
  }

  Future<void> speakcrisps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The recording sounds very crisp, considering its age.");
  }

  Future<void> speakcrisps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her answer was crisp, and she gave no details.");
  }

  Future<void> speakcrisps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If you gorge yourself on crisps like that, you won't eat your dinner.");
  }

  Future<void> speakcrisps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If you eat three good meals a day, you're less likely to snack on biscuits and crisps.");
  }

  Future<void> speakcrisps10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Cook until the bacon starts to crisp.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: چین‌دار، ئوتوکراو، قەدکراو، دەق‌دراو،	ناسک، قرپ، قرچ، تورت، وشک،	برژاو،	تازە، تەڕوتازە (میوە و سەوزە)،	کورتە،	سارد و وشک (ھەوا)،	بڕا، شێلگیر، بەبڕشت، پتەو، یەکلایی‌کەرەوە،	(قژ) فڕ، لوول،	(وێنە یان پلانێ) شەق، ڕوون، دیار، ئاشکرا
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) وشک و ڕەق و خۆش"),
          const AlsoEnglishckb(word: "ھەروەھا: crispy"),
          SentencesRow(
            englishText: "Bake until the pastry is golden and crisp.",
            kurdishText: "بیبرژێنە تاوەکو ھەویرەکە ئاڵتوونی و خرمدار دەبێت.",
            onPressedBritish: () => speakcrisps1("en-GB"),
            onPressedAmerican: () => speakcrisps1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) ڕەق و تازە"),
          const AlsoEnglishckb(word: "ھەروەھا: crispy"),
          SentencesRow(
            englishText:
                "The crisp apple had a satisfying crunch with every bite.",
            kurdishText: "سێوە تازەکە خرمەیەکی خۆشی ھەبوو لەگەڵ ھەر گازێکدا.",
            onPressedBritish: () => speakcrisps2("en-GB"),
            onPressedAmerican: () => speakcrisps2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) پاک و خاوێن"),
          SentencesRow(
            englishText: "The sheets looked clean and crisp.",
            kurdishText: "ڕایەخەکە پاک و خاوێن دیاربوو.",
            onPressedBritish: () => speakcrisps3("en-GB"),
            onPressedAmerican: () => speakcrisps3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) وشک و سارد"),
          SentencesRow(
            englishText: "It was a crisp winter morning.",
            kurdishText: "بەیانییەکی ساردی زستان بوو.",
            onPressedBritish: () => speakcrisps4("en-GB"),
            onPressedAmerican: () => speakcrisps4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) گەڵا، بەفر، ھتد کە ڕەق و وشکن و دەنگی قرچەقرچ دەردەکەن"),
          SentencesRow(
            englishText:
                "The ground was covered with crisp leaves in the autumn.",
            kurdishText: "لە زستاندا زەوییەکە بە گەڵای ڕەق داپۆشرابوو.",
            onPressedBritish: () => speakcrisps5("en-GB"),
            onPressedAmerican: () => speakcrisps5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) ڕوون و تیژ"),
          SentencesRow(
            englishText:
                "The recording sounds very crisp, considering its age.",
            kurdishText: "تۆمارەکە زۆر ڕوونە بە لەبەرچاوگرتنی تەمەنەکەی.",
            onPressedBritish: () => speakcrisps6("en-GB"),
            onPressedAmerican: () => speakcrisps6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ھاوەڵناو) شێوازی قسەکردنی کەسێک کە سەرقاڵی پیشان دەدات یان ئەوەی کە کراوە نییە"),
          SentencesRow(
            englishText: "Her answer was crisp, and she gave no details.",
            kurdishText:
                "وەڵامەکەی یەکلایی‌کەرەوە بوو و ھیچ وردەکارییەکی نەگووت.",
            onPressedBritish: () => speakcrisps7("en-GB"),
            onPressedAmerican: () => speakcrisps7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) چپسی پەتاتە"),
          SentencesRow(
            englishText:
                "If you gorge yourself on crisps like that, you won't eat your dinner.",
            kurdishText:
                "ئەگەر خۆت بەو شێوەیە بە چپسی پەتاتە بتەقێنیت، ناتوانیت نانی ئێوارە بخۆیت.",
            onPressedBritish: () => speakcrisps8("en-GB"),
            onPressedAmerican: () => speakcrisps8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "If you eat three good meals a day, you're less likely to snack on biscuits and crisps.",
            kurdishText:
                "ئەگەر سێ ژەمە خواردنی باشی ڕۆژانە بخۆیت ئەگەری کەم دەبێت بەربیتە بسکیت و چپسی پەتاتە.",
            onPressedBritish: () => speakcrisps9("en-GB"),
            onPressedAmerican: () => speakcrisps9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) برژاندن یان لێنانی خواردن تاوەکو توێژاڵێکی ڕەقی دەبێت"),
          SentencesRow(
            englishText: "Cook until the bacon starts to crisp.",
            kurdishText: "تاوەکو گۆشتە بەرازەکە ڕەق دەبێتەوە بیبرژێنە.",
            onPressedBritish: () => speakcrisps10("en-GB"),
            onPressedAmerican: () => speakcrisps10("en-US"),
          ),
        ],
      ),
    );
  }
}

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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: crisp (derived forms: crisper, crispest)
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

- Noun: crisp (derived forms: crisps)
Usage: Brit (N. Amer: potato chip)
1. A thin crisp slice of potato fried in deep fat (= chip [N. Amer], potato chip [N. Amer], Saratoga chip, potato crisp [Brit])

- Verb: crisp (derived forms: crisps, crisping, crisped)
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
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'zrJYW08beVE';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'YwWnJxyvKFk';
  final double _startSeconds = 27;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'Kj6Mj3ocf10';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '96rh6zoigeY';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'D8BXYIZ_7sE';
  final double _startSeconds = 1337;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '5NgxKJI7l3E';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'ORPYMcDIY8I';
  final double _startSeconds = 851;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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