import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydump extends StatefulWidget {
  const EnglishEntrydump({super.key});

  @override
  State<EnglishEntrydump> createState() => _EnglishEntrydumpState();
}

class _EnglishEntrydumpState extends State<EnglishEntrydump> {
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
  final String keyword = "dump";
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
    return const EntryTitle(word: "dump");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dump");
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
    return const IPAofEnglish(text: "IpaUK: /dʌmp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdump(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dump");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdump("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dʌmp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdump(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dump");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdump("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdumps1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Too much toxic waste is being dumped at sea.");
  }

  Future<void> speakdumps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dead body was just dumped by the roadside.");
  }

  Future<void> speakdumps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's got no right to keep dumping his problems on me.");
  }

  Future<void> speakdumps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They accused the West of dumping out-of-date medicines on developing countries.");
  }

  Future<void> speakdumps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Just dump your stuff over there—we'll sort it out later.");
  }

  Future<void> speakdumps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did you hear he's dumped his girlfriend?");
  }

  Future<void> speakdumps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If he's so awful, why don't you just dump him?");
  }

  Future<void> speakdumps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They took the mattress to the dump.");
  }

  Future<void> speakdumps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Radioactive waste has been found at the dump.");
  }

  Future<void> speakdumps10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How can you live in this dump?");
  }

  Future<void> speakdumps11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Soldiers guarded the ammunition dump carefully.");
  }

  Future<void> speakdumps12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dog went outside to have a dump.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: جێگای ھەڵڕشتنی زبڵ‌وزاڵ، کۆما زبڵ، کوگای زبڵ و ئاشاخە،	(سەربازی) عەماری کاتی،	نافەرمی شوێنی پیس و ناخۆش، کەلاوە، کونەسەگ، گووخانە،	(کۆمپیوتەر) کۆپی، لەبەرھەڵگرتنەوە
