import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycup extends StatefulWidget {
  const EnglishEntrycup({super.key});

  @override
  State<EnglishEntrycup> createState() => _EnglishEntrycupState();
}

class _EnglishEntrycupState extends State<EnglishEntrycup> {
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
    return const EntryTitle(word: "cup");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cup");
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
    return const IPAofEnglish(text: "IpaUK: /kʌp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcup(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cup");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcup("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kʌp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcup(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cup");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcup("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcups1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He filled the cup with water.");
  }

  Future<void> speakcups2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Customers don't like drinking out of plastic cups.");
  }

  Future<void> speakcups3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was so thirsty that she drained her cup.");
  }

  Future<void> speakcups4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drank the whole cup.");
  }

  Future<void> speakcups5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Would you like a cup of tea?");
  }

  Future<void> speakcups6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I drink about ten cups of coffee a day.");
  }

  Future<void> speakcups7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who won the cup?");
  }

  Future<void> speakcups8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He lifted the cup for the fifth time this year.");
  }

  Future<void> speakcups9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They lost to Portugal in the World Cup quarter finals.");
  }

  Future<void> speakcups10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The team are ready for next week's World Cup clash with Italy.");
  }

  Future<void> speakcups11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Evenly fill the cups with the batter.");
  }

  Future<void> speakcups12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("\"What size bra do you wear?\" \"I wear a C cup.\"");
  }

  Future<void> speakcups13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She held the bird gently in cupped hands.");
  }

  Future<void> speakcups14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He cupped her face in his hands and kissed her.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: پیاڵە، کۆتک، کاس، بایە، تاسولکە، جام، قاپ،	ئایەرە، لیوان،	جام یان کاس (لە پێشبڕکێ، خەڵات و ھتد)،	خواردنەوە،	پڕپیاڵەیێ،	شاخ، کەڵەشاخ (بۆ خوێن‌گرتن)،	بەش، پشک،	(ڕووەک‌ناسی) کاسە، کڵاوە، پیاڵە، جام
