import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydecide extends StatefulWidget {
  const EnglishEntrydecide({super.key});

  @override
  State<EnglishEntrydecide> createState() => _EnglishEntrydecideState();
}

class _EnglishEntrydecideState extends State<EnglishEntrydecide> {
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
    return const EntryTitle(word: "decide");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: decide");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈsaɪd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecide(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("decide");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdecide("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈsaɪd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecide(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("decide");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdecide("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecides1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's up to you to decide.");
  }

  Future<void> speakdecides2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You will have to decide soon.");
  }

  Future<void> speakdecides3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I can't tell you what to do—you'll have to decide for yourself.");
  }

  Future<void> speakdecides4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've decided not to go away after all.");
  }

  Future<void> speakdecides5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Why did you decide to look for a new job?");
  }

  Future<void> speakdecides6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She gave up politics and decided instead to focus on charity work.");
  }

  Future<void> speakdecides7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The government has already decided that the law needs to be changed.");
  }

  Future<void> speakdecides8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She decided that she wanted to live in France.");
  }

  Future<void> speakdecides9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You have the right to decide what you want to do.");
  }

  Future<void> speakdecides10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I can't decide what to wear.");
  }

  Future<void> speakdecides11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She couldn’t decide whether he was telling the truth or not.");
  }

  Future<void> speakdecides12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was difficult to decide between the two candidates.");
  }

  Future<void> speakdecides13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They decided against taking legal action.");
  }

  Future<void> speakdecides14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Appeal Court decided in their favour.");
  }

  Future<void> speakdecides15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It is always possible that the judge may decide against you.");
  }

  Future<void> speakdecides16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A mixture of skill and good luck decided the outcome of the game.");
  }

  Future<void> speakdecides17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("For most customers, price is the deciding factor.");
  }

  Future<void> speakdecides18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They offered me free accommodation for a year, and that decided me.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
