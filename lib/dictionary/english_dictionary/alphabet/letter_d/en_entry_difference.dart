import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydifference extends StatefulWidget {
  const EnglishEntrydifference({super.key});

  @override
  State<EnglishEntrydifference> createState() => _EnglishEntrydifferenceState();
}

class _EnglishEntrydifferenceState extends State<EnglishEntrydifference> {
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
    return const EntryTitle(word: "difference");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: difference");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪfrəns/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifference(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("difference");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdifference("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪfrəns/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifference(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("difference");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdifference("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifferences1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Americans and Brits speak the same language, but there are big cultural differences.");
  }

  Future<void> speakdifferences2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There are no significant differences between the education systems of the two countries.");
  }

  Future<void> speakdifferences3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was studying the similarities and differences between humans and animals.");
  }

  Future<void> speakdifferences4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I can never tell the difference between the twins.");
  }

  Future<void> speakdifferences5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's no difference in the results.");
  }

  Future<void> speakdifferences6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Despite their differences, the two are great friends.");
  }

  Future<void> speakdifferences7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We measured the difference in temperature.");
  }

  Future<void> speakdifferences8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The difference between the two numbers gives you the profit.");
  }

  Future<void> speakdifferences9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There's an age difference of six years between the boys.");
  }

  Future<void> speakdifferences10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I'll lend you £500 and you'll have to find the difference.");
  }

  Future<void> speakdifferences11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He didn't have enough money, but his aunt agreed to make up the difference.");
  }

  Future<void> speakdifferences12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The difference in price is not very significant.");
  }

  Future<void> speakdifferences13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We have our differences, but she's still my sister.");
  }

  Future<void> speakdifferences14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Why don't you settle your differences and be friends again?");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: جیاوازی، فەرق، جوداھی، جودایەتی، جیایی، کێشە، ناکۆکی، دژایەتی،	بێنەوبەرە، مشت‌ومڕ، گێروکێشە،	سەرباقی، ماوە، بەرماوە، لێ‌ماوە
"""),
          const DefinitionKurdish(text: "١. (ناو) جیاوازی نێوان دوو کەس/شت"),
          SentencesRow(
            englishText:
                "Americans and Brits speak the same language, but there are big cultural differences.",
            kurdishText:
                "ئەمریکی و بەریتانییەکان بە ھەمان زمان قسە دەکەن، بەڵام جیاوازی کەلتووری زۆر ھەیە.",
            onPressedBritish: () => speakdifferences1("en-GB"),
            onPressedAmerican: () => speakdifferences1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There are no significant differences between the education systems of the two countries.",
            kurdishText:
                "جیاوازی سیستەمی خوێندن و پەروەردەی گەورە نییە لە نێوان دوو وڵاتەکەدا.",
            onPressedBritish: () => speakdifferences2("en-GB"),
            onPressedAmerican: () => speakdifferences2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was studying the similarities and differences between humans and animals.",
            kurdishText:
                "لێکچوون و جیاوازییەکانی نێوان مرۆڤ و ئاژەڵانی دەخوێند.",
            onPressedBritish: () => speakdifferences3("en-GB"),
            onPressedAmerican: () => speakdifferences3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I can never tell the difference (= distinguish) between the twins.",
            kurdishText: "ھەرگیز ناتوانم جیاوازی لە نێوان دووانەکە بکەم.",
            onPressedBritish: () => speakdifferences4("en-GB"),
            onPressedAmerican: () => speakdifferences4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There's no difference in the results.",
            kurdishText: "ھیچ جیاوازییەک لە ئەنجامەکاندا نییە.",
            onPressedBritish: () => speakdifferences5("en-GB"),
            onPressedAmerican: () => speakdifferences5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Despite their differences, the two are great friends.",
            kurdishText: "سەرەڕای جیاوازییەکانیان، ھەردووکیان ھاوڕێی نزیکن.",
            onPressedBritish: () => speakdifferences6("en-GB"),
            onPressedAmerican: () => speakdifferences6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو بڕە کە جیاوازی لە نێوان دوو شت درووست دەکات"),
          SentencesRow(
            englishText: "We measured the difference in temperature.",
            kurdishText: "جیاوازیی پلەی گەرمیمان پێوا.",
            onPressedBritish: () => speakdifferences7("en-GB"),
            onPressedAmerican: () => speakdifferences7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The difference between the two numbers gives you the profit.",
            kurdishText: "جیاوازی نێوان دوو ژمارەکە قازانجەکەت پێ دەدات.",
            onPressedBritish: () => speakdifferences8("en-GB"),
            onPressedAmerican: () => speakdifferences8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There's an age difference of six years between the boys (= one is six years older than the other).",
            kurdishText: "جیاوازی تەمەنی شەش ساڵ ھەیە ل نێوان دوو کوڕەکەدا.",
            onPressedBritish: () => speakdifferences9("en-GB"),
            onPressedAmerican: () => speakdifferences9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I'll lend you £500 and you'll have to find the difference (= the rest of the money that you need).",
            kurdishText:
                "٥٠٠ پاوەندت پێدەدەم و پێویست دەبێت ئەوی دیکە بدۆزیتەوە (لای کەسێکی دیکە).",
            onPressedBritish: () => speakdifferences10("en-GB"),
            onPressedAmerican: () => speakdifferences10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He didn't have enough money, but his aunt agreed to make up the difference.",
            kurdishText:
                "پارەی پێویستی نەبوو، بەڵام پووری ڕازی بوو ئەوی دیکە بدات.",
            onPressedBritish: () => speakdifferences11("en-GB"),
            onPressedAmerican: () => speakdifferences11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The difference in price is not very significant.",
            kurdishText: "جیاوازیی نرخەکە زۆر گەورە نییە.",
            onPressedBritish: () => speakdifferences12("en-GB"),
            onPressedAmerican: () => speakdifferences12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) ناکۆکی نێوان خەڵکی"),
          SentencesRow(
            englishText: "We have our differences, but she's still my sister.",
            kurdishText: "ناکۆکی خۆمان ھەیە، بەڵام ھێشتا خوشکمە.",
            onPressedBritish: () => speakdifferences13("en-GB"),
            onPressedAmerican: () => speakdifferences13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Why don't you settle your differences and be friends again?",
            kurdishText:
                "بۆچی ناکۆکییەکانتان چارە ناکەن و دووبارە ببنەوە بە ھاوڕێ؟",
            onPressedBritish: () => speakdifferences14("en-GB"),
            onPressedAmerican: () => speakdifferences14("en-US"),
          ),
          // differences15differences15
          // differences16differences16
          // differences17differences17
          // differences18differences18
          // differences19differences19
          // differences_20differences20
          // differences21differences21
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
- Noun: difference (derived forms: differences)
1. The quality of being unlike or dissimilar
"there are many differences between jazz and rock"
 
2. A variation that deviates from the standard or norm (= deviation, divergence, departure)
"the difference from the mean";
 
3. A disagreement or argument about something important (= dispute, difference of opinion, conflict)
"there were irreconcilable differences"; "he had a difference of opinion with his wife";
 
4. A significant change
"the difference in her is amazing"; "his support made a real difference"
 
5. The number that remains after subtraction; the number that when added to the subtrahend gives the minuend (= remainder)

- Verb: difference (derived forms: differencing, differences, differenced)
1. Distinguish, differentiate or subtract; find changes between
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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 919;

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

  final String _videoId = 'F5T2-u5WJH8';
  final double _startSeconds = 69;

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

  final String _videoId = 'eMgFyMUFELA';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '_gk72KC4jWc';
  final double _startSeconds = 217;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 469;

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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 35;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 372;

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