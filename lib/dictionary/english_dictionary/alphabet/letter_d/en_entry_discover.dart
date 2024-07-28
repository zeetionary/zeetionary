import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscover extends StatefulWidget {
  const EnglishEntrydiscover({super.key});

  @override
  State<EnglishEntrydiscover> createState() => _EnglishEntrydiscoverState();
}

class _EnglishEntrydiscoverState extends State<EnglishEntrydiscover> {
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
    return const EntryTitle(word: "discover");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discover");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈskʌvə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscover(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discover");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscover("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈskʌvər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscover(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discover");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscover("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscovers1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cook is credited with discovering Hawaii.");
  }

  Future<void> speakdiscovers2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists around the world are working to discover a cure for AIDS.");
  }

  Future<void> speakdiscovers3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They first discovered this protein about five years ago.");
  }

  Future<void> speakdiscovers4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She recently discovered two fungi that were new to science.");
  }

  Future<void> speakdiscovers5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Researchers are hoping to discover new way to purify water.");
  }

  Future<void> speakdiscovers6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police discovered a large stash of drugs while searching the house.");
  }

  Future<void> speakdiscovers7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We discovered this beach while we were sailing around the island.");
  }

  Future<void> speakdiscovers8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His body was discovered in the lake near his house.");
  }

  Future<void> speakdiscovers9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was determined to discover the truth about her neighbours.");
  }

  Future<void> speakdiscovers10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Discover the joys of yoga!");
  }

  Future<void> speakdiscovers11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a shock to discover (that) he couldn’t read.");
  }

  Future<void> speakdiscovers12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We never did discover why she gave up her job.");
  }

  Future<void> speakdiscovers13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The singer was discovered while still at school.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی: تێگەیشتن، دۆزینەوە، داھێنان، حاڵی بوون
