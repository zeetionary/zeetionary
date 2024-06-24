import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydear extends StatefulWidget {
  const EnglishEntrydear({super.key});

  @override
  State<EnglishEntrydear> createState() => _EnglishEntrydearState();
}

class _EnglishEntrydearState extends State<EnglishEntrydear> {
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
    return const EntryTitle(word: "dear");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dear");
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
    return const IPAofEnglish(text: "IpaUK: /dɪə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdear(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dear");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdear("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdear(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dear");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdear("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdears1(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dear Mrs Jones");
  }

  Future<void> speakdears2(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's one of my dearest friends.");
  }

  Future<void> speakdears3(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her daughter is very dear to her.");
  }

  Future<void> speakdears4(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They lost everything that was dear to them.");
  }

  Future<void> speakdears5(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take my advice, dear reader.");
  }

  Future<void> speakdears6(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Everything's so dear now, isn't it?");
  }

  Future<void> speakdears7(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was a shortage of potatoes, and they became dear.");
  }

  Future<void> speakdears8(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Oh dear! I think I've lost my purse!");
  }

  Future<void> speakdears9(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Oh dear! What a shame.");
  }

  Future<void> speakdears10(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Isn't he a dear?");
  }

  Future<void> speakdears11(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be a dear and fetch me my coat.");
  }

  Future<void> speakdears12(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would you like a drink, dear?");
  }

  Future<void> speakdears13(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come here, my dear.");
  }

  Future<void> speakdears14(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your name, dear?");
  }

  Future<void> speakdears15(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The art of trading relies on knowing when to buy cheap and sell dear.");
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
کوردی: ئازیز، خۆشەویست، لەبەردڵان، ژیکەڵە، دەلال، جوان، نازدار،	(لە نامەدا) خۆشەویست، بەڕێز، ئازیز، ھێژا، گران، گرانبایی، زۆربڕ،	مرۆی ژیکەڵە، لەبەردڵان،	(لە بانگ‌کردن‌دا) گیانەکەم! دنیاودینەکەم! خۆشەویستەکەم! ئازیزەکەم! کەس‌وکارەکەم! گیانی‌گیان! ئاخ! بەزیادم نەکرد! ئەح!
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) لە نامەیەکدا لە پێش ناوی ئەو کەسە بەکاردێت کە نامەکەی بۆ دەنێریت"),
          SentencesRow(
            englishText: "Dear Mrs Jones",
            kurdishText: "بەڕێز خاتوو جەونز.", // dear
            onPressedBritish: () => speakdears1("en-GB"),
            onPressedAmerican: () => speakdears1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ئازیر یان خۆشەویست لای کەسێک"),
          SentencesRow(
            englishText: "He's one of my dearest friends.",
            kurdishText: "یەکێک لە ئازیترین ھاوڕێکانمە.",
            onPressedBritish: () => speakdears2("en-GB"),
            onPressedAmerican: () => speakdears2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her daughter is very dear to her.",
            kurdishText: "کچەکەی زۆر ئازیزە لای.",
            onPressedBritish: () => speakdears3("en-GB"),
            onPressedAmerican: () => speakdears3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They lost everything that was dear to them.",
            kurdishText: "ھەموو ئەو شتانەیان لەدەستدا کە خۆشەویست بوو لایان.",
            onPressedBritish: () => speakdears4("en-GB"),
            onPressedAmerican: () => speakdears4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ بانگکردنی کەسێک بە ڕێزەوە یان ھاوڕێیانە"),
          SentencesRow(
            englishText: "Take my advice, dear reader.",
            kurdishText: "ئامۆژگاریم وەربگرە، خوێنەری خۆشەویست.",
            onPressedBritish: () => speakdears5("en-GB"),
            onPressedAmerican: () => speakdears5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) گران"),
          SentencesRow(
            englishText: "Everything's so dear now, isn't it?",
            kurdishText: "ھەموو شتێک ئێستا زۆر گرانە، وانییە؟",
            onPressedBritish: () => speakdears6("en-GB"),
            onPressedAmerican: () => speakdears6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was a shortage of potatoes, and they became dear.",
            kurdishText: "کەمی پەتاتە ھەبوو، و زۆر گران بوو.",
            onPressedBritish: () => speakdears7("en-GB"),
            onPressedAmerican: () => speakdears7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (سەرسوڕمان) بۆ پیشاندانی سەرسامی، نیگەرانی، بێزاری، ھتد"),
          SentencesRow(
            englishText: "Oh dear! I think I've lost my purse!",
            kurdishText: "بەزیادم نەکرد! پێموایە جزدانەکەم ونکردووە.",
            onPressedBritish: () => speakdears8("en-GB"),
            onPressedAmerican: () => speakdears8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Oh dear! What a shame.",
            kurdishText: "ئای خوایە! چی شەرمێکە.",
            onPressedBritish: () => speakdears9("en-GB"),
            onPressedAmerican: () => speakdears9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) کەسێکی میھرەبان"),
          SentencesRow(
            englishText: "Isn't he a dear?",
            kurdishText: "میھرەبان نییە؟",
            onPressedBritish: () => speakdears10("en-GB"),
            onPressedAmerican: () => speakdears10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Be a dear and fetch me my coat.",
            kurdishText: "بەخشندە بە و قەمسەڵەکەم بۆ بێنە.",
            onPressedBritish: () => speakdears11("en-GB"),
            onPressedAmerican: () => speakdears11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) بۆ قسەکردن لەگەڵ کەسێک کە خۆشت دەوێت"),
          SentencesRow(
            englishText: "Would you like a drink, dear?",
            kurdishText: "حەزت بە خواردنەوەیەک، گیانەکەم؟",
            onPressedBritish: () => speakdears12("en-GB"),
            onPressedAmerican: () => speakdears12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Come here, my dear.",
            kurdishText: "وەرە ئێرە، جەرگەکەم.",
            onPressedBritish: () => speakdears13("en-GB"),
            onPressedAmerican: () => speakdears13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) بەکاردێت لەکاتی قسەکردن بەشێوەیەکی ھاوڕێیانە، بەتایبەتی لەکاتی قسەکردنی کەسێکی گەورە لەگەڵ کەسێکی بچووک"),
          SentencesRow(
            englishText: "What's your name, dear?",
            kurdishText: "ناوت چییە، شیرینم؟",
            onPressedBritish: () => speakdears14("en-GB"),
            onPressedAmerican: () => speakdears14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ھاوەڵکار) بە نرخێکی زۆر"),
          SentencesRow(
            englishText:
                "The art of trading relies on knowing when to buy cheap and sell dear.",
            kurdishText:
                "ھونەری بازرگانی پشت بە زانینی ئەوە دەبەستێت چۆن بکڕیت بە ھەرزان و بفرۆشیت بە گران.",
            onPressedBritish: () => speakdears15("en-GB"),
            onPressedAmerican: () => speakdears15("en-US"),
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
- Adjective: dear (derived forms: dearer, dearest)
1. Dearly loved (= beloved, darling)
 
2. With or in a close or intimate relationship (= good, near)
"my sisters and brothers are near and dear";
 
3. Sincerely intended and with strong feeling (= devout, earnest, heartfelt)
"one's dearest wish";
 
4. Having a high price (= costly, high-priced, pricey, pricy, spendy [N. Amer, informal])
"much too dear for my pocketbook";
 
5. A formal way of addressing somebody at the beginning of a letter or email

- Noun: dear (derived forms: dears)
1. Someone who is loved (used as term of endearment) (= beloved, dearest, honey [informal], love, darling, sweetheart, sugar [informal], baby [informal], duck [Brit, informal], hon [informal])
 
2. A sweet innocent mild-mannered person (especially a child) (= lamb)

- Adverb: dear 
1. With affection (= dearly, affectionately)
"she loved him dear";
 
2. At a great cost (= dearly)
"this cost him dear";

- Interjection: dear 
1. Used to express shock, dismay, disappointment, sympathy, etc. (= oh dear, dear me, dearie me [informal], Lordy [informal], good grief [informal])
"Oh dear; I was so miserable !"; "Oh, dear me, dear me, what shall I do?";
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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 424;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '3YltYCrPZos';
  final double _startSeconds = 166;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'nRafaCcfrcI';
  final double _startSeconds = 192;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'KJy7T24rhg0';
  final double _startSeconds = 69;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 607;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'NDjNX3nEfYo';
  final double _startSeconds = 606;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 572;

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