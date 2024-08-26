import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycure extends StatefulWidget {
  const EnglishEntrycure({super.key});

  @override
  State<EnglishEntrycure> createState() => _EnglishEntrycureState();
}

class _EnglishEntrycureState extends State<EnglishEntrycure> {
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
    return const EntryTitle(word: "cure");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cure");
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
    return const IPAofEnglish(text: "IpaUK: /kjʊə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcure(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cure");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcure("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kjʊr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcure(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cure");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcure("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcures1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Will you be able to cure him, Doctor?");
  }

  Future<void> speakcures2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The doctor managed to cure her of her illness.");
  }

  Future<void> speakcures3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was now completely cured of his illness.");
  }

  Future<void> speakcures4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She still believed that somehow she could be miraculously cured.");
  }

  Future<void> speakcures5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They will try to cure her of her alcoholism.");
  }

  Future<void> speakcures6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It is better to prevent rather than cure diseases.");
  }

  Future<void> speakcures7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Finding it early is the key to curing most cancers.");
  }

  Future<void> speakcures8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The disease can be cured with antibiotics.");
  }

  Future<void> speakcures9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I finally managed to cure the rattling noise in my car.");
  }

  Future<void> speakcures10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Charities alone can't cure basic social injustices.");
  }

  Future<void> speakcures11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Most of the team's faults could be cured with good coaching.");
  }

  Future<void> speakcures12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Researchers are working to find a cure for the disease.");
  }

  Future<void> speakcures13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There is no miracle cure for this condition.");
  }

  Future<void> speakcures14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The only real cure is rest.");
  }

  Future<void> speakcures15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Doctors cannot effect a cure if the disease has spread too far.");
  }

  Future<void> speakcures16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The cure took six weeks.");
  }

  Future<void> speakcures17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Science cannot provide a cure for all the world's problems.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: چارەسەری، چارەکردن، دەرمان(کردن)، تیمار، چار، چاک‌بوونەوە،	چارە، ڕێ‌چارە،	دەرمان، دەوا
