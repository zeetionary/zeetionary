import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeconomy extends StatefulWidget {
  const EnglishEntryeconomy({super.key});

  @override
  State<EnglishEntryeconomy> createState() => _EnglishEntryeconomyState();
}

class _EnglishEntryeconomyState extends State<EnglishEntryeconomy> {
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
  final String keyword = "economy";
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
    return const EntryTitle(word: "economy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: economy");
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
    return const IPAofEnglish(text: "IpaUK: /ɪˈkɒnəmi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeconomy(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("economy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeconomy("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ɪˈkɑːnəmi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeconomy(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("economy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeconomy("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeconomys1(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The economy is in recession.");
  }

  Future<void> speakeconomys2(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The world economy is still suffering from the effects of the pandemic.");
  }

  Future<void> speakeconomys3(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tourism clearly dominates the local economy.");
  }

  Future<void> speakeconomys4(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He favours tax cuts to stimulate the economy.");
  }

  Future<void> speakeconomys5(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Over the past few years, the country's economy has grown at a record pace.");
  }

  Future<void> speakeconomys6(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ireland was one of the fastest-growing economies in Western Europe in the 1990s.");
  }

  Future<void> speakeconomys7(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a false economy to buy cheap clothes.");
  }

  Future<void> speakeconomys8(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has improved the fuel economy of all its vehicles.");
  }

  Future<void> speakeconomys9(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Buy the large economy pack.");
  }

  Future<void> speakeconomys10(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need to make substantial economies.");
  }

  Future<void> speakeconomys11(String languageCode) async {
    // DOPSUM: CHANGE speakeconomy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She writes with a great economy of words.");
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
کوردی: ئابووری،	دەست‌پێوەگرتن، ماڵداری،	ڕێکخستە یان سیستمی ئابووری،	(وەک ئاوەڵناو) خێردەرەوە، پڕداھات، بەقازانج، بەخێر
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) پەیوەندی نێوان بەرھەمھێنان، بازرگانی، و پارەی بەردەست لە وڵات یان ھەرێمێک"""),
          SentencesRow(
            englishText: """The economy is in recession.""",
            kurdishText: """ئابووری لە قەیراندایە.""", // economy
            onPressedBritish: () => speakeconomys1("en-GB"),
            onPressedAmerican: () => speakeconomys1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The world economy is still suffering from the effects of the pandemic.""",
            kurdishText:
                """ئابووری جیھان ھێشتا دەناڵێنێت بەدەست پەتا جیانییەکەوە.""",
            onPressedBritish: () => speakeconomys2("en-GB"),
            onPressedAmerican: () => speakeconomys2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Tourism clearly dominates the local economy.""",
            kurdishText:
                """گەشتیاری بەئاشکرایی زاڵە بەسەر ئابوورییە خۆجێییەکەدا.""",
            onPressedBritish: () => speakeconomys3("en-GB"),
            onPressedAmerican: () => speakeconomys3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He favours tax cuts to stimulate the economy.""",
            kurdishText:
                """پشتگیری کەمکردنەوەی باج دەکات بۆ بووژاندنەوەی ئابووری.""",
            onPressedBritish: () => speakeconomys4("en-GB"),
            onPressedAmerican: () => speakeconomys4("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Over the past few years, the country's economy has grown at a record pace.""",
            kurdishText:
                """لە چەند ساڵی ڕابردوو، ئابووری وڵاتەکە بە خێراییەکی مێژووی بەرەوپێشچووە.""",
            onPressedBritish: () => speakeconomys5("en-GB"),
            onPressedAmerican: () => speakeconomys5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) وڵاتێک، کاتێک بیر لە سیستەمی ئابوورییەکەی دەکەیتەوە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Ireland was one of the fastest-growing economies in Western Europe in the 1990s.""",
            kurdishText:
                """ئێرلەندا یەکێک لە خێرا گەشەسەندووترین ئابوورییەکانی ئەورووپای ڕۆژئاوا بوو لە سڵانی ١٩٩٠ ـەکان.""",
            onPressedBritish: () => speakeconomys6("en-GB"),
            onPressedAmerican: () => speakeconomys6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) بەکارھێنانی سەرچاوەکان بەشێوەیەک کە لە بەفیڕۆدان دوور دەبێت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """It's a false economy to buy cheap clothes (= it seems cheaper but it is not really since they do not last very long).""",
            kurdishText: """ماڵدارییەکی ھەڵەیە کە جلوبەرگی ھەرزان بکڕیت.""",
            onPressedBritish: () => speakeconomys7("en-GB"),
            onPressedAmerican: () => speakeconomys7("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The company has improved the fuel economy of all its vehicles.""",
            kurdishText:
                """کۆمپانیاکە دەست‌پێوەگرتنی سووتەمەنی لە ھەموو ئۆتۆمبێلەکانیدا بەھێز کردووە.""",
            onPressedBritish: () => speakeconomys8("en-GB"),
            onPressedAmerican: () => speakeconomys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) کە بە لەبەرچاوگرتنی پارەکەی شتێکی باشە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Buy the large economy pack.""",
            kurdishText: """پاکەتە گەورە کەم‌خەرجییەکە بکڕە.""",
            onPressedBritish: () => speakeconomys9("en-GB"),
            onPressedAmerican: () => speakeconomys9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ناو) ڕێگاکانی پاشەکەوتکردنی پارە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """We need to make substantial economies.""",
            kurdishText: """دەبێت دەست‌پێوەگرتنی گەورە بکەین.""",
            onPressedBritish: () => speakeconomys10("en-GB"),
            onPressedAmerican: () => speakeconomys10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ناو) بەکارھێنانی کەمترین لە شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """She writes with a great economy of words (= using only the necessary words).""",
            kurdishText: """بە دەست‌پێوەگرتنی زۆری وشە دەنووسێت.""",
            onPressedBritish: () => speakeconomys11("en-GB"),
            onPressedAmerican: () => speakeconomys11("en-US"),
          ),
          // economys1200economys12
          // speakeconomys12
          // speakeconomys1300economys13
          // speakeconomys13
          // speakeconomys1400economys14
          // speakeconomys14
          // speakeconomys1500economys15
          // speakeconomys15
          // speakeconomys1600economys16
          // speakeconomys16
          // speakeconomys1700economys17
          // speakeconomys17
          // speakeconomys1800economys18
          // speakeconomys18
          // speakeconomys1900economys19
          // speakeconomys19
          // speakeconomys_2000economys20
          // speakeconomys20
          // speakeconomys2100economys21
          // speakeconomys21
          // speakeconomys2200economys22
          // speakeconomys22("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
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
- Noun: economy (derived forms: economies)
1. The system of production and distribution and consumption (= economic system)
 
2. The efficient use of resources
"economy of effort"
 
3. Frugality in the expenditure of money or resources (= thriftiness)
"the Scots are famous for their economy";
 
4. An act of economizing; reduction in cost (= saving)
"it was a small economy to walk to work every day";
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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 336;

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

  final String _videoId = 'nGrB-5ieeMU';
  final double _startSeconds = 368;

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

  final String _videoId = 'FQ4hvLqNfqo';
  final double _startSeconds = 1143;

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

  final String _videoId = 'JY5t6iUzajk';
  final double _startSeconds = 436;

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

  final String _videoId = 'ziwYbVx_-qg';
  final double _startSeconds = 98;

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

  final String _videoId = 'rWVAzS5duAs';
  final double _startSeconds = 1413;

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

  final String _videoId = 'zUbod5t_2oM';
  final double _startSeconds = 1141;

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