//           const KurdishVocabulary(text: """
// کوردی: بڕیارگرتن، بڕیاردان، بەتەما بوون
// """),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بەوریایی بیرکردنەوە سەبارەت بە ھەموو ئەو ھەڵبژاردانەی بەردەستن و ھەڵبژاردنی یەکێکیان"),
          SentencesRow(
            englishText: "It's up to you to decide.",
            kurdishText: "بەدەست تۆیە بڕیار بدەیت.",
            onPressedBritish: () => speakdecides1("en-GB"),
            onPressedAmerican: () => speakdecides1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You will have to decide soon.",
            kurdishText: "دەبێت بەزوویی بڕیار بدەیت.",
            onPressedBritish: () => speakdecides2("en-GB"),
            onPressedAmerican: () => speakdecides2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "I can't tell you what to do—you'll have to decide for yourself.",
                    kurdishText:
                        "ناتوانم پێت بڵێم چی بکەیت ـ خۆت دەبێت بڕیار بدەیت.",
                    onPressedBritish: () => speakdecides3("en-GB"),
                    onPressedAmerican: () => speakdecides3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We've decided not to go away after all.",
                    kurdishText: "لە کۆتاییدا بڕیارمان داوە دوور نەکەوینەوە.",
                    onPressedBritish: () => speakdecides4("en-GB"),
                    onPressedAmerican: () => speakdecides4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Why did you decide to look for a new job?",
                    kurdishText: "بۆچی بڕیارت دا بۆ کارێکی تازە بگەڕێیت؟",
                    onPressedBritish: () => speakdecides5("en-GB"),
                    onPressedAmerican: () => speakdecides5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She gave up politics and decided instead to focus on charity work.",
                    kurdishText:
                        "وازی لە سیاسەت ھێنا و بڕیاری دا لە جیاتیدا سەرنج بخاتە سەر کاری خێرخوازی.",
                    onPressedBritish: () => speakdecides6("en-GB"),
                    onPressedAmerican: () => speakdecides6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The government has already decided that the law needs to be changed.",
                    kurdishText:
                        "حکومەت پێشوەختە بڕیاری داوە کە یاساکە پێویستە بگۆڕدرێت.",
                    onPressedBritish: () => speakdecides7("en-GB"),
                    onPressedAmerican: () => speakdecides7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She decided that she wanted to live in France.",
                    kurdishText: "بڕیاری دا کە دەیەوێت لە پاریس بژی.",
                    onPressedBritish: () => speakdecides8("en-GB"),
                    onPressedAmerican: () => speakdecides8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "You have the right to decide what you want to do.",
                    kurdishText:
                        "مافی ئەوەت ھەیە بڕیارت بدەیت چیت دەوێت بیکەیت.",
                    onPressedBritish: () => speakdecides9("en-GB"),
                    onPressedAmerican: () => speakdecides9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "I can't decide what to wear.",
                    kurdishText: "ناتوانم بڕیار بدەم چی لەبەر بکەم.",
                    onPressedBritish: () => speakdecides10("en-GB"),
                    onPressedAmerican: () => speakdecides10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She couldn’t decide whether he was telling the truth or not.",
                    kurdishText:
                        "نەیدەتوانی بڕیار بدات کە ئایا ڕاستییەکە دەڵێت یان نا.",
                    onPressedBritish: () => speakdecides11("en-GB"),
                    onPressedAmerican: () => speakdecides11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "It was difficult to decide between the two candidates.",
                    kurdishText: "قورسە لەنێوان دوو بەربژێرەکەدا بڕیار بدەم.",
                    onPressedBritish: () => speakdecides12("en-GB"),
                    onPressedAmerican: () => speakdecides12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "They decided against taking legal action.",
                    kurdishText: "بڕیار دژ بە ڕێوشوێنی یاسایی دا.",
                    onPressedBritish: () => speakdecides13("en-GB"),
                    onPressedAmerican: () => speakdecides13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) دەرکردنی بڕیارێکی فەرمی  یان یاسایی"),
          SentencesRow(
            englishText: "The Appeal Court decided in their favour.",
            kurdishText: "دادگای تێھەڵچوونەوە لە بەرژەوەندییان بڕیاری دا.",
            onPressedBritish: () => speakdecides14("en-GB"),
            onPressedAmerican: () => speakdecides14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It is always possible that the judge may decide against you.",
            kurdishText: "ھەمیشە ڕێی تێ دەچێت دادوەرەکە دژ بە تۆ بڕیار بدات.",
            onPressedBritish: () => speakdecides15("en-GB"),
            onPressedAmerican: () => speakdecides15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) دانانی کاریگەری لەسەر ئەنجامی شتێک"),
          SentencesRow(
            englishText:
                "A mixture of skill and good luck decided the outcome of the game.",
            kurdishText:
                "تێکەڵەیەک لە شارەزایی و بەخت بڕیاری لە ئەنجامی یارییەکە دا.",
            onPressedBritish: () => speakdecides16("en-GB"),
            onPressedAmerican: () => speakdecides16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A number of factors decide whether a movie will be successful or not.",
            kurdishText:
                "چەند فاکتەرێک بڕیار دەدەن کە ئایا فیلمێک سەرکەوتوو دەبێت یان نا.",
            onPressedBritish: () => speakdecides1("en-GB"),
            onPressedAmerican: () => speakdecides1("en-US"),
          ),

          const DefinitionKurdish(
              text: "٤. (کردار) بوون بە ھۆکاری ئەوەی کەسێک شتێک بکات"),
          SentencesRow(
            englishText: "For most customers, price is the deciding factor.",
            kurdishText: "بۆ من، نرخ فاکتەری بڕیاردەرە.",
            onPressedBritish: () => speakdecides17("en-GB"),
            onPressedAmerican: () => speakdecides17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They offered me free accommodation for a year, and that decided me.",
            kurdishText:
                "جێگای مانەوەی بێ‌بەرامبەری یەک ساڵیان پێدام، و ئەوە یەکلامی کردەوە.",
            onPressedBritish: () => speakdecides18("en-GB"),
            onPressedAmerican: () => speakdecides18("en-US"),
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
- Verb: decide (derived forms: deciding, decides, decided)
1. Reach, make, or come to a decision about something (= make up one's mind, determine)
"We finally decided after lengthy deliberations";
 
2. Bring to an end; come to a final conclusion (= settle, resolve, adjudicate)
"The case was decided"; "The judge decided the case in favour of the plaintiff";
 
3. Cause to decide
"This new development finally decided me!"
 
4. Influence or determine
"The vote in New Hampshire often decides the outcome of the Presidential election"
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

  final String _videoId = 'fXLrw7XozC8';
  final double _startSeconds = 242;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 1327;

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

  final String _videoId = 'fg8Cpl5PIRE';
  final double _startSeconds = 24;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 445;

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

  final String _videoId = '0zwNZJbM-Gw';
  final double _startSeconds = 18;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 939;

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

  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 539;

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