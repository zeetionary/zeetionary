import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryelement extends StatefulWidget {
  const EnglishEntryelement({super.key});

  @override
  State<EnglishEntryelement> createState() => _EnglishEntryelementState();
}

class _EnglishEntryelementState extends State<EnglishEntryelement> {
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
  final String keyword = "element";
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
    return const EntryTitle(word: "element");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: element");
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
    return const IPAofEnglish(text: "IpaUK: /ˈelɪmənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelement(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("element");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakelement("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈelɪmənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelement(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("element");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakelement("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelements1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are three important elements to consider.");
  }

  Future<void> speakelements2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Cost was a key element in our decision.");
  }

  Future<void> speakelements3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The architects were instructed to incorporate elements from the older building.");
  }

  Future<void> speakelements4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Customer relations is an important element of the job.");
  }

  Future<void> speakelements5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Practical work will form a major element of the syllabus.");
  }

  Future<void> speakelements6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These rumours do contain an element of truth.");
  }

  Future<void> speakelements7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All outdoor activities carry an element of risk.");
  }

  Future<void> speakelements8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("There appears to be an element of truth in his story.");
  }

  Future<void> speakelements9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("There is a considerable element of danger in her job.");
  }

  Future<void> speakelements10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Different atoms of the same element are called isotopes.");
  }

  Future<void> speakelements11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All chemical substances, whether elements, compounds or mixtures, are made up of three types of particles.");
  }

  Future<void> speakelements12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Each element was thought to balance the natural world.");
  }

  Future<void> speakelements13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The place was completely exposed to the elements.");
  }

  Future<void> speakelements14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Are we going to brave the elements and go for a walk?");
  }

  Future<void> speakelements15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He taught me the elements of map-reading.");
  }

  Future<void> speakelements16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These ideas are not just the province of a fringe element in the party.");
  }

  Future<void> speakelements17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Water is a fish's natural element.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: توخم، ڕەگەز،	بنچینە، بنگەھـ، بنەما، ماک، بنەڕەت، بەشی سەرەکی، بەش، پار، پارچە، پشک،	کەمێ، نەختێ، بڕێ، نیسکێ، چکێ،	تایبەتمەندی،	ئێلێمێنت (کەل‌وپەلی ئێلیکتریکی)،	بوار، مەڵبەندی سروشتی، ھێزەکانی سروشت، ھەریەک لە چوارماکە (ئاو، ئاور، خاک و ھەوا)، سەرەتاکان، بنەماکان، بنچینەکان،	ئاووھەوا، ھەوا (ناخۆش)،	گروپ، کۆمەڵ، دەستە
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) بەشێکی گرنگی شتێک؛ یەکێک لەو بەشانەی شتێک لێی پێکدێت"""),
          SentencesRow(
            englishText: """There are three important elements to consider.""",
            kurdishText: """سێ لایەنی گرنگ ھەیە بۆ لەبەرچاوگرتن.""",
            onPressedBritish: () => speakelements1("en-GB"),
            onPressedAmerican: () => speakelements1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Cost was a key element in our decision.""",
            kurdishText: """نرخ بەشێکی گرنگی بڕیارەکەمان بوو.""",
            onPressedBritish: () => speakelements2("en-GB"),
            onPressedAmerican: () => speakelements2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The architects were instructed to incorporate elements from the older building.""",
            kurdishText:
                """ئەندازیارەکان ڕێنوێنی کران کە توخمەکانی بینا کۆنەکان لەخۆبگرن.""",
            onPressedBritish: () => speakelements3("en-GB"),
            onPressedAmerican: () => speakelements3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Customer relations is an important element of the job.""",
            kurdishText: """پەیوەندی لەگەڵ کڕیاردا لایەنێکی گرنگی کارەکەیە.""",
            onPressedBritish: () => speakelements4("en-GB"),
            onPressedAmerican: () => speakelements4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Practical work will form a major element of the syllabus.""",
            kurdishText:
                """کاری کرداری لایەنێکی گرنگی پڕۆگرامی خوێندنەکە پێکدێنێت.""",
            onPressedBritish: () => speakelements5("en-GB"),
            onPressedAmerican: () => speakelements5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) ڕێژەیەکی کەم"""),
          SentencesRow(
            englishText: """These rumours do contain an element of truth.""",
            kurdishText: """ئەم دەنگۆیانە یەک نەخت ڕاستییان تێدا نییە.""",
            onPressedBritish: () => speakelements6("en-GB"),
            onPressedAmerican: () => speakelements6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """All outdoor activities carry an element of risk.""",
            kurdishText: """ھەموو کارەکانی دەرەوە کەمێک مەترسییان تێدایە.""",
            onPressedBritish: () => speakelements7("en-GB"),
            onPressedAmerican: () => speakelements7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """There appears to be an element of truth in his story.""",
            kurdishText: """وا دەردەکەوێت کەمێک ڕاستی لەم چیرۆکەدا ھەبێت.""",
            onPressedBritish: () => speakelements8("en-GB"),
            onPressedAmerican: () => speakelements8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """There is a considerable element of danger in her job.""",
            kurdishText: """ڕێژەی بەرچاوی مەترسی لە کارەکەیدا ھەیە.""",
            onPressedBritish: () => speakelements9("en-GB"),
            onPressedAmerican: () => speakelements9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ناو) توخمی کیمیایی"""),
          SentencesRow(
            englishText:
                """Different atoms of the same element are called isotopes.""",
            kurdishText: """ئەتۆمی جیاوازی ھەمان توخم پێی دوگەترێت ئایزۆتۆپ.""",
            onPressedBritish: () => speakelements10("en-GB"),
            onPressedAmerican: () => speakelements10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """All chemical substances, whether elements, compounds or mixtures, are made up of three types of particles.""",
            kurdishText:
                """ھەموو مادەیەکی کیمیایی، چی توخمەکان، داڕشتەکان یان تێکەڵەکان، لە سێ تەنۆلکە پێکھاتوون.""",
            onPressedBritish: () => speakelements11("en-GB"),
            onPressedAmerican: () => speakelements11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ناو) یەکێک لە چوار مادەی خاک، ھەوا، ئاگر یان ئاو کە خەڵکی باوەڕیان وابوو ھەموو شتێکی دیکەی لێ درووست بووە"""),
          SentencesRow(
            englishText:
                """Each element was thought to balance the natural world.""",
            kurdishText:
                """ھەر ھێزێک باوەڕ وابوو کە ھاوسەنگی جیھانی سرووشتی ڕادەگرێت.""",
            onPressedBritish: () => speakelements12("en-GB"),
            onPressedAmerican: () => speakelements12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ناو) کەشووھەوا، بەتایبەتی کەشووھەوای خراپ"""),
          SentencesRow(
            englishText:
                """The place was completely exposed to the elements.""",
            kurdishText: """شوێنەکە بە تەواوی بەرکەوتە بە کەشووھەوا بوو.""",
            onPressedBritish: () => speakelements13("en-GB"),
            onPressedAmerican: () => speakelements13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Are we going to brave the elements and go for a walk?""",
            kurdishText: """زاڵ ببین بەسەر کەشووھەواکەدا و بچینە پیاسەیەک.""",
            onPressedBritish: () => speakelements14("en-GB"),
            onPressedAmerican: () => speakelements14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ناو) بنچینە سەرەتاییەکانی بابەتێک کە دەبێت سەرەتا فێریان بیت"""),
          SentencesRow(
            englishText: """He taught me the elements of map-reading.""",
            kurdishText: """بنچینەکانی خوێندنەوەی نەخشەی فێرکردم.""",
            onPressedBritish: () => speakelements15("en-GB"),
            onPressedAmerican: () => speakelements15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (ناو) گرووپیک خەڵک کە بەشێک لە گرووپیکی گەورەتر پێکدێنن"""),
          SentencesRow(
            englishText:
                """These ideas are not just the province of a fringe element in the party.""",
            kurdishText:
                """ئەم دیدانە تەنھا ئەوە نییە کاری گرووپێکی کەمینەی پارتەکە بێت.""",
            onPressedBritish: () => speakelements16("en-GB"),
            onPressedAmerican: () => speakelements16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (ناو) ژینگەیەکی سرووشتی یان گونجاو"""),
          SentencesRow(
            englishText: """Water is a fish's natural element.""",
            kurdishText: """ئاو ژینگەی سرووشتی ماسییە.""",
            onPressedBritish: () => speakelements17("en-GB"),
            onPressedAmerican: () => speakelements17("en-US"),
          ),
          // speakelements
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
- Noun: element (derived forms: elements)
1. An abstract part of something (= component, constituent, factor, ingredient)
"the grammatical elements of a sentence";
 
2. An artifact that is one of the individual parts of which a composite entity is made up; especially a part that can be separated from or attached to a system (= component, constituent)
"a component or constituent element of a system";
 
3. Any of the more than 100 known substances (of which 92 occur naturally) that cannot be separated into simpler substances and that singly or in combination constitute all matter (= chemical element)
 
4. The most favourable environment for a plant or animal
"water is the element of fishes"
 
5. One of four substances thought in ancient and medieval cosmology to constitute the physical universe
"the alchemists believed that there were four elements"
 
6. The situation in which you are happiest and most effective
"in your element"
 
7. A straight line that generates a cylinder or cone
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

  final String _videoId = 'TJh7KPABk6I';
  final double _startSeconds = 192;

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

  final String _videoId = '_tLA0JV7IWg';
  final double _startSeconds = 18;

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

  final String _videoId = 'hGK_5n81drs';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'c5WKpFZHYPk';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'i2XU8hSaYY0';
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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 799;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 620;

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