// """),
          const DefinitionKurdish(
              text: "١. (کردار) دۆزینەوەی شتێک بۆ یەکەمجار"),
          SentencesRow(
            englishText: "Cook is credited with discovering Hawaii.",
            kurdishText: "کووک بە دۆزەرەوەی ھاوایی دادەنرێت.", // discover
            onPressedBritish: () => speakdiscovers1("en-GB"),
            onPressedAmerican: () => speakdiscovers1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Scientists around the world are working to discover a cure for AIDS.",
            kurdishText:
                "زاناکان لە جیھاندا ھەوڵ دەدەن چارەسەرێک بۆ ئایدز بدۆزنەوە.",
            onPressedBritish: () => speakdiscovers2("en-GB"),
            onPressedAmerican: () => speakdiscovers2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They first discovered this protein about five years ago.",
            kurdishText:
                "بۆ یەکەم نزیکەی پێنج ساڵ پێش ئێستا ئەم پڕۆتینەیان دۆزییەوە.",
            onPressedBritish: () => speakdiscovers3("en-GB"),
            onPressedAmerican: () => speakdiscovers3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She recently discovered two fungi that were new to science.",
            kurdishText:
                "تازەگی دوو جۆر کەڕووی دۆزییەوە کە تازە بوون بۆ زاناکان.",
            onPressedBritish: () => speakdiscovers4("en-GB"),
            onPressedAmerican: () => speakdiscovers4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Researchers are hoping to discover new way to purify water.",
            kurdishText:
                "لێکۆڵەران بەھیوای دۆزینەوەی ڕێگای تازەن بۆ پاککردنەوەی ئاو.",
            onPressedBritish: () => speakdiscovers5("en-GB"),
            onPressedAmerican: () => speakdiscovers5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) دۆزینەوەی شتێکی شاراوە یان شتێک بە ڕێکەوت"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Police discovered a large stash of drugs while searching the house.",
            kurdishText:
                "پۆلیس بڕێکی زۆر لە مادەی ھۆشبەری دۆزییەوە لەکاتی گەڕانی خانووەکە.",
            onPressedBritish: () => speakdiscovers6("en-GB"),
            onPressedAmerican: () => speakdiscovers6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We discovered this beach while we were sailing around the island.",
            kurdishText: "ئەم کەناراوەمان دۆزییەوە کە بە دوورگەکەدا دەگەڕاین.",
            onPressedBritish: () => speakdiscovers7("en-GB"),
            onPressedAmerican: () => speakdiscovers7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His body was discovered in the lake near his house.",
            kurdishText: "لاشەکەی لە دەریاچەکەی نزیکی ماڵیان دۆزرایەوە.",
            onPressedBritish: () => speakdiscovers8("en-GB"),
            onPressedAmerican: () => speakdiscovers8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) زانین لەسەر شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "She was determined to discover the truth about her neighbours.",
            kurdishText:
                "سوور بوو لەسەر ئەوەی کە ڕاستییەکە لەسەر دراوسێکانی بزانێت.",
            onPressedBritish: () => speakdiscovers9("en-GB"),
            onPressedAmerican: () => speakdiscovers9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Discover the joys of yoga!",
            kurdishText: "خۆشییەکانی یۆگا بدۆزەوە!",
            onPressedBritish: () => speakdiscovers10("en-GB"),
            onPressedAmerican: () => speakdiscovers10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It was a shock to discover (that) he couldn’t read.",
            kurdishText: "شۆکێک بوو کە زانیم ناتوانێت بخوێنێتەوە.",
            onPressedBritish: () => speakdiscovers11("en-GB"),
            onPressedAmerican: () => speakdiscovers11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We never did discover why she gave up her job.",
            kurdishText: "ھەرگیز نەمانزانی بۆچی وازی لە کارەکەی ھێنا.",
            onPressedBritish: () => speakdiscovers12("en-GB"),
            onPressedAmerican: () => speakdiscovers12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بوون بە یەکەم کەس کە بزانیت کەسێک لە گۆرانی گوتن، نمایش کردن، ھتد باشە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The singer was discovered while still at school.",
            kurdishText:
                "گۆرانیبێژەکە تواناکانی زانرا لە کاتێکدا ھێشتا لە قوتابخانە بوو.",
            onPressedBritish: () => speakdiscovers13("en-GB"),
            onPressedAmerican: () => speakdiscovers13("en-US"),
          ),
          // discovers1400"),
          // speakdiscovers14
          // discovers14("en-US"),
          // discovers1500"),
          // speakdiscovers15
          // discovers15("en-US"),
          // discovers1600"),
          // speakdiscovers16
          // discovers16("en-US"),
          // discovers1700"),
          // speakdiscovers17
          // discovers17("en-US"),
          // discovers1800"),
          // speakdiscovers18
          // discovers18("en-US"),
          // discovers1900"),
          // speakdiscovers19
          // discovers19("en-US"),
          // discovers_2000"),
          // speakdiscovers20
          // discovers20("en-US"),
          // discovers2100"),
          // speakdiscovers21
          // discovers21("en-US"),
          // discovers2200"),
          // speakdiscovers22
          // discovers22("en-US"),
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
- Verb: discover (derived forms: discovered, discovering, discovers)
1. Determine the existence, presence, or fact of (= detect, observe, find, notice)
"She discovered high levels of lead in her drinking water";
 
2. Get to know or become aware of, usually accidentally (= learn, hear, get word, get wind, pick up, find out, get a line, see)
"I discovered that she has two grown-up children";
 
2. Make a discovery, make a new finding (= find)
"Roentgen discovered X-rays";
 
3. Find unexpectedly (= fall upon, strike, come upon, light upon, chance upon, come across, chance on, happen upon, attain)
"she discovered a goldmine";
 
4. Make known to the public information that was previously known only to a few people or that was meant to be kept a secret (= unwrap, disclose, let on, bring out, reveal, expose, divulge, break, give away, let out, uncover, lay bare)
"discover the evidence in the murder case";
 
5. See for the first time; make a discovery
"Who discovered the North Pole?"
 
6. Classify or apply the appropriate name to, e.g. in botany or biology (= identify, key, key out, distinguish, describe, name)
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 413;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 527;

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

  final String _videoId = 'a3WnvDtDD2M';
  final double _startSeconds = 58;

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

  final String _videoId = 'rOqUiXhECos';
  final double _startSeconds = 273;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1635;

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

  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 587;

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

  final String _videoId = 'AdYaTa_lOf4';
  final double _startSeconds = 82;

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