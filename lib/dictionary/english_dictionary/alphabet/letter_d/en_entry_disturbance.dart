import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisturbance extends StatefulWidget {
  const EnglishEntrydisturbance({super.key});

  @override
  State<EnglishEntrydisturbance> createState() =>
      _EnglishEntrydisturbanceState();
}

class _EnglishEntrydisturbanceState extends State<EnglishEntrydisturbance> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
  final String keyword = "disturbance";
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
    return const EntryTitle(word: "disturbance");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disturbance");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈstɜːbəns/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisturbance(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("disturbance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisturbance("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈstɜːrbəns/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisturbance(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("disturbance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisturbance("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisturbances1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The building work is creating constant noise, dust and disturbance.");
  }

  Future<void> speakdisturbances2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One problem is the disturbance of the local wildlife by tourists.");
  }

  Future<void> speakdisturbances3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fish can sense disturbances in the water.");
  }

  Future<void> speakdisturbances4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She moved the nest very carefully to prevent disturbance to the birds.");
  }

  Future<void> speakdisturbances5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "News of the arrests provoked serious disturbances in the streets.");
  }

  Future<void> speakdisturbances6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was charged with causing a disturbance after the game.");
  }

  Future<void> speakdisturbances7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The army is trained to deal with riots and civil disturbance.");
  }

  Future<void> speakdisturbances8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many patients reported sleep disturbances after taking the drug.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: پشێوی، ئاڵۆزی، ئاژاوە، شڵەژاوی، شلۆقی، شۆر، شێواوی، نائارامی،	مڵۆزمی، ھەراسان‌کردن، مزاحیم‌بوون، ئارام لێ‌ھەڵگرتن، مایەی ناڕەحەتی یان ھەراسان‌کردن، مڵۆزم،	شێواوی، ئاخۆران‌وباخۆران، گەڕەلاوژە، شڵەژاوی، پاشاگەردانی، تێکەولێکەیی، بێ‌سەرەوبەرەیی، شپرزەیی، تێکچوویی،	(دەروون‌ناسی) نەخۆشی دەروونی، تێکچوون،	(ماف) دەس‌درێژی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ئەو شتانەی کە دەتوەستێنن لەوەی دەیکەیت، یان دۆخی ئاسایی شتێک تێکدەدەن؛ بێزارکردنی کردنی کەسێک کە دەیەوێت شتێک بکات"),
          SentencesRow(
            englishText:
                "The building work is creating constant noise, dust and disturbance.",
            kurdishText:
                "کاری بیناکە ژاوەژاو، تەپ‌وتۆز و بێزاری بەردەوام درووست دەکات.", // disturbance
            onPressedBritish: () => speakdisturbances1("en-GB"),
            onPressedAmerican: () => speakdisturbances1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "One problem is the disturbance of the local wildlife by tourists.",
            kurdishText: "کێشەیەک تێکدانی ژیانی کێوییە لەلایەن گەشتیارانەوە.",
            onPressedBritish: () => speakdisturbances2("en-GB"),
            onPressedAmerican: () => speakdisturbances2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Fish can sense disturbances in the water.",
            kurdishText: "ماسی دەتوانن ھەست بە شلۆقی لە ئاودا بکەن.",
            onPressedBritish: () => speakdisturbances3("en-GB"),
            onPressedAmerican: () => speakdisturbances3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She moved the nest very carefully to prevent disturbance to the birds.",
            kurdishText:
                "ھێلانەکەی زۆر بە وریاییەوە جوڵاند بۆ ئەوەی ڕێگا لە ھەراسان‌کردنی باڵندەکان بگرێت.",
            onPressedBritish: () => speakdisturbances4("en-GB"),
            onPressedAmerican: () => speakdisturbances4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) دۆخێک کە تێیدا خەڵکی توندوتیژانە ڕەفتار دەکەن لە شوێنێکی گشتیدا"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "News of the arrests provoked serious disturbances in the streets.",
            kurdishText:
                "ھەواڵی دەستگیرکردنەکان بوون بە ھۆکاری ئاژاوەی توند لەسەر شەقامەکان.",
            onPressedBritish: () => speakdisturbances5("en-GB"),
            onPressedAmerican: () => speakdisturbances5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was charged with causing a disturbance after the game.",
            kurdishText: "تاوانبارکرا بە نانەوەی ئاژاوە لە دوای یارییەکە.",
            onPressedBritish: () => speakdisturbances6("en-GB"),
            onPressedAmerican: () => speakdisturbances6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The army is trained to deal with riots and civil disturbance.",
            kurdishText:
                "سوپا ڕاھێنراوە بۆ مامەڵە لەگەڵ ئاڵۆزی و بێزارکردنی خەڵکی.",
            onPressedBritish: () => speakdisturbances7("en-GB"),
            onPressedAmerican: () => speakdisturbances7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) دۆخێک کە تێیدا فەرمانێکی جەستە یان مێشکی کەسێک کارناکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Many patients reported sleep disturbances after taking the drug.",
            kurdishText:
                "زۆر نەخۆش ئاماژەیان بە تێکچوونی خەو کرد لە دوای وەرگرتنی دەرمانەکە.",
            onPressedBritish: () => speakdisturbances8("en-GB"),
            onPressedAmerican: () => speakdisturbances8("en-US"),
          ),
          // disturbances900"),
          // disturbances9
          // disturbances_1000"),
          // disturbances10
          // disturbances1100"),
          // disturbances11
          // disturbances1200"),
          // disturbances12
          // disturbances1300"),
          // disturbances13
          // disturbances1400"),
          // disturbances14
          // disturbances1500"),
          // disturbances15
          // disturbances1600"),
          // disturbances16
          // disturbances1700"),
          // disturbances17
          // disturbances1800"),
          // disturbances18
          // disturbances1900"),
          // disturbances19
          // disturbances_2000"),
          // disturbances20
          // disturbances2100"),
          // disturbances21
          // disturbances2200"),
          // disturbances22("en-US"),
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
- Noun: disturbance (derived forms: disturbances)
1. Activity that is a malfunction, intrusion, or interruption (= perturbation)
"he looked around for the source of the disturbance"; "there was a disturbance of neural function";
 
2. An unhappy and worried mental state (= perturbation, upset)
"there was too much anger and disturbance";
 
3. A disorderly outburst or tumult (= disruption, commotion, flutter, hurly burly, to-do [informal], hoo-ha [informal], hoo-hah [informal], kerfuffle [Brit, informal], carry-on [Brit, informal], song and dance [Brit, informal])
"they were amazed by the furious disturbance they had caused";
 
4. A noisy fight (= affray, fray, ruffle)
 
5. The act of disturbing something or someone; setting something in motion
 
6. (psychiatry) a psychological disorder of thought or emotion; a more neutral term than mental illness (= mental disorder, mental disturbance, psychological disorder, folie)
 
7. Electrical or acoustic activity that can disturb communication (= noise, interference)
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

  final String _videoId = 'unk6n3_QdlM';
  final double _startSeconds = 188;

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

  final String _videoId = 'bcdEFos9YQQ';
  final double _startSeconds = 776;

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

  final String _videoId = 'CMKw77fbkOs';
  final double _startSeconds = 483;

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

  final String _videoId = 'DSQG0zvR6dk';
  final double _startSeconds = 306;

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

  final String _videoId = 'EmT0i0xG6zg';
  final double _startSeconds = 126;

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

  final String _videoId = '_mqP7kd1H_Y';
  final double _startSeconds = 547;

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

  final String _videoId = 'kpcLiJezXQw';
  final double _startSeconds = 525;

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