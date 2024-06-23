import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscredit extends StatefulWidget {
  const EnglishEntrydiscredit({super.key});

  @override
  State<EnglishEntrydiscredit> createState() => _EnglishEntrydiscreditState();
}

class _EnglishEntrydiscreditState extends State<EnglishEntrydiscredit> {
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
    return const EntryTitle(word: "discredit");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discredit");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈkredɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscredit(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discredit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscredit("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈkredɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscredit(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discredit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscredit("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscredits1(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The photos were deliberately taken to discredit the president.");
  }

  Future<void> speakdiscredits2(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She accused the minister of trying to discredit the government.");
  }

  Future<void> speakdiscredits3(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This was a blatant attempt to discredit this company.");
  }

  Future<void> speakdiscredits4(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These theories are now largely discredited among linguists.");
  }

  Future<void> speakdiscredits5(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This new evidence discredits earlier findings.");
  }

  Future<void> speakdiscredits6(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Violent football fans bring discredit on the teams they support.");
  }

  Future<void> speakdiscredits7(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My brother’s behaviour did great discredit to the family.");
  }

  Future<void> speakdiscredits8(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Britain, to its discredit, did not speak out against these atrocities.");
  }

  Future<void> speakdiscredits9(String languageCode) async {
    // DOPSUM: CHANGE speakdiscredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were a discredit to their country.");
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
کوردی: بێ‌ئابڕوویی، ئابڕووچوویی، تڕۆیی، شوورەیی، ناوزڕاوی، زڕاوی، سووکی، ڕووڕەشی،	بێ‌باوەڕی، بێ‌بڕەوی،	بێ‌باوەڕی، شک، گومان، دوودڵی،	مایەی ئابڕووچوون یان بێ‌باوەڕێ
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) وا لە خەڵکی دیکە بکەیت کە ڕێزی کەسێک/شتێک نەکەن"),
          SentencesRow(
            englishText:
                "The photos were deliberately taken to discredit the president.",
            kurdishText:
                "وێنەکان بە ئەنقەست گیردران بۆ ناوزڕاندنی سەرۆک.", // discredit
            onPressedBritish: () => speakdiscredits1("en-GB"),
            onPressedAmerican: () => speakdiscredits1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She accused the minister of trying to discredit the government.",
            kurdishText: "وەزیرەکەی تۆمەتبار کرد بە ئابڕووبردنی حکومەت.",
            onPressedBritish: () => speakdiscredits2("en-GB"),
            onPressedAmerican: () => speakdiscredits2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This was a blatant attempt to discredit this company.",
            kurdishText:
                "ئەمە ھەوڵێکی ئاشکرا بوو بۆ ناوزڕاندنی ئەم کۆمپانیایە.",
            onPressedBritish: () => speakdiscredits3("en-GB"),
            onPressedAmerican: () => speakdiscredits3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) واکردنی ئەوەی خەڵکی بوەستن لە باوەڕکردن بە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "These theories are now largely discredited among linguists.",
            kurdishText: "ئەم بیردۆزانە ئێستا بەزۆری لەلایەن زمانناسانەوە.",
            onPressedBritish: () => speakdiscredits4("en-GB"),
            onPressedAmerican: () => speakdiscredits4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This new evidence discredits earlier findings.",
            kurdishText: "ئەم بەڵگە تازەیە دۆزینەوە کۆنەکان بەدرۆدەخاتەوە.",
            onPressedBritish: () => speakdiscredits5("en-GB"),
            onPressedAmerican: () => speakdiscredits5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) زیان بە ناوبانگی کەسێک/شتێک"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Violent football fans bring discredit on the teams they support.",
            kurdishText:
                "ھەوادارە توندوتیژەکانی تۆپی پێ مایەی ئابڕووچوونن بۆ ئەو تیمەی پشتگیری دەکەن.",
            onPressedBritish: () => speakdiscredits6("en-GB"),
            onPressedAmerican: () => speakdiscredits6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "My brother’s behaviour did great discredit to the family.",
            kurdishText:
                "ڕەفتاری براکەم ئابڕووچوونی گەورەی گەیاند بە خێزانەکە.",
            onPressedBritish: () => speakdiscredits7("en-GB"),
            onPressedAmerican: () => speakdiscredits7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Britain, to its discredit, did not speak out against these atrocities.",
            kurdishText:
                "بەریتانیا، بە مایەی ئابڕووچوونی، دەنگی نەکرد دژ بەم تاوانانە.",
            onPressedBritish: () => speakdiscredits8("en-GB"),
            onPressedAmerican: () => speakdiscredits8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شتێک یان کەسێک کە جێگای ئابڕووچوونە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They were a discredit to their country.",
            kurdishText: "شەرمھێنەر بوون بۆ وڵاتەکەیان.",
            onPressedBritish: () => speakdiscredits9("en-GB"),
            onPressedAmerican: () => speakdiscredits9("en-US"),
          ),
          // discredits_1000"),
          // speakdiscredits10
          // discredits10
          // discredits1100"),
          // speakdiscredits11
          // discredits11
          // discredits1200"),
          // speakdiscredits12
          // discredits12
          // discredits1300"),
          // speakdiscredits13
          // discredits13
          // discredits1400"),
          // speakdiscredits14
          // discredits14
          // discredits1500"),
          // speakdiscredits15
          // discredits15
          // discredits1600"),
          // speakdiscredits16
          // discredits16
          // discredits1700"),
          // speakdiscredits17
          // discredits17
          // discredits1800"),
          // speakdiscredits18
          // discredits18
          // discredits1900"),
          // speakdiscredits19
          // discredits19
          // discredits_2000"),
          // speakdiscredits20
          // discredits20
          // discredits2100"),
          // speakdiscredits21
          // discredits21
          // discredits2200"),
          // speakdiscredits22
          // discredits22("en-US"),
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
- Noun: discredit (derived forms: discredits)
1. The state of being held in low esteem (= disrepute)
"your actions will bring discredit to your name";

- Verb: discredit (derived forms: discredited, discrediting, discredits)
1. Cause to be distrusted or disbelieved
"The paper discredited the politician with its nasty commentary"
 
2. Damage the reputation of (= disgrace)
"This newspaper story discredits the politicians";
 
3. Reject as false; refuse to accept (= disbelieve)
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'oHSehKtDyoI';
  final double _startSeconds = 837;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Mp11EzxCOG4';
  final double _startSeconds = 316;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'YLmDE_JYUNU';
  final double _startSeconds = 1002;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'wrsUbwKGuko';
  final double _startSeconds = 2597;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'cffELv3X1ik';
  final double _startSeconds = 2646;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'h63JTsVdntw';
  final double _startSeconds = 646;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '8tT3FhOA4-g';
  final double _startSeconds = 142;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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