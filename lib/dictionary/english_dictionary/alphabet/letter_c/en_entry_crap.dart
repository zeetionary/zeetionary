import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrap extends StatefulWidget {
  const EnglishEntrycrap({super.key});

  @override
  State<EnglishEntrycrap> createState() => _EnglishEntrycrapState();
}

class _EnglishEntrycrapState extends State<EnglishEntrycrap> {
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
    return const EntryTitle(word: "crap");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crap");
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
    return const IPAofEnglish(text: "IpaUK: /kræp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrap(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crap");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrap("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kræp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrap(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crap");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrap("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcraps1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The team played crap yesterday.");
  }

  Future<void> speakcraps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's cut the crap and get down to business.");
  }

  Future<void> speakcraps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's so full of crap.");
  }

  Future<void> speakcraps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This work is complete crap.");
  }

  Future<void> speakcraps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I won’t put up with any old crap.");
  }

  Future<void> speakcraps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm not going to take this crap any more.");
  }

  Future<void> speakcraps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby's diaper was full of crap.");
  }

  Future<void> speakcraps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The concert was crap.");
  }

  Future<void> speakcraps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dog crapped on the carpet.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: گوو، پیسایی،	ھەڵیت‌وپڵیت، قسەی قۆڕ، شڕم‌وبڕم،	خراپۆکە، گەن‌وگووژاڵ، بازاڕی، بێ‌بایەخ، ھیچەکە، خراپ، بێ‌نرخ، خڵتەوخاڵ، ئاشاخە، لاف، فڵتەفڵت
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵکار) زۆر خراپ"),
          SentencesRow(
            englishText: "The team played crap yesterday.",
            kurdishText: "تیمەکە دوێنێ زۆر خراپ یاری کرد.",
            onPressedBritish: () => speakcraps1("en-GB"),
            onPressedAmerican: () => speakcraps1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) بیرۆکە و قسە و بیر و باوەڕ کە پێت وایە ڕاست نیین یان ھیچن"),
          SentencesRow(
            englishText: "Let's cut the crap and get down to business.",
            kurdishText: "با واز لە قسەی قۆڕ بێنین و دەست بە کار بکەین.",
            onPressedBritish: () => speakcraps2("en-GB"),
            onPressedAmerican: () => speakcraps2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He's so full of crap.",
            kurdishText: "پڕ لە ھەڵیت‌وپەڵیتە.",
            onPressedBritish: () => speakcraps3("en-GB"),
            onPressedAmerican: () => speakcraps3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) بە شتێکی دەگوترێت کە پێتوایە لە ئاستێکی نزمدایە"),
          SentencesRow(
            englishText: "This work is complete crap.",
            kurdishText: "ئەم کارە تەواو گەن‌وگووژاڵە.",
            onPressedBritish: () => speakcraps4("en-GB"),
            onPressedAmerican: () => speakcraps4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I won’t put up with any old crap.",
            kurdishText: "بەرگەی ھیچ فڵتەفڵتی تر ناگرم.",
            onPressedBritish: () => speakcraps5("en-GB"),
            onPressedAmerican: () => speakcraps5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) وشەیەک بۆ ڕەفتار و ڕەخنە کە پێتوایە ناڕەوایە"),
          SentencesRow(
            englishText: "I'm not going to take this crap any more.",
            kurdishText: "چیتر ڕێگا بەم نادادییە نادەم.",
            onPressedBritish: () => speakcraps6("en-GB"),
            onPressedAmerican: () => speakcraps6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) پیسایی؛ پیسایی کردن"),
          SentencesRow(
            englishText: "The baby's diaper was full of crap.",
            kurdishText: "دایبی منداڵەکە پڕ لە پیسایی بوو.",
            onPressedBritish: () => speakcraps7("en-GB"),
            onPressedAmerican: () => speakcraps7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) ئاست نزم"),
          SentencesRow(
            englishText: "The concert was crap.",
            kurdishText: "کۆنسێرتەکە پڕوپووچ بوو.",
            onPressedBritish: () => speakcraps8("en-GB"),
            onPressedAmerican: () => speakcraps8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) پیسایی کردن"),
          SentencesRow(
            englishText: "The dog crapped on the carpet.",
            kurdishText: "سەگەکە لەسەر ڕایەخەکە پیسایی کرد.",
            onPressedBritish: () => speakcraps9("en-GB"),
            onPressedAmerican: () => speakcraps9("en-US"),
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
- Noun: crap (derived forms: craps)
Usage: vulgar
1. Obscene term for faeces
 
2. Obscene word for unacceptable behaviour
"I put up with a lot of crap from that jerk";
 
3. Statements or beliefs that are untrue or make no sense (= bunk [informal], bunkum [informal], buncombe [informal], guff [informal], rot [informal], hogwash [informal], flapdoodle [N. Amer, informal], rhubarb [Brit, informal], Irish bull [slang], bull [slang], junk [informal], bilge [informal], nonsense, jive [N. Amer, informal], folderol, rubbish [informal], tripe [informal], trumpery [archaic], trash [informal], wish-wash [informal], applesauce [N. Amer, informal], codswallop [Brit, informal], falderal)

- Verb: crap (derived forms: crapping, craps, crapped)
Usage: vulgar
1. Have a bowel movement (= stool, defecate, ca-ca [N. Amer, informal], make [informal], defaecate [Brit, rare], poop [N. Amer, informal])
"The dog had crapped in the flower beds";

- Adjective: crap (derived forms: crappest, crapper)
Usage: vulgar
1. [Brit, vulgar] Of very poor quality; flimsy (= bum [informal], cheap, cheesy [informal], chintzy [N. Amer, informal], crummy [informal], punk [N. Amer, informal], sleazy [archaic], tinny [archaic], tacky [informal], crumby [informal])

- Very bad (= icky [informal], lousy [informal], rotten, stinking, stinky [informal], dire [Brit, informal], rubbish [Brit, informal], crummy [informal])
"a crap play";
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

  final String _videoId = 'DesEUpFgGrQ';
  final double _startSeconds = 110;

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

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 246;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 256;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 174;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 733;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 717;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 717;

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