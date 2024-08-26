import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeposit extends StatefulWidget {
  const EnglishEntrydeposit({super.key});

  @override
  State<EnglishEntrydeposit> createState() => _EnglishEntrydepositState();
}

class _EnglishEntrydepositState extends State<EnglishEntrydeposit> {
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
    return const EntryTitle(word: "deposit");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deposit");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈpɒzɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeposit(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deposit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeposit("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈpɑːzɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeposit(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deposit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeposit("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeposits1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They normally ask you to pay £100 (as a) deposit.");
  }

  Future<void> speakdeposits2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We've put down a five per cent deposit on the house.");
  }

  Future<void> speakdeposits3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They'll probably ask you to leave a deposit.");
  }

  Future<void> speakdeposits4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You'll get back your deposit once we've checked the bikes are all right.");
  }

  Future<void> speakdeposits5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She made a deposit of £60 into her account.");
  }

  Future<void> speakdeposits6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All the other candidates lost their deposits.");
  }

  Future<void> speakdeposits7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Millions were deposited in Swiss bank accounts.");
  }

  Future<void> speakdeposits8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You can withdraw and deposit money in any of our branches.");
  }

  Future<void> speakdeposits9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You deposit 20 percent now and pay the rest when the car is delivered.");
  }

  Future<void> speakdeposits10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She deposited a pile of books on my desk.");
  }

  Future<void> speakdeposits20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We've put down a five per cent deposit on the house.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: سپاردە، ئەسپاردە، ئەمانەتی، ئەمانەت،	بارمتە، گرێو،	پێشەکی،	نیشتن،	لۆ، توێژاڵ،	(مەی و ھتد) خڵتە، دۆرد
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بڕە پارەیەک کە وەک سەرەتایەک بۆ بڕێکی زیاتر دەدرێت"),
          SentencesRow(
            englishText: "They normally ask you to pay £100 (as a) deposit.",
            kurdishText:
                "بەشێوەیەکی ئاسایی داوادەکەن ١٠٠ پاوەند وەک پێشەکی بدەیت.",
            onPressedBritish: () => speakdeposits1("en-GB"),
            onPressedAmerican: () => speakdeposits1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We've put down a five per cent deposit on the house.",
            kurdishText: "پێشەکی پێنج لە سەدمان داناوە لەسەر خانووەکە.",
            onPressedBritish: () => speakdeposits2("en-GB"),
            onPressedAmerican: () => speakdeposits2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) بڕە پارەیەک کە دایدەنێیت کاتێک شتێک بە قەرز دەبەیت و پارەکە وەردەگریتەوە ئەگەر شتەکە بەبێ زیان بگەڕێنیتەوە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "They'll probably ask you to leave a deposit.",
            kurdishText: "ئەگەری ھەیە داوات لێ بکەن بڕێک پارە بخەوێنیت.",
            onPressedBritish: () => speakdeposits3("en-GB"),
            onPressedAmerican: () => speakdeposits3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You'll get back your deposit once we've checked the bikes are all right.",
            kurdishText:
                "بارمتەکەت وەردەگریتەوە کە سەیر دەکەین پاسکیلەکان تەواون.",
            onPressedBritish: () => speakdeposits4("en-GB"),
            onPressedAmerican: () => speakdeposits4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) بڕە پارەیەک کە دەخرێتە ھەژمارێکی بانکییەوە"),
          SentencesRow(
            englishText: "She made a deposit of £60 into her account.",
            kurdishText: "٦٠ پاوەندی خستە ھەژمارەکەیەوە.",
            onPressedBritish: () => speakdeposits5("en-GB"),
            onPressedAmerican: () => speakdeposits5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) بڕە پارەیەک کە بەربژێرێکی پەرلەمانی بەریتانیا دەیخەوێنێت و وەریدەگرێتەوە ئەگەر بباتەوە"),
          SentencesRow(
            englishText: "All the other candidates lost their deposits.",
            kurdishText: "ھەموو کاندیدەکانی دیکە بارمتەکانیان لەدەستدا.",
            onPressedBritish: () => speakdeposits6("en-GB"),
            onPressedAmerican: () => speakdeposits6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) دانانی پارە لە ھەژماری بانکی"),
          SentencesRow(
            englishText: "Millions were deposited in Swiss bank accounts.",
            kurdishText: "ملیۆنان خرایە ھەژمارە بانکییەکانی سویسراوە.",
            onPressedBritish: () => speakdeposits7("en-GB"),
            onPressedAmerican: () => speakdeposits7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You can withdraw and deposit money in any of our branches.",
            kurdishText:
                "دەتوانیت پارە ڕابکێشیت و بخەوێنیت لە ھەر یەکێک لە لقەکانمان.",
            onPressedBritish: () => speakdeposits8("en-GB"),
            onPressedAmerican: () => speakdeposits8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) پێدانی بڕە پارەیەک وەک پێشەکی و دواتر دانەوەی بەشەکەی دیکە"),
          SentencesRow(
            englishText:
                "You deposit 20 percent now and pay the rest when the car is delivered.",
            kurdishText:
                "ئێستا پێشەکی ٢٠ لە سەد دەدەیت و ئەوەی دیکە ئەو کاتە کە ئۆتۆمبێلەکە دەگوازرێتەوە.",
            onPressedBritish: () => speakdeposits9("en-GB"),
            onPressedAmerican: () => speakdeposits9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) دانانی شتێک لە شوێنێکی دیاریکراو"),
          SentencesRow(
            englishText: "She deposited a pile of books on my desk.",
            kurdishText: "ڕیزێک کتێبی خستە سەر مێزەکەم.",
            onPressedBritish: () => speakdeposits10("en-GB"),
            onPressedAmerican: () => speakdeposits10("en-US"),
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
- Verb: deposit (derived forms: deposits, deposited, depositing)
1. Put, fix, force, or implant (= lodge, wedge, stick)
"deposit a bullet in the table";
 
2. Put into a bank account (= bank)
"She deposits her paycheque every month";
 
3. Put (something somewhere) firmly (= situate, fix, posit)
"deposit the suitcase on the bench";

- Noun: deposit (derived forms: deposits)
1. The phenomenon of sediment or gravel accumulating (= sedimentation, alluviation)
 
2. Matter that has been deposited by some natural process (= sediment)
 
3. The natural process of laying down a deposit of something (= deposition)
 
4. Money deposited in a bank or some similar institution (= bank deposit)
 
5. A partial payment made at the time of purchase; the balance to be paid later (= down payment)
 
6. Money given as security for an article acquired for temporary use
"his deposit was refunded when he returned the car"
 
7. A payment given as a guarantee that an obligation will be met
 
8. A facility where things can be deposited for storage or safekeeping (= depository, depositary, repository)
 
9. The act of putting something somewhere (= deposition)
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 388;

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

  final String _videoId = 'TVKNpjnqeg0';
  final double _startSeconds = 814;

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

  final String _videoId = 'UvjSXBqQe4A';
  final double _startSeconds = 538;

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

  final String _videoId = 'ImoP-Apzrsg';
  final double _startSeconds = 412;

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

  final String _videoId = 'ao2Jfm35XeE';
  final double _startSeconds = 510;

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

  final String _videoId = 'Gi3HnqetpLw';
  final double _startSeconds = 287;

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

  final String _videoId = 'BztMgcNgobk';
  final double _startSeconds = 600;

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