"""),
          const DefinitionKurdish(
              text: "١. (ناو) پیاڵە بۆ خواردنەوەی چا، قاوە، ھتد"),
          SentencesRow(
            englishText: "He filled the cup with water.",
            kurdishText:
                "پیاڵەکەی پڕکرد لە ئاو.", // cup", please follow LX instructions
            onPressedBritish: () => speakcups1("en-GB"),
            onPressedAmerican: () => speakcups1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Customers don't like drinking out of plastic cups.",
            kurdishText:
                "موشتەرییەکان حەزیان لە خواردنەوە نییە لە ناو پەرداخی پلاستیکیدا.",
            onPressedBritish: () => speakcups2("en-GB"),
            onPressedAmerican: () => speakcups2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was so thirsty that she drained her cup.",
            kurdishText: "ھێندە تینوو بوو کە پەرداخەکەی بەتاڵ کرد.",
            onPressedBritish: () => speakcups3("en-GB"),
            onPressedAmerican: () => speakcups3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو بڕەی لە ناوی پیاڵەیەک یان پەرداخێکدایە"),
          SentencesRow(
            englishText: "She drank the whole cup.",
            kurdishText: "تەواوی پیاڵەکەی خواردەوە.",
            onPressedBritish: () => speakcups4("en-GB"),
            onPressedAmerican: () => speakcups4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Would you like a cup of tea?",
            kurdishText: "حەز بە پیاڵەیەک چا دەکەیت؟",
            onPressedBritish: () => speakcups5("en-GB"),
            onPressedAmerican: () => speakcups5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I drink about ten cups of coffee a day.",
            kurdishText: "ڕۆژانە نزیکەی ١٠ پیاڵە قاوە دەخۆمەوە.",
            onPressedBritish: () => speakcups6("en-GB"),
            onPressedAmerican: () => speakcups6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) جامی پاڵەوانێتی"),
          SentencesRow(
            englishText: "Who won the cup?",
            kurdishText: "کێ جامەکەی بردەوە؟",
            onPressedBritish: () => speakcups7("en-GB"),
            onPressedAmerican: () => speakcups7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He lifted the cup (= won) for the fifth time this year.",
            kurdishText: "بۆ پێنجەم جار لەم ساڵدا جامەکەی بەرزکردەوە.",
            onPressedBritish: () => speakcups8("en-GB"),
            onPressedAmerican: () => speakcups8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) پاڵەوانێتییەکی وەرزشی کە تێیدا جامێک وەک خەڵات دەدرێت"),
          SentencesRow(
            englishText:
                "They lost to Portugal in the World Cup quarter finals.",
            kurdishText:
                "لە چارەکی کۆتاییدا لە جامی جیھانی دۆڕاندیان بەرامبەر پرتوگال.",
            onPressedBritish: () => speakcups9("en-GB"),
            onPressedAmerican: () => speakcups9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The team are ready for next week's World Cup clash with Italy.",
            kurdishText:
                "تیمەکە ئامادەیە بۆ ڕووبەڕووبوونەوەی ھەفتەی داھاتووی جامی جیھانی بەرامبەر ئیتالیا.",
            onPressedBritish: () => speakcups10("en-GB"),
            onPressedAmerican: () => speakcups10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) یەکەیەکی پێوانەکردن لە خواردن درووستکردندا کە کە بەشێوەیەکی سەرەکی لە ئەمریکا بەکاردێت"),
          SentencesRow(
            englishText: "Add 2 cups (of) flour and half a cup (of) sugar.",
            kurdishText: "دوو کووپ ئارد و نیو کووپ شەکر زیاد بکە.",
            onPressedBritish: () => speakcups1("en-GB"),
            onPressedAmerican: () => speakcups1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) شتێک کە شێوەی کوپێکی ھەیە"),
          SentencesRow(
            englishText: "Evenly fill the cups with the batter.",
            kurdishText: "بە یەکسانی کوپەکان پڕ بکە لە ھەویر.",
            onPressedBritish: () => speakcups11("en-GB"),
            onPressedAmerican: () => speakcups11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) یەکێک لەو بەشانەی ستیان کە مەمک دادەپۆشێت"),
          SentencesRow(
            englishText: "\"What size bra do you wear?\" \"I wear a C cup.\"",
            kurdishText:
                "'چی قەبارەیەکی ستیان لەبەر دەکەیت؟' 'قەبارەی مەمکبەندی C دەبەستم.'",
            onPressedBritish: () => speakcups12("en-GB"),
            onPressedAmerican: () => speakcups12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) دانانی دەست لە شێوەی دەفرێکدا"),
          SentencesRow(
            englishText: "She held the bird gently in cupped hands.",
            kurdishText: "باڵندەکەی بەھێمنی گرت لە شێوەی دەستی وەک دەفرێک.",
            onPressedBritish: () => speakcups13("en-GB"),
            onPressedAmerican: () => speakcups13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) گرتنی شتێک کە دەستت لە شێوەی دەفرێکدایە"),
          SentencesRow(
            englishText: "He cupped her face in his hands and kissed her.",
            kurdishText: "ڕووخساری لە دەستیدا گرت و ماچی کرد.",
            onPressedBritish: () => speakcups14("en-GB"),
            onPressedAmerican: () => speakcups14("en-US"),
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
- Noun: cup (derived forms: cups)
1. A small open container usually used for drinking; usually has a handle
"he put the cup back in the saucer"; "the handle of the cup was missing"
 
2. The quantity a cup will hold (= cupful)
"he borrowed a cup of sugar"; "he drank a cup of coffee";
 
3. Any cup-shaped concavity
"bees filled the waxen cups with honey"; "he wore a jock strap with a metal cup"; "the cup of her bra"
 
4. A United States liquid unit equal to 8 fluid ounces
 
5. Cup-shaped plant organ
 
6. A punch served in a pitcher instead of a punch bowl
 
7. The hole (or metal container in the hole) on a golf green
"he swore as the ball rimmed the cup and rolled away"; "put the flag back in the cup"
 
8. A large metal vessel with two handles that is awarded as a trophy to the winner of a competition (= loving cup)
"the school kept the cups in a special glass case";
 
9. A contest for which a cup is awarded to the winner

- Verb: cup (derived forms: cups, cupping, cupped)
1. Form into the shape of a cup
"She cupped her hands"
 
5. Put into a cup
"cup the milk"
 
6. (medicine) treat by applying evacuated cups to the patient's skin (= transfuse)
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
  final double _startSeconds = 226;

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

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 187;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 431;

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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 1271;

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

  final String _videoId = 'XlHzvTEstz8';
  final double _startSeconds = 728;

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

  final String _videoId = 'a9m3GD0DbPY';
  final double _startSeconds = 403;

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

  final String _videoId = 'dXt1ftcdxNg';
  final double _startSeconds = 232;

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