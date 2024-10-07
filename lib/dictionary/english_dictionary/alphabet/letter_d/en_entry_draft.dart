import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydraft extends StatefulWidget {
  const EnglishEntrydraft({super.key});

  @override
  State<EnglishEntrydraft> createState() => _EnglishEntrydraftState();
}

class _EnglishEntrydraftState extends State<EnglishEntrydraft> {
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
  final String keyword = "draft";
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
    return const EntryTitle(word: "draft");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: draft");
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
    return const IPAofEnglish(text: "IpaUK: /drɑːft/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraft(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("draft");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdraft("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dræft/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraft(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("draft");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdraft("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrafts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is only the first draft of my speech.");
  }

  Future<void> speakdrafts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've made a rough draft of the letter.");
  }

  Future<void> speakdrafts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The final published version differs from earlier drafts in many key details.");
  }

  Future<void> speakdrafts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Payment must be made by bank draft drawn on a UK bank.");
  }

  Future<void> speakdrafts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He avoided the draft because of a foot injury.");
  }

  Future<void> speakdrafts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll draft a letter for you.");
  }

  Future<void> speakdrafts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The military began drafting a new constitution.");
  }

  Future<void> speakdrafts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Extra police are being drafted in to control the crowds.");
  }

  Future<void> speakdrafts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were drafted into the army.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بەرنووس، ڕەش‌نووس،	پلان، گەڵاڵە، نەخشە،	حەواڵە، درافت،	سەربازگیری،	دەستەی ھەڵبژاردە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) نووسراوێک کە ھێشتا ئامادەی بڵاوکردنەوە نییە نییە و دەستکاری دیکەی دەوێت"),
          SentencesRow(
            englishText: "This is only the first draft of my speech.",
            kurdishText: "ئەمە تەنھا یەکەم بەرنووسی وتارەکەمە.",
            onPressedBritish: () => speakdrafts1("en-GB"),
            onPressedAmerican: () => speakdrafts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I've made a rough draft of the letter.",
            kurdishText: "بەرنووسێکی سەرەتایی نامەکەم ئامادەکردووە.",
            onPressedBritish: () => speakdrafts2("en-GB"),
            onPressedAmerican: () => speakdrafts2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The final published version differs from earlier drafts in many key details.",
            kurdishText:
                "کۆتا ڕەشنووسی بڵاوکراوە لە بەرنووسەکانی سەرەتاوە لە زۆر وردەکاریی گرنگەوە.",
            onPressedBritish: () => speakdrafts3("en-GB"),
            onPressedAmerican: () => speakdrafts3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) داوایەکی نووسراو بۆ بانکێک کە پارە بە کەسیک بدات"),
          SentencesRow(
            englishText:
                "Payment must be made by bank draft drawn on a UK bank.",
            kurdishText:
                "پارەدان دەبێت ئەنجام بدرێت بە نووسراوی بانکی کە لە بانکێکی بەریتانیا ڕاکێشرابێت.",
            onPressedBritish: () => speakdrafts4("en-GB"),
            onPressedAmerican: () => speakdrafts4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) فەرمانکردن بە خەڵکی کە پەیوەندی بە سوپاوە بکەن"),
          // const DividerSentences(),
          const AlsoEnglishckb(
              word:
                  "تێبینی: لە ئینگلیزی بەریتانی زۆرجار دەگوترێت conscription"),
          SentencesRow(
            englishText: "He avoided the draft because of a foot injury.",
            kurdishText:
                "لە سەربازیی زۆرەملێ دوورکەوتەوە بەھۆی پێکانێک لە پێیدا.",
            onPressedBritish: () => speakdrafts5("en-GB"),
            onPressedAmerican: () => speakdrafts5("en-US"),
          ),
          const DividerDefinition(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefinitionKurdishLink(
                text: "٤. بڕوانە لە draught",
                links: [
                  LinkInfo(
                    start: 12,
                    end: 20,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
                onTap: () {
                  Routemaster.of(context).push("/english-draft/draught");
                },
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) نووسینی یەکەم بەرنووسی شتێک"),
          SentencesRow(
            englishText: "I'll draft a letter for you.",
            kurdishText: "یەکەم بەرنووسی نامەیەکت بۆ دەنووسم.",
            onPressedBritish: () => speakdrafts6("en-GB"),
            onPressedAmerican: () => speakdrafts6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The military began drafting a new constitution.",
            kurdishText:
                "سوپا دەستی کرد بە نووسینی یەکەم بەرنووسی دەستوورێکی تازە.",
            onPressedBritish: () => speakdrafts7("en-GB"),
            onPressedAmerican: () => speakdrafts7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) ھەڵبژاردنی خەڵکی ناردنیان بۆ ئەرکێکی تایبەت"),
          SentencesRow(
            englishText:
                "Extra police are being drafted in to control the crowds.",
            kurdishText: "پۆلیسی زیادە دەنێردرێن بۆ کۆنترۆڵکردنی جەماوەرەکە.",
            onPressedBritish: () => speakdrafts8("en-GB"),
            onPressedAmerican: () => speakdrafts8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) فەرمانکردن بە خەڵکی بۆ چوون بۆ خزمەتی سەربازی"),
          SentencesRow(
            englishText: "They were drafted into the army.",
            kurdishText: "پەلکێشی سوپا کران.",
            onPressedBritish: () => speakdrafts9("en-GB"),
            onPressedAmerican: () => speakdrafts9("en-US"),
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
- Verb: draft (derived forms: drafts, drafting, drafted)
1. Draw up an outline or sketch for something (= outline)
"draft a speech";
 
2. Engage somebody to enter the army (= enlist, muster in)
 
3. [N. Amer] Make a blueprint of (= blueprint, draught [Brit, Cdn])

- Noun: draft (derived forms: drafts)
1. A document ordering the payment of money; drawn by one person or bank on another (= bill of exchange, order of payment)
 
2. [N. Amer] A current of air (usually coming into a chimney, room or vehicle) (= draught [Brit, Cdn])

3. A preliminary sketch of a design or picture (= rough drawing)

4. [N. Amer] A serving of drink (usually alcoholic) drawn from a keg (= draught [Brit, Cdn], potation [archaic], tipple)
"they served beer on draft";
 
5. Any of the various versions in the development of a written work (= draft copy)
"the final draft of the constitution"; "a preliminary draft";
 
6. [N. Amer] The depth of a vessel's keel below the surface (especially when loaded) (= draught [Brit, Cdn])
 
7. A regulator for controlling the flow of air in a fireplace
 
8. [N. Amer] A dose of liquid medicine (= draught [Brit, Cdn])
"he took a sleeping draft";
 
9. (military) compulsory military service (= conscription, muster, selective service)
 
10. [N. Amer] A large and hurried swallow (= gulp, draught [Brit, Cdn], swig)
"he finished it at a single draft";
 
11. [N. Amer] The act of moving a load by drawing or pulling (= draught [Brit, Cdn], drawing)
 
12. [US] A large mouthful of drink (= slug, gulp, draught [Brit])

- Adjective: draft 
Usage: N. Amer
1. (of drinks) served on tap from a barrel, rather than bottled (= draught [Brit])
"draft beer";
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

  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 994;

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

  final String _videoId = '0zXfDafyyao';
  final double _startSeconds = 614;

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

  final String _videoId = 'Ihoys69G56U';
  final double _startSeconds = 467;

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

  final String _videoId = 'S4qvPouh1gE';
  final double _startSeconds = 3348;

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

  final String _videoId = 'XBPV9putsfc';
  final double _startSeconds = 504;

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

  final String _videoId = '54z8jWNM0bE';
  final double _startSeconds = 82;

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

  final String _videoId = '54z8jWNM0bE';
  final double _startSeconds = 77;

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