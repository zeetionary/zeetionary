import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryecho extends StatefulWidget {
  const EnglishEntryecho({super.key});

  @override
  State<EnglishEntryecho> createState() => _EnglishEntryechoState();
}

class _EnglishEntryechoState extends State<EnglishEntryecho> {
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
  final String keyword = "echo";
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
    return const EntryTitle(word: "echo");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: echo");
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
    return const IPAofEnglish(text: "IpaUK: /ˈekəʊ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakecho(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("echo");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakecho("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈekəʊ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakecho(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("echo");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakecho("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakechos1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("Her footsteps echoed in the empty room.");
  }

  Future<void> speakechos2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The call echoed off the walls of the cave.");
  }

  Future<void> speakechos3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The whole house echoed.");
  }

  Future<void> speakechos4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The valley echoed back his voice.");
  }

  Future<void> speakechos5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The street echoed with the cries of children.");
  }

  Future<void> speakechos6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("This is a view echoed by many on the right of the party.");
  }

  Future<void> speakechos7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("They had ideas which seem to echo our own.");
  }

  Future<void> speakechos8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("There was an echo on the phone and I couldn't hear clearly.");
  }

  Future<void> speakechos9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("The hills sent back a faint echo.");
  }

  Future<void> speakechos10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Yesterday's crash has grim echoes of previous disasters.");
  }

  Future<void> speakechos11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        "His words were an echo of what she had heard many times before.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دەنگ‌دانەوە، زایەڵە، پێژن، گومنی، ڕەنگ‌دانەوە، کاردانەوە، پەرچەکردار، وەڵام،	لاسایی‌کەرەوە، چاولێکەر.	شۆپ، جێ، مۆرک، شەقڵ، شوێن،	دووبارەبوونەوە،	پێئاژۆ، ئەنجام، ئاکام
"""),
          const DefinitionKurdish(text: """١. (کردار) دەنگدانەوە"""),
          SentencesRow(
            englishText: """Her footsteps echoed in the empty room.""",
            kurdishText:
                """ھەنگاوەکانی دەنگیان دەدایەوە لە ژوورە بەتاڵەکەدا.""", // echo
            onPressedBritish: () => speakechos1("en-GB"),
            onPressedAmerican: () => speakechos1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The call echoed off the walls of the cave.""",
            kurdishText:
                """ھاوارکردنەکە دژ بە دیوارەکانی ئەشکەوتەکە دەنگی دایەوە.""",
            onPressedBritish: () => speakechos2("en-GB"),
            onPressedAmerican: () => speakechos2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (کردار) دەرکردنەوەی دەنگ"""),
          SentencesRow(
            englishText: """The whole house echoed.""",
            kurdishText: """خانووەکە دەنگی دایەوە.""",
            onPressedBritish: () => speakechos3("en-GB"),
            onPressedAmerican: () => speakechos3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The valley echoed back his voice.""",
            kurdishText: """دۆڵەکە دەنگی دەنگ دایەوە.""",
            onPressedBritish: () => speakechos4("en-GB"),
            onPressedAmerican: () => speakechos4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The street echoed with the cries of children.""",
            kurdishText: """شەقامەکان بە ھاواری منداڵان دەنگی دەدایەوە.""",
            onPressedBritish: () => speakechos5("en-GB"),
            onPressedAmerican: () => speakechos5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) دووبارەکردنەوەی بۆچوون یان بیرۆکەیەک چونکە لەگەڵی ڕازیت"""),
          SentencesRow(
            englishText:
                """This is a view echoed by many on the right of the party.""",
            kurdishText:
                """ئەمە دیدێکە زۆرێک لە ڕاستڕەوانی پارتەکە لەگەڵی ھاوڕان.""",
            onPressedBritish: () => speakechos6("en-GB"),
            onPressedAmerican: () => speakechos6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """They had ideas which seem to echo our own.""",
            kurdishText:
                """ژمارەیەک بیرۆکەیان ھەبوو کە وادیاربوو لەگەڵ ئەوانەی ئێمە بگونجێن.""",
            onPressedBritish: () => speakechos7("en-GB"),
            onPressedAmerican: () => speakechos7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ناو) دەنگدانەوەی دەنگ"""),
          SentencesRow(
            englishText:
                """There was an echo on the phone and I couldn't hear clearly.""",
            kurdishText:
                """دەنگدانەوەیەک ھەبوو لەسەر تەلەفۆنەکە و نەمدەتوانی بەباشی ببیستم.""",
            onPressedBritish: () => speakechos8("en-GB"),
            onPressedAmerican: () => speakechos8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The hills sent back a faint echo.""",
            kurdishText: """گردەکان دەنگدانەوەیەکی نزمیان دەردەکرد.""",
            onPressedBritish: () => speakechos9("en-GB"),
            onPressedAmerican: () => speakechos9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ناو) شتێک کە شتێکی دیکەت بەبیردەھێنێتەوە"""),
          SentencesRow(
            englishText:
                """Yesterday's crash has grim echoes of previous disasters.""",
            kurdishText:
                """پێکدادانەکە وەبیرھێنەرەوەی خەمناکی کارەساتەکانی پێشووترە.""",
            onPressedBritish: () => speakechos10("en-GB"),
            onPressedAmerican: () => speakechos10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ناو) دیدو و بۆچوونیک کە لەگەڵ یەکێکی دیکە دەگونجێت کە پێشتر باسکراوە یان بیری لێکراوە"""),
          SentencesRow(
            englishText:
                """His words were an echo of what she had heard many times before.""",
            kurdishText:
                """قسەکانی سووپاتکەرەوەی ئەوە بوو کە پێشووتر چەندین جار بیستبووی.""",
            onPressedBritish: () => speakechos11("en-GB"),
            onPressedAmerican: () => speakechos11("en-US"),
          ),
          // speakechos
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
- Verb: echo (derived forms: echoed, echoing, echoes)
1. To say again or imitate (= repeat)
"followers echoing the cries of their leaders";
 
2. Fill for a short time with sound and echoes (= resound, ring, reverberate)
"the hall echoed with laughter";
 
3. Bring to mind (= recall)
"His words echoed John F. Kennedy";

- Noun: echo (derived forms: echoes)
1. The repetition of a sound resulting from reflection of the sound waves (= reverberation, sound reflection, replication)
"she could hear echoes of her own footsteps";
 
2. A reply that repeats what has just been said
 
3. (electronics) a reflected television, radio or radar beam
 
4. A close parallel of a feeling, idea, style, etc.
"his contention contains more than an echo of Rousseau"; "Napoleon III was an echo of the mighty Emperor but an infinitely better man"
 
5. An imitation or repetition
"the flower arrangement was created as an echo of a client's still life"

- Noun: Echo
1. (Greek mythology) a nymph who was spurned by Narcissus and pined away until only her voice remained
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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 2054;

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

  final String _videoId = 'uKgaVlMN7IY';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'J-K5OjAkiEA';
  final double _startSeconds = 269;

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

  final String _videoId = 'qQ01eLt_bxo';
  final double _startSeconds = 725;

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

  final String _videoId = 'VVsdb90aOmA';
  final double _startSeconds = 1358;

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

  final String _videoId = 'XSkH-djDU-k';
  final double _startSeconds = 271;

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

  final String _videoId = 'LwZIxGAG8xA';
  final double _startSeconds = 87;

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