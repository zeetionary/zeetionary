import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryduty extends StatefulWidget {
  const EnglishEntryduty({super.key});

  @override
  State<EnglishEntryduty> createState() => _EnglishEntrydutyState();
}

class _EnglishEntrydutyState extends State<EnglishEntryduty> {
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
  final String keyword = "duty";
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
    return const EntryTitle(word: "duty");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: duty");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdjuːti/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakduty(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("duty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakduty("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈduːti/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakduty(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("duty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakduty("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdutys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is my duty to report it to the police.");
  }

  Future<void> speakdutys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Local councillors have a duty to serve the community.");
  }

  Future<void> speakdutys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The company owes a duty of care to its employees.");
  }

  Future<void> speakdutys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't want you to visit me simply out of a sense of duty.");
  }

  Future<void> speakdutys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Report for duty at 8 a.m.");
  }

  Future<void> speakdutys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was on kitchen duty.");
  }

  Future<void> speakdutys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been suspended from active duty.");
  }

  Future<void> speakdutys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her son was released from duty in the army to visit her in hospital.");
  }

  Future<void> speakdutys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I spend a lot of time on administrative duties.");
  }

  Future<void> speakdutys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The princess has taken on her mother's official duties.");
  }

  Future<void> speakdutys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your duties will include greeting visitors and answering the phone.");
  }

  Future<void> speakdutys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cleaning duties now fell to Rachel.");
  }

  Future<void> speakdutys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I share the cooking duties with Bell.");
  }

  Future<void> speakdutys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The troops are here to perform peacekeeping duties.");
  }

  Future<void> speakdutys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The US imposed a duty on imports.");
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
کوردی: ئەرک، پەیور، پێبەندی ئاکاری یان قانوونی، فرمان،	خزمەت، ڕاژە، کار،	ئەرک‌ڕاپەڕێنی، لەڕووی ئەرکەوە، قانوون‌زانی،	باج
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) شتێک کە پێتوایە دەبێت بیکەیت چونکە پێتوایە بەرپرسیاریەتی ئەخلاقی یان یان یاساییتە"""),
          SentencesRow(
            englishText: """It is my duty to report it to the police.""",
            kurdishText: """ئەوە ئەرکمە کە کە بە پۆلیسی بڵێم.""", // duty
            onPressedBritish: () => speakdutys1("en-GB"),
            onPressedAmerican: () => speakdutys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Local councillors have a duty to serve the community.""",
            kurdishText:
                """ئەندامانی ئەنجوومەنەکە ئەرکیانە خزمەتی کۆمەڵگەکە بکەن.""",
            onPressedBritish: () => speakdutys2("en-GB"),
            onPressedAmerican: () => speakdutys2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The company owes a duty of care to its employees.""",
            kurdishText:
                """کۆمپانیاکە بەرپرسیاریەتیی چاودێریی کارمەندەکانیی لەسەرە.""",
            onPressedBritish: () => speakdutys3("en-GB"),
            onPressedAmerican: () => speakdutys3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I don't want you to visit me simply out of a sense of duty.""",
            kurdishText:
                """نامەوێت سەردانم بکەیت تەنھا وەک ھەستکردن بە ئەرکێک.""",
            onPressedBritish: () => speakdutys4("en-GB"),
            onPressedAmerican: () => speakdutys4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) ئەو کارەی کە پیشەکەتە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Report for duty at 8 a.m.""",
            kurdishText: """لە ٨ ـی بەیانی بچۆ سەر کارەکەت.""",
            onPressedBritish: () => speakdutys5("en-GB"),
            onPressedAmerican: () => speakdutys5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He was on kitchen duty.""",
            kurdishText: """لە کاری چێشتخانە بوو.""",
            onPressedBritish: () => speakdutys6("en-GB"),
            onPressedAmerican: () => speakdutys6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He's been suspended from active duty.""",
            kurdishText: """لە کاری چالاکی سڕکرا بوو.""",
            onPressedBritish: () => speakdutys7("en-GB"),
            onPressedAmerican: () => speakdutys7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Her son was released from duty in the army to visit her in hospital.""",
            kurdishText:
                """کوڕەکەی لە کاری سەربازی نێردرایەوە بۆ ئەوەی سەردانی بکات لە نەخۆشخانە.""",
            onPressedBritish: () => speakdutys8("en-GB"),
            onPressedAmerican: () => speakdutys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ناو) ئەو ئەرکانەی کە بەشێکن لە کارەکەت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """I spend a lot of time on administrative duties.""",
            kurdishText: """کاتی زۆرم بەسەر برد بە ئەرکی بەڕێوەبردن.""",
            onPressedBritish: () => speakdutys9("en-GB"),
            onPressedAmerican: () => speakdutys9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The princess has taken on her mother's official duties.""",
            kurdishText:
                """شازادە خاتوونەکە ئەرکە فەرمییەکانی دایکی گرتبووە ئەستۆ.""",
            onPressedBritish: () => speakdutys10("en-GB"),
            onPressedAmerican: () => speakdutys10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Your duties will include greeting visitors and answering the phone.""",
            kurdishText:
                """ئەرکەکانت خێرھاتنکردنی سەردانکاران و وەڵامدانەوەی تەلەفۆن دەگرێتەوە.""",
            onPressedBritish: () => speakdutys11("en-GB"),
            onPressedAmerican: () => speakdutys11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The cleaning duties now fell to Rachel.""",
            kurdishText: """ئەرکەکانی پاککردنەوە ئێستا بەسەر ڕەیچڵدا کەوت.""",
            onPressedBritish: () => speakdutys12("en-GB"),
            onPressedAmerican: () => speakdutys12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I share the cooking duties with Bell.""",
            kurdishText: """ئەرکەکانی خواردن لێنان لەگەڵ بێڵ بەش دەکەم.""",
            onPressedBritish: () => speakdutys13("en-GB"),
            onPressedAmerican: () => speakdutys13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The troops are here to perform peacekeeping duties.""",
            kurdishText: """ھێزەکان لێرەن بۆ ئەرکی ئاشتیپارێزی.""",
            onPressedBritish: () => speakdutys14("en-GB"),
            onPressedAmerican: () => speakdutys14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ناو) باجێک کە دەیدەیت بۆ ئەو شتانەی کە دەیانکڕیت، بەتایبەتی بۆ ئەو شتانەی کە دەیانھێنیتە ناو وڵاتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """The US imposed a duty on imports.""",
            kurdishText: """ئەمریکا باجی بەسەر ھاوردەدا سەپاند.""",
            onPressedBritish: () => speakdutys15("en-GB"),
            onPressedAmerican: () => speakdutys15("en-US"),
          ),
          // dutys1600
          // speakdutys16
          // dutys16// dutys1700
          // speakdutys17
          // dutys17// dutys1800
          // speakdutys18
          // dutys18// dutys1900
          // speakdutys19
          // dutys19// dutys_2000
          // speakdutys20
          // dutys20// dutys2100
          // speakdutys21
          // dutys21// dutys2200
          // speakdutys22
          // dutys22("en-US"""),
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
- Noun: duty (derived forms: duties)
1. The social force that binds you to the courses of action demanded by that force (= responsibility, obligation)
"we must instil a sense of duty in our children"; "every right implies a responsibility; every opportunity, an obligation; every possession, a duty";
 
2. Work that you are obliged to perform for moral or legal reasons
"the duties of the job"
 
3. A government tax on imports or exports (= tariff)
"they signed a treaty to lower duties on trade between their countries";
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

  final String _videoId = 'rM-lf9ZwVek';
  final double _startSeconds = 161;

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

  final String _videoId = 'Jk7NYEhai0g';
  final double _startSeconds = 646;

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

  final String _videoId = '0ssySdK98zk';
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

  final String _videoId = 'XI9kKiyIMf0';
  final double _startSeconds = 514;

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

  final String _videoId = '7EnWiGYT1g4';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'esfChb49_Rk';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Gv4Af83KFrE';
  final double _startSeconds = 315;

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