import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydepression extends StatefulWidget {
  const EnglishEntrydepression({super.key});

  @override
  State<EnglishEntrydepression> createState() => _EnglishEntrydepressionState();
}

class _EnglishEntrydepressionState extends State<EnglishEntrydepression> {
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
    return const EntryTitle(word: "depression");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: depression");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈpreʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepression(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("depression");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdepression("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈpreʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepression(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("depression");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdepression("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepressions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She suffered from severe depression after losing her job.");
  }

  Future<void> speakdepressions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had a family history of depression.");
  }

  Future<void> speakdepressions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bereavement can often lead to depression.");
  }

  Future<void> speakdepressions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her depression has lifted now.");
  }

  Future<void> speakdepressions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was gradually coming out of her depression.");
  }

  Future<void> speakdepressions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There was a feeling of gloom and depression in the office when the news of the job cuts was announced.");
  }

  Future<void> speakdepressions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is easy to slip into a mood of depression.");
  }

  Future<void> speakdepressions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The country was in the grip of (an) economic depression.");
  }

  Future<void> speakdepressions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Many people lost their jobs in the great depression of the 1930s.");
  }

  Future<void> speakdepressions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Rainwater collects in shallow depressions on the ground.");
  }

  Future<void> speakdepressions20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had a family history of depression.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: دڵتەنگی، ماتەمینی، خەمۆکی،	قوپاوی، ڕۆچوویی، نغرۆ، بەچاڵ‌داکەوتوویی، داکەوتوویی، بەقووڵاچوویی، داتەپیوی، چاڵایی، قوڵکە، کەنداڵ، چاڵ، گۆڕ،	بێ‌برەوی، سستی ئابووری، بێ‌بازاڕێتی، بازاڕخەوتوویی، کزی،	(ئەستێرەوانی) نزم‌بوونەوە، نەوی‌بووەوە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) حاڵەتێکی پزیشکییە کە تێیدا کەسێک ھەست بە دڵتەنگی و دڵەڕاوکێ و بێ ئومێدی دەکات و زۆرجار نیشانەکانی جەستەیی وەک نەتوانینی خەوتن، ھتد ـی ھەیە."),
          SentencesRow(
            englishText:
                "She suffered from severe depression after losing her job.",
            kurdishText: "لە دوای لەدەستدانی کارەکەی تووشی خەمۆکی زۆر بوو.",
            onPressedBritish: () => speakdepressions1("en-GB"),
            onPressedAmerican: () => speakdepressions1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He had a family history of depression.",
            kurdishText: "تۆمارێکی خێزانی لە خەمۆکی ھەبوو.",
            onPressedBritish: () => speakdepressions2("en-GB"),
            onPressedAmerican: () => speakdepressions2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Bereavement can often lead to depression.",
            kurdishText: "شیوەنگێڕان زۆرجار دەکرێت ببێتە ھۆکاری خەمۆکی.",
            onPressedBritish: () => speakdepressions3("en-GB"),
            onPressedAmerican: () => speakdepressions3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her depression has lifted now.",
            kurdishText: "خەمۆکییەکەی ئێستا نەماوە.",
            onPressedBritish: () => speakdepressions4("en-GB"),
            onPressedAmerican: () => speakdepressions4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was gradually coming out of her depression.",
            kurdishText: "کەم کەم لە خەمۆکییەکەی ڕزگاری دەبوو.",
            onPressedBritish: () => speakdepressions5("en-GB"),
            onPressedAmerican: () => speakdepressions5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ھەستکردن بە دڵتەنگی و بێ ھیوایی"),
          SentencesRow(
            englishText:
                "There was a feeling of gloom and depression in the office when the news of the job cuts was announced.",
            kurdishText:
                "ھەستی ڕەشبینی و دڵتەنگی لە ئۆفیسەکە درووستبوو کە ھەواڵی کەمکردنەوەی کار ڕاگەیەندرا.",
            onPressedBritish: () => speakdepressions6("en-GB"),
            onPressedAmerican: () => speakdepressions6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is easy to slip into a mood of depression.",
            kurdishText: "تووشبوون بە کەشی دڵتەنگی ئاسانە.",
            onPressedBritish: () => speakdepressions7("en-GB"),
            onPressedAmerican: () => speakdepressions7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ماوەیەک کە چالاکی ئابووری کەمە و خەڵکی ھەژار و بێکارن"),
          SentencesRow(
            englishText:
                "The country was in the grip of (an) economic depression.",
            kurdishText: "وڵاتەکە لە قەیرانێکی ئابووری توندا بوو.",
            onPressedBritish: () => speakdepressions8("en-GB"),
            onPressedAmerican: () => speakdepressions8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Many people lost their jobs in the great depression of the 1930s.",
            kurdishText:
                "زۆر کەس کارەکانیان لەدەستدا لە قەیرانە گەورەکەی ١٩٣٠ ـیەکاندا.",
            onPressedBritish: () => speakdepressions9("en-GB"),
            onPressedAmerican: () => speakdepressions9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) چاڵایی؛ بەشێکی زەوی کە نزمترە لە دەوروبەری"),
          SentencesRow(
            englishText:
                "Rainwater collects in shallow depressions on the ground.",
            kurdishText: "ئاوی باران کۆدەبێتەوە لە چاڵە بچووکەکانی سەر زەویدا.",
            onPressedBritish: () => speakdepressions10("en-GB"),
            onPressedAmerican: () => speakdepressions10("en-US"),
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
- Noun: depression (derived forms: depressions)
1. A mental state characterized by a pessimistic sense of inadequacy and a despondent lack of activity
 
2. A long-term economic state characterized by unemployment and low prices and low levels of trade and investment (= slump, economic crisis)
 
3. A sunken or depressed geological formation (= natural depression)
 
4. Sad feelings of gloom and inadequacy
 
5. An air mass of lower pressure; often brings precipitation (= low)
"a depression moved in over night bringing sleet and snow";
 
6. A state of depression and anhedonia so severe as to require clinical intervention (= depressive disorder, clinical depression)
 
7. A concavity in a surface produced by pressing (= impression, imprint)
"he left the depression of his fingers in the soft mud";
 
8. Angular distance below the horizon (especially of a celestial object)
 
9. Pushing down
"depression of the space bar on the typewriter"

- Noun: Depression
1. A period during the 1930s when there was a worldwide economic depression and mass unemployment (= Great Depression)
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

  final String _videoId = '9QrlDWKP6lg';
  final double _startSeconds = 47;

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

  final String _videoId = '-cPdImejxEQ';
  final double _startSeconds = 72;

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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 1059;

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

  final String _videoId = 'q8HRGiUeZwc';
  final double _startSeconds = 67;

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

  final String _videoId = 'p3O6bKdPLbw';
  final double _startSeconds = 2825;

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

  final String _videoId = 'Va_XMMR4R2I';
  final double _startSeconds = 405;

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

  final String _videoId = 'x6a4hMyiwBo';
  final double _startSeconds = 330;

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