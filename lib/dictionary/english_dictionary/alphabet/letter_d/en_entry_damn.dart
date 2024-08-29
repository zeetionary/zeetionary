import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydamn extends StatefulWidget {
  const EnglishEntrydamn({super.key});

  @override
  State<EnglishEntrydamn> createState() => _EnglishEntrydamnState();
}

class _EnglishEntrydamnState extends State<EnglishEntrydamn> {
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
    return const EntryTitle(word: "damn");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: damn");
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
    return const IPAofEnglish(text: "IpaUK: /dæm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamn(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("damn");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdamn("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dæm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamn(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("damn");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdamn("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamns1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Oh damn! I forgot he was coming.");
  }

  Future<void> speakdamns2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's broken! Damn!");
  }

  Future<void> speakdamns3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Damn, I've spilled coffee down my blouse!");
  }

  Future<void> speakdamns4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Where's that damn book!");
  }

  Future<void> speakdamns5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The damned thing won't start!");
  }

  Future<void> speakdamns6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's none of your damn business!");
  }

  Future<void> speakdamns7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's a damn nuisance!");
  }

  Future<void> speakdamns8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What a damn shame!");
  }

  Future<void> speakdamns9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Damn you! I'm not going to let you bully me.");
  }

  Future<void> speakdamns10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Damn this machine! Why won't it work?");
  }

  Future<void> speakdamns11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "As a child she was taught that she would be damned for her sins.");
  }

  Future<void> speakdamns12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The film was damned by the critics for its mindless violence.");
  }

  Future<void> speakdamns13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't be so damn silly!");
  }

  Future<void> speakdamns14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What a damn stupid question!");
  }

  Future<void> speakdamns15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We got out pretty damned fast!");
  }

  Future<void> speakdamns16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm damn sure she had no idea.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: لەعنەت، نەفرەت، جنێو، سخێف، ناونیتکە، حەح! ئەح! بەزیادم نەکرد! ئەھـ! تەیڕیم
