import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydip extends StatefulWidget {
  const EnglishEntrydip({super.key});

  @override
  State<EnglishEntrydip> createState() => _EnglishEntrydipState();
}

class _EnglishEntrydipState extends State<EnglishEntrydip> {
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
              // TitleOfEntryAlso(),
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
    return const EntryTitle(word: "dip");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dip");
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
    return const IPAofEnglish(text: "IpaUK: /dɪp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdip(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dip");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdip("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdip(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dip");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdip("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdips1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He dipped the brush into the paint.");
  }

  Future<void> speakdips2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Dip your hand in to see how hot the water is.");
  }

  Future<void> speakdips3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fruit had been dipped in chocolate.");
  }

  Future<void> speakdips4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sun dipped below the horizon.");
  }

  Future<void> speakdips5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The road dipped suddenly as we approached the town.");
  }

  Future<void> speakdips6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plane dipped its wings.");
  }

  Future<void> speakdips7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's go for a dip before breakfast.");
  }

  Future<void> speakdips8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Share prices have taken a slight dip.");
  }

  Future<void> speakdips9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The nation is experiencing an economic dip.");
  }

  Future<void> speakdips10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The village lay in a dip among the hills.");
  }

  Future<void> speakdips11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She made a creamy dip for the chips.");
  }

  Future<void> speakdips12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dip effectively killed the lice on the sheep.");
  }

  Future<void> speakdips13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A brief dip into history confirms this view.");
  }

  Future<void> speakdips14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gave a dip of his head.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: تێ‌ھەڵکێشان، وەردان، تێ‌خستن،	سووکەمەلێ، مەلە، مەلێی پشیلەشۆرانە،	سەرەوخواری، لێژ،	کەم‌بوونەوە، داخزان، داشکان، نزم‌بوونەوە، ھاتنەخوارەوە،	سۆس،	گیراوەی خاوێن‌کردنەوەی مەڕ،	(نافەرمی، ئەمریکا) کەسێکی گەوج،	(ئاڵا) خوارەوەھاتوویی، ھاتنەخوارەوە، داگیراوی
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بە خێرایی ژەندنی شتێک بە شلەدا و دووبارە دەرکردنی"),
          SentencesRow(
            englishText: "He dipped the brush into the paint.",
            kurdishText: "فڵچەکەی ژەند بە بۆیەکەدا.",
            onPressedBritish: () => speakdips1("en-GB"),
            onPressedAmerican: () => speakdips1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Dip your hand in to see how hot the water is.",
            kurdishText: "پەنجەت بژەنە ناویدا و بزانە ئاوەکە چەند گەرمە.",
            onPressedBritish: () => speakdips2("en-GB"),
            onPressedAmerican: () => speakdips2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The fruit had been dipped in chocolate.",
            kurdishText: "میوەکە ژەندراوە بە چکلێتدا.",
            onPressedBritish: () => speakdips3("en-GB"),
            onPressedAmerican: () => speakdips3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) چوونە خوارەوە یان ئاستێکی نزمتر"),
          SentencesRow(
            englishText: "The sun dipped below the horizon.",
            kurdishText: "خۆر دابەزییە خوار ئاسۆ.",
            onPressedBritish: () => speakdips4("en-GB"),
            onPressedAmerican: () => speakdips4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The road dipped suddenly as we approached the town.",
            kurdishText:
                "ڕێگاکە لەناکاو لێژبوویەوە کە نزیکی شارۆچکەکە بووینەوە.",
            onPressedBritish: () => speakdips5("en-GB"),
            onPressedAmerican: () => speakdips5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The plane dipped its wings.",
            kurdishText: "فڕۆکەکە باڵەکانی شۆڕکردەوە.",
            onPressedBritish: () => speakdips6("en-GB"),
            onPressedAmerican: () => speakdips6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) مەلەیەکی خێرا"),
          SentencesRow(
            englishText: "Let's go for a dip before breakfast.",
            kurdishText: "با پێش نانی بەیانی بچین بۆ سووکەمەلێیەک.",
            onPressedBritish: () => speakdips7("en-GB"),
            onPressedAmerican: () => speakdips7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) کەمبوونەوەیەک لە بڕ یان سەرکەوتنی شتێک، زۆرجار بە کاتی"),
          SentencesRow(
            englishText: "Share prices have taken a slight dip.",
            kurdishText: "نرخی پشکەکان کەمێک داشکانیان بینیوە.",
            onPressedBritish: () => speakdips8("en-GB"),
            onPressedAmerican: () => speakdips8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The nation is experiencing an economic dip.",
            kurdishText: "وڵاتەکە ڕووبەڕووی داشکانێکی ئابووری بووە.",
            onPressedBritish: () => speakdips9("en-GB"),
            onPressedAmerican: () => speakdips9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) شوێنێک کە ڕووەکەی لەناکاو دادەبەزێت و دووبارە بەرز دەبێتەوە"),
          SentencesRow(
            englishText: "The village lay in a dip among the hills.",
            kurdishText: "گوندەکە لە لێژییەک لە گردەکاندا ھەڵکەوتووە.",
            onPressedBritish: () => speakdips10("en-GB"),
            onPressedAmerican: () => speakdips10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) تێکەڵەیەک کە پارچە خواردن دەژەنرێتە ناوی پێش خواردن"),
          SentencesRow(
            englishText: "She made a creamy dip for the chips.",
            kurdishText: "تێکەڵەیەکی کرێمداری بۆ چیپسەکە ئامادەکرد.",
            onPressedBritish: () => speakdips11("en-GB"),
            onPressedAmerican: () => speakdips11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) شلەیەک مادەی کیمیایی تێدایە و مەڕ و ئاژەڵی دیکەی تێدەخرێت بۆ ئەوەی مێرووی سەر لەشیان بکوژێت"),
          SentencesRow(
            englishText: "The dip effectively killed the lice on the sheep.",
            kurdishText:
                "گیراوە خاوێنکەرەوەکە بە کاریگەری ئەسپێکانی لەسەر مەڕەکە کوشت.",
            onPressedBritish: () => speakdips12("en-GB"),
            onPressedAmerican: () => speakdips12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) سەیرکردنێکی خێرای شتێک"),
          SentencesRow(
            englishText: "A brief dip into history confirms this view.",
            kurdishText: "ڕوانینێکی خێرا لە مێژوو ئەم دیدە پشتڕاست دەکاتەوە.",
            onPressedBritish: () => speakdips13("en-GB"),
            onPressedAmerican: () => speakdips13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) لەقاندنی شتێک بۆ سەرەوە و خوارەوە"),
          SentencesRow(
            englishText: "He gave a dip of his head.",
            kurdishText: "سەرەلەقەیەکی کرد.",
            onPressedBritish: () => speakdips14("en-GB"),
            onPressedAmerican: () => speakdips14("en-US"),
          ),
          // dips15dips15
          // dips16dips16
          // dips17dips17
          // dips18dips18
          // dips19dips19
          // dips_20dips20
          // dips21dips21
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: dip (derived forms: dipping, dipped, dips)
1. Immerse briefly into a liquid so as to wet, coat, or saturate (= dunk, souse, plunge, douse)
"dip the brush into the paint";
 
