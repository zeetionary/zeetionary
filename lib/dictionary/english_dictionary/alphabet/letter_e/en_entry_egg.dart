import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryegg extends StatefulWidget {
  const EnglishEntryegg({super.key});

  @override
  State<EnglishEntryegg> createState() => _EnglishEntryeggState();
}

class _EnglishEntryeggState extends State<EnglishEntryegg> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "egg";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "egg");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: egg");
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
    return const IPAofEnglish(text: "IpaUK: /eɡ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakegg(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("egg");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakegg("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /eɡ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakegg(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("egg");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakegg("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeggs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The female sits on the eggs until they hatch.");
  }

  Future<void> speakeggs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fish lay thousands of eggs at one time.");
  }

  Future<void> speakeggs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many reptiles bury their eggs.");
  }

  Future<void> speakeggs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The males stay and guard the eggs.");
  }

  Future<void> speakeggs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You've got some egg on your shirt.");
  }

  Future<void> speakeggs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Crack two eggs into the mixture.");
  }

  Future<void> speakeggs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Separate the eggs, putting the whites to one side.");
  }

  Future<void> speakeggs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How do you like your eggs - fried or boiled?");
  }

  Future<void> speakeggs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Mix the butter with the sugar and then add the egg.");
  }

  Future<void> speakeggs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Crack three eggs into a bowl and mix them together.");
  }

  Future<void> speakeggs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The male sperm fertilizes the female egg.");
  }

  Future<void> speakeggs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Many women conceive through the use of a donor egg.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: (زیندەناسی) ھێلکە، گەرا، زەبەقوون، خا، ھێک،	(زیندەناسی) ھێلکۆکە، خانەی زاوزێی مێیینەی گیانەوەران و ڕووەکەکان
"""),
          const DefinitionKurdish(
              text: """١. (ناو) ھێلکەیەک کە بێچووی تێدایە"""),
          SentencesRow(
            englishText: """The female sits on the eggs until they hatch.""",
            kurdishText: """مێینەکە لەسەر ھێلکەکان کڕدەکەوێت تاوەکو ھەڵدێن.""",
            onPressedBritish: () => speakeggs1("en-GB"),
            onPressedAmerican: () => speakeggs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The fish lay thousands of eggs at one time.""",
            kurdishText: """ماسییەکان ھەزاران ھێلکە لە یەک کاتدا دەنێنەوە.""",
            onPressedBritish: () => speakeggs2("en-GB"),
            onPressedAmerican: () => speakeggs2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Many reptiles bury their eggs.""",
            kurdishText: """زۆر خشۆک ھێلکەکانیان دەنێژن.""",
            onPressedBritish: () => speakeggs3("en-GB"),
            onPressedAmerican: () => speakeggs3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The males stay and guard the eggs.""",
            kurdishText: """نێرەکان دەمێننەوە ھێلکەکان دەپارێزن.""",
            onPressedBritish: () => speakeggs4("en-GB"),
            onPressedAmerican: () => speakeggs4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) ھێلکەیەک کە دەخوردرێت"""),
          SentencesRow(
            englishText: """You've got some egg on your shirt.""",
            kurdishText: """ھەندێک ھێلکە بە جلەکەتەوەیە.""",
            onPressedBritish: () => speakeggs5("en-GB"),
            onPressedAmerican: () => speakeggs5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Crack two eggs into the mixture.""",
            kurdishText: """دوو ھێلکە بشکێنە ناو تێکەڵەکە.""",
            onPressedBritish: () => speakeggs6("en-GB"),
            onPressedAmerican: () => speakeggs6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Separate the eggs, putting the whites to one side.""",
            kurdishText: """ھێلکەکان جیابکەرەوە و سپێنەکان بخە لایەکەوە.""",
            onPressedBritish: () => speakeggs7("en-GB"),
            onPressedAmerican: () => speakeggs7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """How do you like your eggs - fried or boiled?""",
            kurdishText: """حەز دەکەیت ھێلکەکانت چۆن بن ـ برژاو یان کوڵاو؟""",
            onPressedBritish: () => speakeggs8("en-GB"),
            onPressedAmerican: () => speakeggs8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Mix the butter with the sugar and then add the egg.""",
            kurdishText:
                """کەرەکە لەگەڵ شەکر تێکەڵ بکە و دواتر ھێلکەکە زیاد بکە.""",
            onPressedBritish: () => speakeggs9("en-GB"),
            onPressedAmerican: () => speakeggs9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Crack three eggs into a bowl and mix them together.""",
            kurdishText: """سێ ھێلکە بشکێنە ناو جامێک و تێکەڵیان بکە.""",
            onPressedBritish: () => speakeggs10("en-GB"),
            onPressedAmerican: () => speakeggs10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) خانەیەک کە لەگەڵ سپێرم یەک دەگرێت و منداڵێک یان بیچووی ئاژەڵێک درووست دەکات"""),
          SentencesRow(
            englishText: """The male sperm fertilizes the female egg.""",
            kurdishText: """سپێرمی نێرینەکە ھێلکەی مێینەکە دەپیتێنێت.""",
            onPressedBritish: () => speakeggs11("en-GB"),
            onPressedAmerican: () => speakeggs11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Many women conceive through the use of a donor egg.""",
            kurdishText: """زۆر ژن منداڵیان دەبێت بە ھێلکەی بەخشراو.""",
            onPressedBritish: () => speakeggs12("en-GB"),
            onPressedAmerican: () => speakeggs12("en-US"),
          ),
          // eggs2200eggseggs
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: egg (derived forms: eggs)
1. Animal reproductive body consisting of an ovum or embryo together with nutritive and protective envelopes; especially the thin-shelled reproductive body laid by e.g. female birds
 
2. Oval reproductive body of a fowl (especially a hen) used as food (= eggs)

- Verb: egg (derived forms: eggs, egged, egging)
1. Throw eggs at
 
2. (cooking) coat with beaten egg
"egg a schnitzel"
 
3. Urge on; cause to act (= prod, incite, egg on)
"The other children egged the boy on, but he did not want to throw the stone through the window";
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

  final String _videoId = 'E7ZD6lorJkg';
  final double _startSeconds = 39;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 293;

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

  final String _videoId = 'IjWmtaqqG0I';
  final double _startSeconds = 37;

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

  final String _videoId = 'uaO3otiN0-U';
  final double _startSeconds = 162;

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

  final String _videoId = 'NDpAHCMZ6HA';
  final double _startSeconds = 0;

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

  final String _videoId = 'xreA0vkHMBY';
  final double _startSeconds = 2331;

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

  final String _videoId = 'bHMmniN2ovM';
  final double _startSeconds = 72;

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