import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydissolve extends StatefulWidget {
  const EnglishEntrydissolve({super.key});

  @override
  State<EnglishEntrydissolve> createState() => _EnglishEntrydissolveState();
}

class _EnglishEntrydissolveState extends State<EnglishEntrydissolve> {
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
  final String keyword = "dissolve";
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
    return const EntryTitle(word: "dissolve");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dissolve");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈzɒlv/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdissolve(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dissolve");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdissolve("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈzɑːlv/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdissolve(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dissolve");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdissolve("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdissolves1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Salt dissolves in water.");
  }

  Future<void> speakdissolves2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Heat gently until the sugar dissolves.");
  }

  Future<void> speakdissolves3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The aspirin hasn't dissolved completely yet.");
  }

  Future<void> speakdissolves4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Dissolve the tablet in water.");
  }

  Future<void> speakdissolves5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their marriage was dissolved in 1999.");
  }

  Future<void> speakdissolves6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The election was announced and parliament was dissolved.");
  }

  Future<void> speakdissolves7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When the ambulance had gone, the crowd dissolved.");
  }

  Future<void> speakdissolves8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His calm response dissolved her anger.");
  }

  Future<void> speakdissolves9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The lights in the windows faded and the house dissolved into darkness again.");
  }

  Future<void> speakdissolves10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Every time she heard his name, she dissolved into tears.");
  }

  Future<void> speakdissolves11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All the original calcium had dissolved away.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: توانەوە، ئاوەکی کردن، حەل کردن
"""),
          const DefinitionKurdish(text: "١. (کردار) توانەوە"),
          SentencesRow(
            englishText: "Salt dissolves in water.",
            kurdishText: "خوێ لە ئاودا دەتوێتەوە.", // dissolve
            onPressedBritish: () => speakdissolves1("en-GB"),
            onPressedAmerican: () => speakdissolves1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Heat gently until the sugar dissolves.",
            kurdishText: "بە ھێواشی گەرمی بکە تاوەکو شەکرەکە دەتوێتەوە.",
            onPressedBritish: () => speakdissolves2("en-GB"),
            onPressedAmerican: () => speakdissolves2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The aspirin hasn't dissolved completely yet.",
            kurdishText: "ئەسپرینەکە ھێشتا بە تەواوی نەتواتەوە.",
            onPressedBritish: () => speakdissolves3("en-GB"),
            onPressedAmerican: () => speakdissolves3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) تواندنەوە"),
          SentencesRow(
            englishText: "Dissolve the tablet in water.",
            kurdishText: "حەبەکە لە ئاودا بتوێنەوە.",
            onPressedBritish: () => speakdissolves4("en-GB"),
            onPressedAmerican: () => speakdissolves4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بە فەرمی کۆتایی ھێنان بە ھاوسەرگیرییەک، ڕێکەوتنێکی بازرگانی، یان پەرلەمان"),
          SentencesRow(
            englishText: "Their marriage was dissolved in 1999.",
            kurdishText: "ھاوسەرگیرییەکەیان لە ساڵی ١٩٩٩ کۆتایی پێھێندرا.",
            onPressedBritish: () => speakdissolves5("en-GB"),
            onPressedAmerican: () => speakdissolves5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The election was announced and parliament was dissolved.",
            kurdishText: "ھەڵبژاردن ڕاگەیەندرا و پەرلەمان ھەڵوەشایەوە.",
            onPressedBritish: () => speakdissolves6("en-GB"),
            onPressedAmerican: () => speakdissolves6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) ونبوون یان ونکردن"),
          SentencesRow(
            englishText: "When the ambulance had gone, the crowd dissolved.",
            kurdishText: "کە ئەمبولانسەکە ڕۆشت، خەڵکەکە نەمان.",
            onPressedBritish: () => speakdissolves7("en-GB"),
            onPressedAmerican: () => speakdissolves7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His calm response dissolved her anger.",
            kurdishText: "وەڵامە لەسەرخۆییەکەی تووڕەییەکەی دامرکاندەوە.",
            onPressedBritish: () => speakdissolves8("en-GB"),
            onPressedAmerican: () => speakdissolves8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The lights in the windows faded and the house dissolved into darkness again.",
            kurdishText:
                "لایتەکانی پەنجەرەکە کزبوون و خانووەکە دووبارە کەوتەوە ناو تاریکی.",
            onPressedBritish: () => speakdissolves9("en-GB"),
            onPressedAmerican: () => speakdissolves9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) لەناکاو دەستکردن بە پێکەنین، گریان، ھتد"),
          SentencesRow(
            englishText:
                "Every time she heard his name, she dissolved into tears.",
            kurdishText: "ھەرکاتێک ناویی دەبیست دەستی دەکرد بە گریان.",
            onPressedBritish: () => speakdissolves10("en-GB"),
            onPressedAmerican: () => speakdissolves10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) سڕینەوە یان لەناوبردنی شتێک"),
          SentencesRow(
            englishText: "All the original calcium had dissolved away.",
            kurdishText: "تەواوی کالسیۆمە ڕەسەنەکە لەناچووبوو.",
            onPressedBritish: () => speakdissolves11("en-GB"),
            onPressedAmerican: () => speakdissolves11("en-US"),
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
- Verb: dissolve (derived forms: dissolved, dissolves, dissolving)
1. Grow less and less substantial until it disappears (= fade out, fade away)
"The sound dissolved";
 
2. Cause to go into a solution (= resolve, break up)
"The recipe says that we should dissolve a cup of sugar in two cups of water";
 
3. Come to an end (= break up)
"Their marriage dissolved";
 
4. Stop functioning or cohering as a unit (= disband)
"The political wing of the party dissolved after much internal fighting";
 
5. Cause to lose control emotionally
"The news dissolved her into tears"
 
6. Lose control emotionally
"She dissolved into tears when she heard that she had lost all her savings in the pyramid scheme"
 
7. Cause to fade away
"dissolve a shot or a picture"
 
8. Pass into a solution
"The sugar quickly dissolved in the coffee"
 
9. Become or cause to become soft or liquid (= thaw, unfreeze, unthaw [N. Amer], dethaw, melt)
"The giant iceberg dissolved over the years during the global warming phase";
 
10. Bring the association of to an end or cause to break up (= break up)
"The decree officially dissolved the marriage"; "the judge dissolved the tobacco company";
 
11. Declare void (= dismiss)
"The President dissolved the parliament and called for new elections";

- Noun: dissolve (derived forms: dissolves)
1. (film) a gradual transition from one scene to the next; the next scene is gradually superimposed as the former scene fades out
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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 1623;

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

  final String _videoId = 'olHw-8py9K0';
  final double _startSeconds = 55;

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

  final String _videoId = 'VvJm4pQZ04s';
  final double _startSeconds = 106;

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

  final String _videoId = 'PPgqEcV5LIA';
  final double _startSeconds = 114;

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

  final String _videoId = '4Wc0YPXFO9M';
  final double _startSeconds = 513;

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

  final String _videoId = 'gjySnrspD7E';
  final double _startSeconds = 924;

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

  final String _videoId = 'lvvwcS-0R-g';
  final double _startSeconds = 43;

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