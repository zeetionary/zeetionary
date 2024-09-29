import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscipline extends StatefulWidget {
  const EnglishEntrydiscipline({super.key});

  @override
  State<EnglishEntrydiscipline> createState() => _EnglishEntrydisciplineState();
}

class _EnglishEntrydisciplineState extends State<EnglishEntrydiscipline> {
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
    return const EntryTitle(word: "discipline");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discipline");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪsəplɪn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscipline(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("discipline");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscipline("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪsəplɪn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscipline(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("discipline");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscipline("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisciplines1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The school has a reputation for high standards of discipline.");
  }

  Future<void> speakdisciplines2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Strict discipline is imposed on army recruits.");
  }

  Future<void> speakdisciplines3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She keeps good discipline in class.");
  }

  Future<void> speakdisciplines4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Yoga is a good discipline for learning to relax.");
  }

  Future<void> speakdisciplines5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her determination and discipline were admirable.");
  }

  Future<void> speakdisciplines6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Scholars from various disciplines have been working on these problems.");
  }

  Future<void> speakdisciplines7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("When did sociology emerge as a distinct discipline?");
  }

  Future<void> speakdisciplines8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The officers were disciplined for using racist language.");
  }

  Future<void> speakdisciplines9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Should unions discipline members who take unofficial action?");
  }

  Future<void> speakdisciplines10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This book contains a guide to the best ways of disciplining your child.");
  }

  Future<void> speakdisciplines11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Dieting is a matter of disciplining yourself.");
  }

  Future<void> speakdisciplines12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He disciplined himself to exercise at least three times a week.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بەندوبەست، توندایەتی، ڕێکی، ڕێک‌وپێکی، توندوتۆڵی،	شێوە، ڕێگا، شێواز، ڕێچکە،	سزا، تەمێ،	بواری خوێندن، لقی خوێندن،	کۆمەڵە دەستوور
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) کاری فێرکردنی خەڵکی کە دەبێت پابەندی یاسا و ڕێسا بن و سزا دەدرێن حەگەر نەیکەن"),
          SentencesRow(
            englishText:
                "The school has a reputation for high standards of discipline.",
            kurdishText:
                "قوتابخانەکە ناوبانگی بۆ ستانداردی بەرز ھەیە بۆ تەنێکردن.",
            onPressedBritish: () => speakdisciplines1("en-GB"),
            onPressedAmerican: () => speakdisciplines1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Strict discipline is imposed on army recruits.",
            kurdishText:
                "توندوتۆڵی توند دەسەپێنرێت بەسەر تازە وەرگیراوانی سوپادا.",
            onPressedBritish: () => speakdisciplines2("en-GB"),
            onPressedAmerican: () => speakdisciplines2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She keeps good discipline in class.",
            kurdishText: "توندایەتی باش ڕادەگرێت لە پۆلدا.",
            onPressedBritish: () => speakdisciplines3("en-GB"),
            onPressedAmerican: () => speakdisciplines3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ڕێگای ڕاھێنانی مێشک و جەستەت یان کۆنترۆڵکردنی ڕەفتارت"),
          SentencesRow(
            englishText: "Yoga is a good discipline for learning to relax.",
            kurdishText: "یۆگا ڕێچکەیەکی باشە بۆ حەسانەوە.",
            onPressedBritish: () => speakdisciplines4("en-GB"),
            onPressedAmerican: () => speakdisciplines4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) توانای کۆنترۆڵکردنی ڕەفتارت یان شێوازی ژیان، کار، ھتد"),
          SentencesRow(
            englishText: "Her determination and discipline were admirable.",
            kurdishText: "شێلگیری و توندوتۆڵی شایەنی ڕێز بوون.",
            onPressedBritish: () => speakdisciplines5("en-GB"),
            onPressedAmerican: () => speakdisciplines5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) بابەتێک کە خەڵکی دەیخوێنن یان فێردەکرێن"),
          SentencesRow(
            englishText:
                "Scholars from various disciplines have been working on these problems.",
            kurdishText:
                "شارەزایان لە ژمارەیەکی جیاواز لە لقی خوێندنەوە لەسەر ئەم کێشانە کاردەکەن.",
            onPressedBritish: () => speakdisciplines6("en-GB"),
            onPressedAmerican: () => speakdisciplines6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "When did sociology emerge as a distinct discipline?",
            kurdishText: "کەی کۆمەڵناسی بوو بە لقێکی خوێندنی جیاواز؟",
            onPressedBritish: () => speakdisciplines7("en-GB"),
            onPressedAmerican: () => speakdisciplines7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) سزادانی کەسێک بۆ شتێک کە کردوویەتی"),
          SentencesRow(
            englishText:
                "The officers were disciplined for using racist language.",
            kurdishText:
                "ئەفسەرەکان سزادران بۆ بەکارھێنانی زمانی ڕەگەزپەرستانە.",
            onPressedBritish: () => speakdisciplines8("en-GB"),
            onPressedAmerican: () => speakdisciplines8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Should unions discipline members who take unofficial action?",
            kurdishText:
                "دەبێت سەندیکاکان ئەو ئەندامانە سزا بدەن کە ھەنگاوی نافەرمی دەنێن؟",
            onPressedBritish: () => speakdisciplines9("en-GB"),
            onPressedAmerican: () => speakdisciplines9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) ڕاھێنانی کەسێک، بەتایبەتی منداڵێک، کە پابەندی یاسا بێت و شێوازی ڕەفتاری کۆنترۆڵ بکەیت"),
          SentencesRow(
            englishText:
                "This book contains a guide to the best ways of disciplining your child.",
            kurdishText:
                "ئەم کتێبە ڕێبەرییەکی باشترین ڕێگاکان لەخۆدەگرێت بۆ پەروەردەکردنی منداڵێک.",
            onPressedBritish: () => speakdisciplines10("en-GB"),
            onPressedAmerican: () => speakdisciplines10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) کۆنترۆڵکردنی شێوازی ڕەفتارت و ئەوەی ئەو شتانە بکەیت کە دەبێت بیانکەیت"),
          SentencesRow(
            englishText: "Dieting is a matter of disciplining yourself.",
            kurdishText: "پارێزکردن پەیوەندیدارە بە کۆنترۆڵکردنی خۆت.",
            onPressedBritish: () => speakdisciplines11("en-GB"),
            onPressedAmerican: () => speakdisciplines11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He disciplined himself to exercise at least three times a week.",
            kurdishText:
                "خۆی ڕاھێنا کە بەلایەنی کەمەوە سێ جار لە ھەفتەیەکدا ڕاھێنان بکات.",
            onPressedBritish: () => speakdisciplines12("en-GB"),
            onPressedAmerican: () => speakdisciplines12("en-US"),
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
- Noun: discipline (derived forms: disciplines)
1. A branch of knowledge (= subject, subject area, subject field, field, field of study, study, bailiwick)
"in what discipline is his doctorate?";
 
2. A system of rules of conduct or method of practice
"he quickly learned the discipline of prison routine"; "for such a plan to work requires discipline"
 
3. The trait of being well behaved
"he insisted on discipline among the troops"
 
4. Training to improve strength or self-control
 
5. The act of disciplining (= correction)
"the offenders deserved the harsh discipline they received";

- Verb: discipline (derived forms: disciplining, disciplined, disciplines)
1. Develop (a child's or animal's) behaviour by instruction and practice; especially to teach self-control (= train, check, condition)
"Parents must discipline their children";
 
2. Punish in order to gain control or enforce obedience (= correct, sort out)
"The teacher disciplined the pupils rather frequently";
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

  final String _videoId = 'q8HRGiUeZwc';
  final double _startSeconds = 249;

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

  final String _videoId = '_0RTH57v66I';
  final double _startSeconds = 930;

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

  final String _videoId = 'b_rjBWmc1iQ';
  final double _startSeconds = 3099;

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

  final String _videoId = 'SwQhKFMxmDY';
  final double _startSeconds = 836;

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

  final String _videoId = 'Xpv-sEKl1B4';
  final double _startSeconds = 134;

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

  final String _videoId = '-C3CjOkF-jY';
  final double _startSeconds = 803;

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

  final String _videoId = 'G_FUmf0T8YI';
  final double _startSeconds = 712;

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