2. (of food) put into a liquid to absorb some of it (= dunk)
"She dipped the piece of bread in the sauce";
 
3. Go down momentarily
"Prices dipped"
 
4. Stain an object by immersing it in a liquid
 
5. Take a small amount from
"I had to dip into my savings to buy him this present"
 
6. Switch (a car's headlights) from a higher to a lower beam (= dim)
 
7. Lower briefly
"She dipped her knee"
 
8. Appear to move downward (= sink)
"The sun dipped below the horizon";
 
9. Slope downwards
"Our property dips towards the river"
 
10. Immerse into a liquid (= douse, duck)
"He dipped into the pool";
 
11. Place (candle wicks) into hot, liquid wax
 
12. Immerse in a disinfectant solution
"dip the sheep"
 
13. Plunge (one's hand or a receptacle) into a container
"He dipped into his pocket"
 
14. Scoop up by plunging one's hand or a ladle below the surface
"dip water out of a container"

- Noun: dip (derived forms: dips)
1. A depression in an otherwise level surface
"there was a dip in the road"
 
2. (physics) the angle that a magnetic needle makes with the plane of the horizon (= angle of dip, magnetic dip, magnetic inclination, inclination)
 
3. A thief who steals from the pockets or purses of others in public places (= pickpocket, cutpurse)
 
4. Tasty mixture or liquid into which bite-sized foods are dipped
 
5. A brief immersion
 
6. A sudden sharp decrease in some quantity (= drop, fall, free fall)
"a dip in prices";
 
7. A candle that is made by repeated dipping in a pool of wax or tallow
 
9. A brief swim in water (= plunge)
 
10. A gymnastic exercise on the parallel bars in which the body is lowered and raised by bending and straightening the arms
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

  final String _videoId = '2GsK5feFt1U';
  final double _startSeconds = 31;

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

  final String _videoId = 'DesEUpFgGrQ';
  final double _startSeconds = 352;

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

  final String _videoId = 'gmr41ht2Sq4';
  final double _startSeconds = 118;

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

  final String _videoId = 'R8MAW6N1Jhk';
  final double _startSeconds = 59;

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

  final String _videoId = '7V71_7X-DAo';
  final double _startSeconds = 6;

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

  final String _videoId = '1SO0uvexcew';
  final double _startSeconds = 580;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 589;

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