"""),
          const DefinitionKurdish(
              text:
                  "١. (سەرسوڕمان) وشەیەکی جنێودان کە خەڵکی بەکاریدێنن کە تووڕەن"),
          SentencesRow(
            englishText: "Oh damn! I forgot he was coming.",
            kurdishText: "ئاھ نەفرەت! بیرم چوو ئەو دێت.",
            onPressedBritish: () => speakdamns1("en-GB"),
            onPressedAmerican: () => speakdamns1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's broken! Damn!",
            kurdishText: "شکاوە! بە نەفرەت بێت!.",
            onPressedBritish: () => speakdamns2("en-GB"),
            onPressedAmerican: () => speakdamns2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Damn, I've spilled coffee down my blouse!",
            kurdishText: "بە زیادم نەکرد، قاوەم ڕژاند بە بلووزەکەمدا.",
            onPressedBritish: () => speakdamns3("en-GB"),
            onPressedAmerican: () => speakdamns3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) جنێوێک کە لە کاتی تووڕەیی بەکاردێت"),
          SentencesRow(
            englishText: "Where's that damn book!",
            kurdishText: "ئەو کتێبە نەفرەتییە لەکوێیە!",
            onPressedBritish: () => speakdamns4("en-GB"),
            onPressedAmerican: () => speakdamns4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The damned thing won't start!",
            kurdishText: "ئەو شتە نەفرەتییە دەستپێ ناکات.",
            onPressedBritish: () => speakdamns5("en-GB"),
            onPressedAmerican: () => speakdamns5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's none of your damn business!",
            kurdishText: "ھیچ پەیوەندییەکی لەعنەتی بە تۆوە نییە!",
            onPressedBritish: () => speakdamns6("en-GB"),
            onPressedAmerican: () => speakdamns6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He's a damn nuisance!",
            kurdishText: "بێزارکەرێکی نەفرەتییە.",
            onPressedBritish: () => speakdamns7("en-GB"),
            onPressedAmerican: () => speakdamns7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ جەختکردنەوە لەوەی دەیڵێیت"),
          SentencesRow(
            englishText: "What a damn shame!",
            kurdishText: "چی شەرمێکی گەورەیە!",
            onPressedBritish: () => speakdamns8("en-GB"),
            onPressedAmerican: () => speakdamns8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) بەکاردێت لەکاتی جنێودان"),
          SentencesRow(
            englishText: "Damn you! I'm not going to let you bully me.",
            kurdishText: "بە نەفرەت بیت! ناھێڵم ببیت بە کەڵەگا لێم.",
            onPressedBritish: () => speakdamns9("en-GB"),
            onPressedAmerican: () => speakdamns9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Damn this machine! Why won't it work?",
            kurdishText: "نەفرەت لەم ئامێرە! بۆچی کار ناکات؟",
            onPressedBritish: () => speakdamns10("en-GB"),
            onPressedAmerican: () => speakdamns10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) خستنە دۆزەخ"),
          SentencesRow(
            englishText:
                "As a child she was taught that she would be damned for her sins.",
            kurdishText: "وەک منداڵێک فێرکرا کە دەخرێتە دۆزەخ بۆ تاوانەکانی.",
            onPressedBritish: () => speakdamns11("en-GB"),
            onPressedAmerican: () => speakdamns11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) سەرزەنشت کردنی توند"),
          SentencesRow(
            englishText:
                "The film was damned by the critics for its mindless violence.",
            kurdishText:
                "فیلمەکە لەلایەن ڕەخنەگرانەوە ڕەخنەی لێ گیردرا بۆ توندوتیژی بێ ھەستانەی.",
            onPressedBritish: () => speakdamns12("en-GB"),
            onPressedAmerican: () => speakdamns12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵکار) جنێوێک کە بەکاردێت بۆ دەربڕینی تووڕەیی"),
          SentencesRow(
            englishText: "Don't be so damn silly!",
            kurdishText: "ھێندە لەعنەتی گەمژە مەبە!",
            onPressedBritish: () => speakdamns13("en-GB"),
            onPressedAmerican: () => speakdamns13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What a damn stupid question!",
            kurdishText: "چی پرسیارێکی ھیچی گەمژانە!",
            onPressedBritish: () => speakdamns14("en-GB"),
            onPressedAmerican: () => speakdamns14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (ھاوەڵکار) بۆ جەختکردنەوە لەوەی دەیڵێتر"),
          SentencesRow(
            englishText: "We got out pretty damned fast!",
            kurdishText: "زۆر بەخێرایی دەرچووین!",
            onPressedBritish: () => speakdamns15("en-GB"),
            onPressedAmerican: () => speakdamns15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'm damn sure she had no idea.",
            kurdishText: "تەواو دڵنیام لەوەی ھیچ نازانێت.",
            onPressedBritish: () => speakdamns16("en-GB"),
            onPressedAmerican: () => speakdamns16("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: damn 
1. Used as an expletive (= goddamn)
"oh, damn!";
 
2. Expletive used informally as an intensifier (= blasted, blame [N. Amer], blamed, blessed, damned, darned, deuced, goddam, goddamn, goddamned, infernal, dashed [Brit, informal], doggone [N. Amer, informal])
"he's a damn (or goddam or goddamned) fool";

- Verb: damn (derived forms: damns, damning, damned)
1. Wish harm upon; invoke evil upon (= curse, beshrew [archaic], bedamn [archaic], anathemize, anathemise [Brit], imprecate, maledict [archaic], doggone [N. Amer, informal], dang [N. Amer, informal])
"The bad witch damned the child";
 
2. [informal] Find fault with; express criticism of; point out real or perceived flaws (= knock [informal], criticize, criticise [Brit], pick apart)
 
3. Condemn as being bad, harmful, immoral, etc.
"the report damned the clubs more for their disregard of the existing rules"

- Adverb: damn 
1. Extremely (= bloody, all-fired, all-firedly [US, informal])
"you are damn right";

- Noun: damn (derived forms: damns)
1. Something of little value (= darn, hoot, red cent [N. Amer], shucks, tinker's damn [US, informal], tinker's dam [US, informal])
"his promise is not worth a damn";

- Interjection: damn 
1. Exclamation of annoyance (= blast, bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damnation, dammit [informal], damn it [informal], darn [informal], dash [Brit, informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
"He is a captain in the army, damn it, and all day he does nothing but call out orders";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
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

  final String _videoId = 'XZVHmRvfDHM';
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

  final String _videoId = 'tuqqRnej8vo';
  final double _startSeconds = 261;

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

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 401;

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

  final String _videoId = 'Pto9L7kjuSM';
  final double _startSeconds = 80;

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

  final String _videoId = 'j-zCKl_eda4';
  final double _startSeconds = 52;

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

  final String _videoId = '8wewPn7TZfs';
  final double _startSeconds = 172;

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

  final String _videoId = 'Xtwar56r4Lg';
  final double _startSeconds = 255;

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