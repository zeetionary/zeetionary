import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydivorce extends StatefulWidget {
  const EnglishEntrydivorce({super.key});

  @override
  State<EnglishEntrydivorce> createState() => _EnglishEntrydivorceState();
}

class _EnglishEntrydivorceState extends State<EnglishEntrydivorce> {
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
  final String keyword = "divorce";
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
    return const EntryTitle(word: "divorce");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: divorce");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈvɔːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivorce(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("divorce");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdivorce("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈvɔːrs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivorce(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("divorce");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdivorce("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivorces1(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The marriage ended in divorce.");
  }

  Future<void> speakdivorces2(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Divorce proceedings started today.");
  }

  Future<void> speakdivorces3(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He remarried after a divorce from his first wife, Kate.");
  }

  Future<void> speakdivorces4(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bella wants a divorce.");
  }

  Future<void> speakdivorces5(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She told him she was filing for divorce.");
  }

  Future<void> speakdivorces6(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cited adultery as grounds for divorce.");
  }

  Future<void> speakdivorces7(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Why is there such a divorce between the arts and the sciences in this country's schools?");
  }

  Future<void> speakdivorces8(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're getting divorced.");
  }

  Future<void> speakdivorces9(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's divorcing her husband.");
  }

  Future<void> speakdivorces10(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'd heard they're divorcing.");
  }

  Future<void> speakdivorces11(String languageCode) async {
    // DOPSUM: CHANGE speakdivorce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They believed that art should be divorced from politics.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: تەڵاق، جیابوونەوە، بەردان،	دەستووری قانوونی تەڵاق،	جیابوونەوە، دابڕان، دابڕانی پێوەندی،	ھەڵوەشانەوە، بەتاڵ‌بوونەوە
"""),
          const DefinitionKurdish(
              text: "١. (ناو) بە فەرمی کۆتایی ھێنان بە ھاوسەرگیرییەک"),
          SentencesRow(
            englishText: "The marriage ended in divorce.",
            kurdishText: "ھاوسەرگیرییەکە بە جیابوونەوە کۆتایی ھات.", // divorce
            onPressedBritish: () => speakdivorces1("en-GB"),
            onPressedAmerican: () => speakdivorces1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Divorce proceedings (= the legal process of divorce) started today.",
            kurdishText: "کارەکانی جیابوونەوە ئەمڕۆ دەستیان پێکرد.",
            onPressedBritish: () => speakdivorces2("en-GB"),
            onPressedAmerican: () => speakdivorces2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He remarried after a divorce from his first wife, Kate.",
            kurdishText:
                "دووبارە ھاوسەرگیری کردەوە لە دوای جیابوونەوە لە ژنی یەکەمی، کەیت.",
            onPressedBritish: () => speakdivorces3("en-GB"),
            onPressedAmerican: () => speakdivorces3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Bella wants a divorce.",
            kurdishText: "بێلا جیابوونەوەی دەوێت.",
            onPressedBritish: () => speakdivorces4("en-GB"),
            onPressedAmerican: () => speakdivorces4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She told him she was filing for divorce.",
            kurdishText: "پێی گوت کە جیابوونەوە دەوێت.",
            onPressedBritish: () => speakdivorces5("en-GB"),
            onPressedAmerican: () => speakdivorces5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cited adultery as grounds for divorce.",
            kurdishText: "داوێن پیسی بە ھۆکاری جیابوونەوەکە دانا.",
            onPressedBritish: () => speakdivorces6("en-GB"),
            onPressedAmerican: () => speakdivorces6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) جیاکردنەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Why is there such a divorce between the arts and the sciences in this country's schools?",
            kurdishText:
                "بۆچی جیاکردنەوە ھەیە لە نێوان ھونەر و زانستەکان لە قوتابخانەکانی ئەم وڵاتەدا؟",
            onPressedBritish: () => speakdivorces7("en-GB"),
            onPressedAmerican: () => speakdivorces7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) کۆتایی ھێنان بە ھاوسەرگیری"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They're getting divorced.",
            kurdishText: "جیادەبنەوە.",
            onPressedBritish: () => speakdivorces8("en-GB"),
            onPressedAmerican: () => speakdivorces8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's divorcing her husband.",
            kurdishText: "لە ھاوژینەکەی جیادەبێتەوە.",
            onPressedBritish: () => speakdivorces9("en-GB"),
            onPressedAmerican: () => speakdivorces9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'd heard they're divorcing.",
            kurdishText: "بیستم جیادەبنەوە.",
            onPressedBritish: () => speakdivorces10("en-GB"),
            onPressedAmerican: () => speakdivorces10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) جیاکردنەوەی کەسێک، بیرۆکەیەک، بابەتێک، ھتد لە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "They believed that art should be divorced from politics.",
            kurdishText: "باوەڕیان وابوو ھونەر دەبێت لە سیاسەت جیابکرێتەوە.",
            onPressedBritish: () => speakdivorces11("en-GB"),
            onPressedAmerican: () => speakdivorces11("en-US"),
          ),
          // divorces1200"),
          // speakdivorces12
          // divorces12("en-US"),
          // divorces1300"),
          // speakdivorces13
          // divorces13("en-US"),
          // divorces1400"),
          // speakdivorces14
          // divorces14("en-US"),
          // divorces1500"),
          // speakdivorces15
          // divorces15("en-US"),
          // divorces1600"),
          // speakdivorces16
          // divorces16("en-US"),
          // divorces1700"),
          // speakdivorces17
          // divorces17("en-US"),
          // divorces1800"),
          // speakdivorces18
          // divorces18("en-US"),
          // divorces1900"),
          // speakdivorces19
          // divorces19("en-US"),
          // divorces_2000"),
          // speakdivorces20
          // divorces20("en-US"),
          // divorces2100"),
          // speakdivorces21
          // divorces21("en-US"),
          // divorces2200"),
          // speakdivorces22
          // divorces22("en-US"),
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
- Noun: divorce (derived forms: divorces)
1. (law) the legal dissolution of a marriage (= divorcement)

- Verb: divorce (derived forms: divorced, divorcing, divorces)
1. Part; cease or break association with (= disassociate, dissociate, disunite, disjoint)
"She divorced herself from the organization when she found out the identity of the president";
 
2. Get a divorce; formally terminate a marriage (= split up)
"The couple divorced after only 6 months";
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'EFkyxzJtiv4';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 46;

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

  final String _videoId = 'KJy7T24rhg0';
  final double _startSeconds = 17;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 1181;

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

  final String _videoId = 'od6Zq5T57R0';
  final double _startSeconds = 5;

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

  final String _videoId = '6z6g8mKEs9k';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'fZsY2Qpa3w8';
  final double _startSeconds = 81;

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