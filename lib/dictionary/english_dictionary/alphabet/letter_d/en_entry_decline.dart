import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydecline extends StatefulWidget {
  const EnglishEntrydecline({super.key});

  @override
  State<EnglishEntrydecline> createState() => _EnglishEntrydeclineState();
}

class _EnglishEntrydeclineState extends State<EnglishEntrydecline> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
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
    return const EntryTitle(word: "decline");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: decline");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈklaɪn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecline(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("decline");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdecline("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈklaɪn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecline(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("decline");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdecline("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclines1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Support for the party continues to decline.");
  }

  Future<void> speakdeclines2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sales of milk declined by 4 per cent.");
  }

  Future<void> speakdeclines3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The city declined in importance in the nineteenth century.");
  }

  Future<void> speakdeclines4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her health began to decline.");
  }

  Future<void> speakdeclines5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I offered to give them a lift but they declined.");
  }

  Future<void> speakdeclines6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We politely declined her invitation.");
  }

  Future<void> speakdeclines7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She declined a second glass of wine and called for a taxi.");
  }

  Future<void> speakdeclines8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their spokesman declined to comment on the allegations.");
  }

  Future<void> speakdeclines9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There has been a 5 per cent decline in student numbers.");
  }

  Future<void> speakdeclines10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They have experienced decades of economic decline.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: کەم‌بوونەوە، داشکان، ھاتنەخوارێ، داچوون، داکەوتن، داقنین، تیاچوون، نەمان، نزمەوەبوون، فاق‌دان، فشەڵ‌ھێنان، پاش‌داچوون، دانەدواوە، لێژبوونەوە، داخزان، دابەزین، پووکانەوە، پووچانەوە
"""),
          const DefinitionKurdish(
              text: "١. (کردار) کەمبوون، بچووکبوون، لاوازبوون، ھتد"),
          SentencesRow(
            englishText: "Support for the party continues to decline.",
            kurdishText: "پشتیوانی بۆ پارتەکە بەردەوامە لە لاوازبوون.",
            onPressedBritish: () => speakdeclines1("en-GB"),
            onPressedAmerican: () => speakdeclines1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sales of milk declined by 4 per cent.",
            kurdishText: "فرۆشی شیر بە ٤ لە سەد کەمی کرد.",
            onPressedBritish: () => speakdeclines2("en-GB"),
            onPressedAmerican: () => speakdeclines2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The city declined in importance in the nineteenth century.",
            kurdishText: "شارەکە لە گرنگیدا دواکەوت لە سەدەی نۆزدەیەمدا.",
            onPressedBritish: () => speakdeclines3("en-GB"),
            onPressedAmerican: () => speakdeclines3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her health began to decline.",
            kurdishText: "تەندرووستی دەستی بە لاوازبوون کرد.",
            onPressedBritish: () => speakdeclines4("en-GB"),
            onPressedAmerican: () => speakdeclines4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) بەڕێزەوە ڕەتکردنەوەی کردنی شتێک"),
          SentencesRow(
            englishText: "I offered to give them a lift but they declined.",
            kurdishText: "پێشنیازی گەیاندنم بۆ کردن بەڵام ڕەتیان کردەوە.",
            onPressedBritish: () => speakdeclines5("en-GB"),
            onPressedAmerican: () => speakdeclines5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We politely declined her invitation.",
            kurdishText: "بەڕێزەوە بانگھێشتەکەیمان ڕەتکردەوە.",
            onPressedBritish: () => speakdeclines6("en-GB"),
            onPressedAmerican: () => speakdeclines6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She declined a second glass of wine and called for a taxi.",
            kurdishText: "دووەم گڵاس بیرەی ڕەتکردەوە و داوای تەکسییەکی کرد.",
            onPressedBritish: () => speakdeclines7("en-GB"),
            onPressedAmerican: () => speakdeclines7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Their spokesman declined to comment on the allegations.",
            kurdishText: "وتەبێژەکەیان ڕەتیکردەوە لێدوان لەسەر تۆمەتەکان بدات.",
            onPressedBritish: () => speakdeclines8("en-GB"),
            onPressedAmerican: () => speakdeclines8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) دابەزینی بەردەوامی بەھا، ژمارە، کوالێتی، ھتد ـی شتێک"),
          SentencesRow(
            englishText:
                "There has been a 5 per cent decline in student numbers.",
            kurdishText: "٥ لە سەد کەمبوون لە ژمارەی خوێندکاران ڕوویداوە.",
            onPressedBritish: () => speakdeclines9("en-GB"),
            onPressedAmerican: () => speakdeclines9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They have experienced decades of economic decline.",
            kurdishText: "ئەزموونی دەیان ساڵ لاوازبوونی ئابوورییان کردووە.",
            onPressedBritish: () => speakdeclines10("en-GB"),
            onPressedAmerican: () => speakdeclines10("en-US"),
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
- Verb: decline (derived forms: declined, declines, declining)
1. Grow worse (= worsen)
"Conditions in the slum declined";
 
2. Not accept as true (= refuse, reject, pass up, turn down)
 
3. Show unwillingness towards (= refuse)
"he declined to join the group on a hike";
 
4. Grow smaller (= go down, wane)
"Interest in the project declined";
 
5. Go down
"The roof declines here"
 
6. Fall in value (= slump, correct)
"prices declined";
 
7. Inflect for number, gender, case, etc.
"in many languages, speakers decline nouns, pronouns, and adjectives"

- Noun: decline (derived forms: declines)
1. Change toward something smaller or lower (= diminution)
 
2. A condition inferior to an earlier condition; a gradual falling off from a better state; decline (= declination)
 
3. A gradual decrease; as of stored charge or current (= decay)
 
4. A downward slope or bend (= descent, declivity, fall, declination, declension, downslope)
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

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 1273;

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

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 4143;

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

  final String _videoId = 'hoihoGGdQ4U';
  final double _startSeconds = 56;

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

  final String _videoId = 'JR3z8lq2cNM';
  final double _startSeconds = 719;

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

  final String _videoId = 'CqkhjL3WvWQ';
  final double _startSeconds = 214;

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

  final String _videoId = 'THIGSnMP3io';
  final double _startSeconds = 1256;

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

  final String _videoId = 'OIo2Ie1HwHY';
  final double _startSeconds = 304;

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