"""),
          const DefinitionKurdish(
              text: "١. (کردار) چارەسەرکردنی کەسێک لە نەخۆشی"),
          SentencesRow(
            englishText: "Will you be able to cure him, Doctor?",
            kurdishText: "دەتوانیت چارەسەری بکەیت، پزیشک؟",
            onPressedBritish: () => speakcures1("en-GB"),
            onPressedAmerican: () => speakcures1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The doctor managed to cure her of her illness.",
            kurdishText: "پزیشکەکە توانی نەخۆشییەکەی چارەسەر بکات؟",
            onPressedBritish: () => speakcures2("en-GB"),
            onPressedAmerican: () => speakcures2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He was now completely cured of his illness."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئێستا بە تەواوی لە نەخۆشییەکە چارەسەر کرابوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "She still believed that somehow she could be miraculously cured."),
                            ExampleSentenceKurdish(
                                text:
                                    "ھێشتا باوەڕی وابوو کە دەکرا مۆجیزەئاسا چارەسەر بکرابایە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "They will try to cure her of her alcoholism."),
                            ExampleSentenceKurdish(
                                text:
                                    "ھەوڵ دەدات لە ئاڵوودەییەکەی چارەسەری بکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcures5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcures5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) نەھێشتنی نەخۆشییەک"),
          SentencesRow(
            englishText: "It is better to prevent rather than cure diseases.",
            kurdishText: "واباشە ڕێگری بکرێت وەک لە چارەسەرکردنی نەخۆشی.",
            onPressedBritish: () => speakcures6("en-GB"),
            onPressedAmerican: () => speakcures6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Finding it early is the key to curing most cancers.",
            kurdishText:
                "دۆزینەوەی بەزوویی خاڵی سەرەکییە لە چارەسەرکردنی زۆرینەی جۆرەکانی شێرپەنجە.",
            onPressedBritish: () => speakcures7("en-GB"),
            onPressedAmerican: () => speakcures7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The disease can be cured with antibiotics.",
            kurdishText: "نەخۆشییەکە دەکرێت بە دژە بەکتریا چارەسەر بکرێت.",
            onPressedBritish: () => speakcures8("en-GB"),
            onPressedAmerican: () => speakcures8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) مامەڵەکردن لەگەڵ کێشەیەک بە سەرکەوتووانە"),
          SentencesRow(
            englishText:
                "I finally managed to cure the rattling noise in my car.",
            kurdishText:
                "لە کۆتاییدا توانیم دەنگی تەقەتەقەکە لە ئۆتۆمبێلەکەمدا چارەسەر بکەم.",
            onPressedBritish: () => speakcures9("en-GB"),
            onPressedAmerican: () => speakcures9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Charities alone can't cure basic social injustices.",
            kurdishText:
                "ڕێکخراوە خێرخوازییەکان بە تەنھا ناتوانن چارەسەری نادادییە سەرەتاییە کۆمەڵایەتییەکان بکەن.",
            onPressedBritish: () => speakcures10("en-GB"),
            onPressedAmerican: () => speakcures10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Most of the team's faults could be cured with good coaching.",
            kurdishText:
                "زۆرینەی ھەڵەکانی تیمەکە دەکرێت بە ڕاھێنانی باش چارەسەر بکرێت.",
            onPressedBritish: () => speakcures11("en-GB"),
            onPressedAmerican: () => speakcures11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) دەرمانێک یان چارەسەرێک بۆ نەخۆشییەک"),
          SentencesRow(
            englishText:
                "Researchers are working to find a cure for the disease.",
            kurdishText:
                "توێژەران کاردەکەن بۆ دۆزینەوەی چارەسەرێک بۆ نەخۆشییەکە.",
            onPressedBritish: () => speakcures12("en-GB"),
            onPressedAmerican: () => speakcures12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There is no miracle cure for this condition.",
            kurdishText: "ھیچ چارەسەرێکی مۆجیزەئاسا بۆ ئەم دۆخە نییە.",
            onPressedBritish: () => speakcures13("en-GB"),
            onPressedAmerican: () => speakcures13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The only real cure is rest.",
            kurdishText: "تەنھا چارەسەر پشوودانە.",
            onPressedBritish: () => speakcures14("en-GB"),
            onPressedAmerican: () => speakcures14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) کاری چارەسەرکردنی کەسێک لە نەخۆشییەک"),
          SentencesRow(
            englishText:
                "Doctors cannot effect a cure if the disease has spread too far.",
            kurdishText:
                "پزیشکان ناتوانن چارەسەرێک ئەنجام بدەن ئەگەر نەخۆشییەکە زۆر بڵاوبووبێتەوە.",
            onPressedBritish: () => speakcures15("en-GB"),
            onPressedAmerican: () => speakcures15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The cure took six weeks.",
            kurdishText: "چارەسەرەکە شەش ھەفتەی ویست.",
            onPressedBritish: () => speakcures16("en-GB"),
            onPressedAmerican: () => speakcures16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) شتێک کە کێشەیەک چارەسەر دەکات، دۆخێکی خراپ باش دەکات، ھتد"),
          SentencesRow(
            englishText:
                "Science cannot provide a cure for all the world's problems.",
            kurdishText:
                "زانست ناتوانێت چارەسەر بۆ ھەموو کێشەکانی جیھان بدات بەدەستەوە.",
            onPressedBritish: () => speakcures17("en-GB"),
            onPressedAmerican: () => speakcures17("en-US"),
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
- Verb: cure (derived forms: curing, cured, cures)
1. (medicine) provide a cure for, make healthy again (= bring around, heal)
"The treatment cured the boy's acne";
 
2. Prepare by drying, salting, or chemical processing in order to preserve
"cure meats"; "cure pickles"; "cure hay"
 
3. Make (substances) hard and improve their usability
"cure resin"; "cure cement"; "cure soap"
 
4. Be or become preserved
"the apricots cure in the sun"

- Noun: cure (derived forms: cures)
1. A medicine or therapy that cures disease or relieves pain (= remedy, curative, therapeutic)
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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 1173;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 506;

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

  final String _videoId = 'qsYUDM15T8U';
  final double _startSeconds = 249;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 1771;

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

  final String _videoId = 'mcZdTvOqmvI';
  final double _startSeconds = 882;

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

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 423;

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

  final String _videoId = 'l2l5sBLhUCY';
  final double _startSeconds = 16;

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