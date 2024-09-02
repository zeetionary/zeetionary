import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeast extends StatefulWidget {
  const EnglishEntryeast({super.key});

  @override
  State<EnglishEntryeast> createState() => _EnglishEntryeastState();
}

class _EnglishEntryeastState extends State<EnglishEntryeast> {
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
  final String keyword = "east";
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
    return const EntryTitle(word: "east");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: east");
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
    return const IPAofEnglish(text: "IpaUK: /iːst/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeast(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("east");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeast("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /iːst/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeast(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("east");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeast("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Which way is east?");
  }

  Future<void> speakeasts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A gale was blowing from the east.");
  }

  Future<void> speakeasts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The points of the compass are north, south, east, and west.");
  }

  Future<void> speakeasts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Most of the country, except the east, is rural.");
  }

  Future<void> speakeasts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her home is in the east of France.");
  }

  Future<void> speakeasts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The east of the country is especially popular with tourists.");
  }

  Future<void> speakeasts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Around 2 000 teachers from around the East of England attended the conference.");
  }

  Future<void> speakeasts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("I was born in the East, but now live in San Francisco.");
  }

  Future<void> speakeasts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "House prices in the east have risen significantly over the last five years.");
  }

  Future<void> speakeasts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "European traders started trading with the East in the 15th century.");
  }

  Future<void> speakeasts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They live on the east coast.");
  }

  Future<void> speakeasts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They live on the city's east side.");
  }

  Future<void> speakeasts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house faces east.");
  }

  Future<void> speakeasts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The storm is expected to head east.");
  }

  Future<void> speakeasts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They live five miles east of Oxford.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
