import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryculture extends StatefulWidget {
  const EnglishEntryculture({super.key});

  @override
  State<EnglishEntryculture> createState() => _EnglishEntrycultureState();
}

class _EnglishEntrycultureState extends State<EnglishEntryculture> {
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
    return const EntryTitle(word: "culture");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: culture");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkʌltʃə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakculture(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("culture");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakculture("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkʌltʃər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakculture(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("culture");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakculture("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcultures1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Cooking is a hugely important part of French culture.");
  }

  Future<void> speakcultures2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is no longer in touch with youth culture.");
  }

  Future<void> speakcultures3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The film examines the culture clash between the generations.");
  }

  Future<void> speakcultures4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("These ideas have always been central to Western culture.");
  }

  Future<void> speakcultures5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The Romans gradually assimilated the culture of the people they had conquered.");
  }

  Future<void> speakcultures6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The children are taught to respect different cultures.");
  }

  Future<void> speakcultures7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In some cultures children have an important place.");
  }

  Future<void> speakcultures8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Venice is a beautiful city, full of culture and history.");
  }

  Future<void> speakcultures9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The political cultures of the United States and Europe are very different.");
  }

  Future<void> speakcultures10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You can't change the culture of an organization overnight.");
  }

  Future<void> speakcultures11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She believes the media have created a culture of fear.");
  }

  Future<void> speakcultures12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The company promotes a culture of innovation.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: چاند، فەرھەنگ، کولتوور، ڕۆشنبیری، ڕووناکبیری، ھونەر و ئەدەبیات پێکەوە،	ڕاھێنان، بارھێنان، پەروەردە(کردن)، بەخێوکردن، پەروەراندن
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) نەریت و باوەڕ، ھونەر، شێوازی ژیان و شێوازی ڕێکخستنی کۆمەڵایەتی وڵاتێک یان گرووپێکی دیاریکراو"),
          SentencesRow(
            englishText:
                "Cooking is a hugely important part of French culture.",
            kurdishText: "خواردن لێنان بەشێکی زۆر گرنگی کەلتووری فەرەنسایە.",
            onPressedBritish: () => speakcultures1("en-GB"),
            onPressedAmerican: () => speakcultures1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He is no longer in touch with youth culture.",
            kurdishText: "چیتر لە پەیوەندیدا نییە لەگەڵ کەلتووری گەنجاندا.",
            onPressedBritish: () => speakcultures2("en-GB"),
            onPressedAmerican: () => speakcultures2("en-US"),
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
                                    "The film examines the culture clash between the generations."),
                            ExampleSentenceKurdish(
                                text:
                                    "فیلمەکە لێکۆڵینەوە دەکات لە بەرکەوتنی کەلتووری نێوان نەوەکاندا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures3("en-US"),
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
                                    "These ideas have always been central to Western culture."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەم بیرۆکانە ھەمیشە سەرەکی بوونە لە چاندی ڕۆژئاوادا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures4("en-US"),
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
                                    "The Romans gradually assimilated the culture of the people they had conquered."),
                            ExampleSentenceKurdish(
                                text:
                                    "ڕۆمەکان کەم کەم تێکەڵی کەلتووری ئەو خەڵکانە بوون کە داگیریان کردن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures5("en-US"),
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
          const DefinitionKurdish(
              text: "٢. (ناو) وڵاتێک، گرووپێک، ھتد کە باوەڕ، ھتد ـی خۆی ھەیە"),
          SentencesRow(
            englishText:
                "The children are taught to respect different cultures.",
            kurdishText: "منداڵان فێردەکرێن کە ڕێزی کەلتوورە جیاوازەکان بگرن.",
            onPressedBritish: () => speakcultures6("en-GB"),
            onPressedAmerican: () => speakcultures6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In some cultures children have an important place.",
            kurdishText: "لە ھەندێک کەلتووردا منداڵان پێگەی تایبەتیان ھەیە.",
            onPressedBritish: () => speakcultures7("en-GB"),
            onPressedAmerican: () => speakcultures7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ھونەر، میوزیک، ئەدەب، ھتد پێکەوە"),
          SentencesRow(
            englishText:
                "Venice is a beautiful city, full of culture and history.",
            kurdishText: "ڤێنیس شارێکی جوانە، پڕ لە چاند و مێژووە.",
            onPressedBritish: () => speakcultures8("en-GB"),
            onPressedAmerican: () => speakcultures8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) باوەڕ و بۆچوون سەبارەت بە شتێک کە کەسانی گرووپێک یان دامەزراوەیەکی دیاریکراو باوەڕیان پێیەتی"),
          SentencesRow(
            englishText:
                "The political cultures of the United States and Europe are very different.",
            kurdishText: "ڕەوشی سیاسی ئەمریکا و ئەورووپا زۆر جیاوازن.",
            onPressedBritish: () => speakcultures9("en-GB"),
            onPressedAmerican: () => speakcultures9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You can't change the culture of an organization overnight.",
            kurdishText:
                "ناتوانیت کەلتووری دامەزراوەیەک لە شەو و ڕۆژێکدا بگۆڕیت.",
            onPressedBritish: () => speakcultures10("en-GB"),
            onPressedAmerican: () => speakcultures10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She believes the media have created a culture of fear.",
            kurdishText: "باوەڕی وایە میدیا کەلتوورێک لە ترسی درووست کردووە.",
            onPressedBritish: () => speakcultures11("en-GB"),
            onPressedAmerican: () => speakcultures11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The company promotes a culture of innovation.",
            kurdishText: "کۆمپانیاکە فەرھەنگی نوێگەری بڵاودەکاتەوە.",
            onPressedBritish: () => speakcultures12("en-GB"),
            onPressedAmerican: () => speakcultures12("en-US"),
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
- Noun: culture (derived forms: cultures)
1. (archeology) a particular society at a particular time and place (= civilization, civilisation [Brit])
"early Mayan culture";
 
2. The tastes in art and manners that are favoured by a social group
 
3. All the knowledge and values shared by a society (= acculturation)
 
4. (biology) the growing of microorganisms in a nutrient medium (such as gelatin or agar)
"the culture of cells in a Petri dish"
 
5. A highly developed state of perfection; having a flawless or impeccable quality (= polish, refinement, cultivation, finish, finesse)
"they performed with great culture";
 
6. The attitudes and behaviour that are characteristic of a particular social group or organization
"the developing drug culture"; "the reason that the agency is doomed to inaction has something to do with the FBI culture"
 
7. The raising of plants or animals
"the culture of oysters"

- Verb: culture (derived forms: cultured, cultures, culturing)
1. Grow in a special preparation
"optimal conditions for culturing stem cell lines"
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

  final String _videoId = '4VSx2E7WE50';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 179;

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
  final double _startSeconds = 237;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 50;

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

  final String _videoId = 'xXvgT-AgLAo';
  final double _startSeconds = 155;

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

  final String _videoId = 'D2ZvUJrMZio';
  final double _startSeconds = 712;

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

  final String _videoId = 'Fr-qagv7ig0';
  final double _startSeconds = 897;

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