"""),
          const DefinitionKurdish(
              text:
                  """١. (کردار) فڕێدانی شتێک کە ناتەوێت، بە تایبەتی لە شوێنێکدا کە نەگونجاوە"""),
          SentencesRow(
            englishText: """Too much toxic waste is being dumped at sea.""",
            kurdishText:
                """زۆر پاشماوەی ژەھراوی فڕێدەدرێتە دەریاکانەوە.""", // dump
            onPressedBritish: () => speakdumps1("en-GB"),
            onPressedAmerican: () => speakdumps1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The dead body was just dumped by the roadside.""",
            kurdishText: """لاشەی مردووەکە لە کەنار ڕێگاکە فڕێدرابوو.""",
            onPressedBritish: () => speakdumps2("en-GB"),
            onPressedAmerican: () => speakdumps2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (کردار) وازھێنان لە کەسێک/شتێک یان جێھێشتنی بۆ کەسێکی دیکە کە مامەڵەی لەگەڵ بکات"""),
          SentencesRow(
            englishText:
                """He's got no right to keep dumping his problems on me.""",
            kurdishText: """ھیچ مافی ئەوەی نییە کە کێشەکانی بەسەر مندا بخات.""",
            onPressedBritish: () => speakdumps3("en-GB"),
            onPressedAmerican: () => speakdumps3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) فرۆشتنی شت بە نرخێکی کەم، زۆرجار کە وڵاتێکی دیکە"""),
          SentencesRow(
            englishText:
                """They accused the West of dumping out-of-date medicines on developing countries.""",
            kurdishText:
                """وڵاتانی ڕۆژئاوایان تۆمەتبارکرد بە ھەڕاجکردنی دەرمانی ماوەبەسەرچوو بەسەر وڵاتە بەرەو پێشچووەکان.""",
            onPressedBritish: () => speakdumps4("en-GB"),
            onPressedAmerican: () => speakdumps4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (کردار) دانانی کەسێک/شتێک بە کەمتەرخەمی یان ناشرینی"""),
          SentencesRow(
            englishText:
                """Just dump your stuff over there—we'll sort it out later.""",
            kurdishText: """شتەکانت لێرە ھەڵبڕێژە، دواتر ڕێکیان دەخەین.""",
            onPressedBritish: () => speakdumps5("en-GB"),
            onPressedAmerican: () => speakdumps5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (کردار) کۆتایی ھێنان بە پەیوەندیی خۆشەویستی"""),
          SentencesRow(
            englishText: """Did you hear he's dumped his girlfriend?""",
            kurdishText: """بیستت کە لە دۆستە کچەکەی جیابووەتەوە؟""",
            onPressedBritish: () => speakdumps6("en-GB"),
            onPressedAmerican: () => speakdumps6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """If he's so awful, why don't you just dump him?""",
            kurdishText: """ئەگەر ھێندە خراپە، بۆچی دەستی لێ‌بەرنادەیت؟""",
            onPressedBritish: () => speakdumps7("en-GB"),
            onPressedAmerican: () => speakdumps7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ناو) تەنەکەی زباڵە؛ شوێنی فڕێدانی زباڵە"""),
          SentencesRow(
            englishText: """They took the mattress to the dump.""",
            kurdishText: """ڕەیەخەکانیان برد بۆ زباڵەکە.""",
            onPressedBritish: () => speakdumps8("en-GB"),
            onPressedAmerican: () => speakdumps8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Radioactive waste has been found at the dump.""",
            kurdishText: """پاشماوەی تیشکدەر لە زباڵەکە دۆزراوەتەوە.""",
            onPressedBritish: () => speakdumps9("en-GB"),
            onPressedAmerican: () => speakdumps9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٧. (ناو) شوێنێکی پیس"""),
          SentencesRow(
            englishText: """How can you live in this dump?""",
            kurdishText: """چۆن دەتوانیت لەم زباڵەیەدا بژیت؟""",
            onPressedBritish: () => speakdumps10("en-GB"),
            onPressedAmerican: () => speakdumps10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٨. (ناو) کۆگای کاتی بۆ سوپا"""),
          SentencesRow(
            englishText: """Soldiers guarded the ammunition dump carefully.""",
            kurdishText:
                """سەربازان بە وریاییەوە پاسەوانی کۆگای تەقەمەنییەکانیان دەکرد.""",
            onPressedBritish: () => speakdumps11("en-GB"),
            onPressedAmerican: () => speakdumps11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٩. (ناو) پیسایی کردن"""),
          SentencesRow(
            englishText: """The dog went outside to have a dump.""",
            kurdishText: """سەگەکە چووە دەرەوە بۆ گووکردن.""",
            onPressedBritish: () => speakdumps12("en-GB"),
            onPressedAmerican: () => speakdumps12("en-US"),
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
- Verb: dump (derived forms: dumped, dumping, dumps)
1. Throw away as refuse
"No dumping in these woods!"
 
2. [informal] Sever all ties with, usually unceremoniously or irresponsibly (= ditch [informal], chuck [Brit, informal])
"The company dumped him after many years of service"; "She dumped her boyfriend when she fell in love with a rich man";
 
3. [informal] Sell at artificially low prices (= underprice)
 
4. Drop (stuff) in a heap or mass
"The truck dumped the garbage in the street"
 
5. Fall abruptly (= plunge)
"It dumped to the bottom of the well";
 
6. Knock down with force (= deck [informal], coldcock [N. Amer, informal], knock down, floor)
"He dumped his opponent";
 
7. (computing) copy data from memory to disk, or from one storage device to another esp. for backup

- Noun: dump (derived forms: dumps)
1. A piece of land where waste materials are dumped (= garbage dump [N. Amer], trash dump [N. Amer], rubbish dump [Brit], wasteyard, waste-yard, dumpsite [N. Amer], tip [Brit])
 
2. (computing) a copy of the contents of a computer storage device; sometimes used in debugging programs
 
3. A place where supplies can be stored
"an ammunition dump"
 
4. [informal] An unpleasant place (= hole [informal])
 
5. [informal] A coarse term for defecation
"he took a dump";
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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 142;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 5723;

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

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 196;

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

  final String _videoId = 'CvjoXdC-WkM';
  final double _startSeconds = 20;

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

  final String _videoId = 'b6zf5VkuiEQ';
  final double _startSeconds = 404;

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

  final String _videoId = 'dThvyim4tbU';
  final double _startSeconds = 215;

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

  final String _videoId = 'l6FG_0NViM4';
  final double _startSeconds = 103;

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