//           const KurdishVocabulary(text: """
// کوردی: ڕۆژھەڵات، خۆرھەڵات، بەشی ڕۆژھەڵاتی وڵات، ناوچە یان شارێ
// """),
          const DefinitionKurdish(
              text:
                  """١. (ناو) ڕۆژھەڵات؛ زۆرجار ئەو ئاراستەیەیە کە خۆر لێیەوە ھەڵدێت"""),
          SentencesRow(
            englishText: """Which way is east?""",
            kurdishText: """کام لایە ڕۆژھەڵاتە؟""",
            onPressedBritish: () => speakeasts1("en-GB"),
            onPressedAmerican: () => speakeasts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """A gale was blowing from the east.""",
            kurdishText: """ڕەشەبایەک لە ڕۆژھەڵاتەوە ھەڵی دەکرد.""",
            onPressedBritish: () => speakeasts2("en-GB"),
            onPressedAmerican: () => speakeasts2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The points of the compass are north, south, east, and west.""",
            kurdishText:
                """خاڵەکانی قیبلەنما لە باکوور، باشوور، ڕۆژھەڵات، و ڕۆژئاوا پێکدێن.""",
            onPressedBritish: () => speakeasts3("en-GB"),
            onPressedAmerican: () => speakeasts3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Most of the country, except the east, is rural.""",
            kurdishText: """زۆرێک لە وڵاتەکە، جگە لە ڕۆژھەڵات، دەشتنشینە.""",
            onPressedBritish: () => speakeasts4("en-GB"),
            onPressedAmerican: () => speakeasts4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Her home is in the east of France.""",
            kurdishText: """ماڵی لە ڕۆژھەڵاتی فەرەنسایە.""",
            onPressedBritish: () => speakeasts5("en-GB"),
            onPressedAmerican: () => speakeasts5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) ڕۆژھەڵاتی وڵاتێک، شارێک، ھتد"""),
          SentencesRow(
            englishText:
                """The east of the country is especially popular with tourists.""",
            kurdishText: """ڕۆژھەڵاتی وڵاتەکە زیاتر لای گەشتیاران باوە.""",
            onPressedBritish: () => speakeasts6("en-GB"),
            onPressedAmerican: () => speakeasts6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Around 2 000 teachers from around the East of England attended the conference.""",
            kurdishText:
                """نزیکەی ٢٠٠٠ مامۆستا لە ڕۆژھەڵاتی ئینگلتەراوە بەژداری کۆنفرانسەکەیان.""",
            onPressedBritish: () => speakeasts7("en-GB"),
            onPressedAmerican: () => speakeasts7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I was born in the East, but now live in San Francisco.""",
            kurdishText:
                """لە ڕۆژھەڵات (ــی ئەمریکا) لەدایکبووم، بەڵام ئێستا لە سانفرانسیسکۆ دەژیم.""",
            onPressedBritish: () => speakeasts8("en-GB"),
            onPressedAmerican: () => speakeasts8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """House prices in the east have risen significantly over the last five years.""",
            kurdishText:
                """نرخی خانوو لە ڕۆژھەڵات زۆر بەرزبووە لە پێنج ساڵی ڕابردوودا.""",
            onPressedBritish: () => speakeasts9("en-GB"),
            onPressedAmerican: () => speakeasts9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) وڵاتانی ڕۆژھەڵاتی ئاسیا، بەتایبەتی چین، ژاپۆن، و ھندستان"""),
          SentencesRow(
            englishText:
                """European traders started trading with the East in the 15th century.""",
            kurdishText:
                """بازرگانانی ڕۆژئاوا دەستیان کرد بە بازرگانی لەگەڵ ڕۆژھەڵات لە سەدەی ١٥ ــدا.""",
            onPressedBritish: () => speakeasts10("en-GB"),
            onPressedAmerican: () => speakeasts10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ھاوەڵناو) لە ڕۆژھەڵات یان بەرەو ڕۆژھەڵات"""),
          SentencesRow(
            englishText: """They live on the east coast.""",
            kurdishText: """لە کەناری ڕۆژھەڵات دەژین.""",
            onPressedBritish: () => speakeasts11("en-GB"),
            onPressedAmerican: () => speakeasts11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """They live on the city's east side.""",
            kurdishText: """لە لای ڕۆژھەڵاتی شارەکە دەژین.""",
            onPressedBritish: () => speakeasts12("en-GB"),
            onPressedAmerican: () => speakeasts12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ھاوەڵکار) بەرەو ڕۆژھەڵات"""),
          SentencesRow(
            englishText: """The house faces east.""",
            kurdishText: """خانووەکە ڕووی لە ڕۆژھەڵاتە.""",
            onPressedBritish: () => speakeasts13("en-GB"),
            onPressedAmerican: () => speakeasts13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The storm is expected to head east.""",
            kurdishText: """زریانەکە پێشبینی دەکرێت بۆ ڕۆژھەڵات بچێت.""",
            onPressedBritish: () => speakeasts14("en-GB"),
            onPressedAmerican: () => speakeasts14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٦. (ھاوەڵکار) نزیکتر لە ڕۆژھەڵات"""),
          SentencesRow(
            englishText: """They live five miles east of Oxford.""",
            kurdishText: """پێنج میل لە ڕۆژھەڵاتی ئۆکسفۆردەوە دەژین.""",
            onPressedBritish: () => speakeasts15("en-GB"),
            onPressedAmerican: () => speakeasts15("en-US"),
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
- Noun: east (derived forms: easts)
1. The cardinal compass point that is at 90 degrees (= due east, eastward, E)
 
2. The direction corresponding to the eastward cardinal compass point
 
3. A location in the eastern part of a country, region, or city

- Adjective: east 
1. Situated in, facing or moving toward the east

- Adverb: east
1. To, toward, or in the east
"we travelled east for several miles"; "located east of Rome"

- Noun: East
1. The countries of Asia (= Orient)
 
2. The region of the United States lying to the north of the Ohio River and to the east of the Mississippi River (= eastern United States)
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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1695;

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

  final String _videoId = 'Fa13JKGG0ds';
  final double _startSeconds = 893;

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

  final String _videoId = 'W8uXhQnWgj4';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'E991yX1WiEI';
  final double _startSeconds = 353;

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

  final String _videoId = 'oD9BaNAH-eE';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'Fr-qagv7ig0';
  final double _startSeconds = 888;

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

  final String _videoId = 'DxL2HoqLbyA';
  final double _startSeconds = 156;

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