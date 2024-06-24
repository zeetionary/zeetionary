import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeffort extends StatefulWidget {
  const EnglishEntryeffort({super.key});

  @override
  State<EnglishEntryeffort> createState() => _EnglishEntryeffortState();
}

class _EnglishEntryeffortState extends State<EnglishEntryeffort> {
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
  final String keyword = "effort";
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
    return const EntryTitle(word: "effort");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: effort");
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
    return const IPAofEnglish(text: "IpaUK: /ˈefət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeffort(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("effort");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeffort("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ˈefərt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeffort(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("effort");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeffort("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakefforts1(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The project was a team effort.");
  }

  Future<void> speakefforts2(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I didn't really feel like going out, but I am glad I made the effort.");
  }

  Future<void> speakefforts3(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please make an effort to be on time.");
  }

  Future<void> speakefforts4(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We need to make a concerted effort to finish on time.");
  }

  Future<void> speakefforts5(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You need to focus your efforts on critical areas first.");
  }

  Future<void> speakefforts6(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm glad to hear that many of you support our efforts.");
  }

  Future<void> speakefforts7(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has laid off 150 workers in an effort to save money.");
  }

  Future<void> speakefforts8(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Despite our best efforts, we didn't manage to win the game.");
  }

  Future<void> speakefforts9(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He failed in his efforts to give up smoking.");
  }

  Future<void> speakefforts10(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You should put more effort into your work.");
  }

  Future<void> speakefforts11(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A great deal of time and effort has gone into making this event a success.");
  }

  Future<void> speakefforts12(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's a long climb to the top, but well worth the effort.");
  }

  Future<void> speakefforts13(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The task required almost no effort.");
  }

  Future<void> speakefforts14(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The United Nations’ peacekeeping effort reduced violence in the region.");
  }

  Future<void> speakefforts15(String languageCode) async {
    // DOPSUM: CHANGE speakeffort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm afraid this essay is a poor effort.");
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
کوردی: حەول، ئەرک، تەقەلا، ھەوڵ، داکۆکی، تێکۆشان، کۆشە، کۆششت، پەلە، خەبات، بزاڤ، ئەخت‌وچار، کردوکۆش، زەحمەت، ڕەنج، کاری سەخت، کاری گران،	ئاکامی تێکۆشان، بەرھەم، ئەنجامی حەول و تەقەلا
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) ھەوڵێک بۆ کردنی شتێک، بەتایبەتی کە کردنی سەختە"""),
          SentencesRow(
            englishText: """The project was a team effort.""",
            kurdishText: """پڕۆژەکە ھەوڵی تیمێک بوو.""", // effort
            onPressedBritish: () => speakefforts1("en-GB"),
            onPressedAmerican: () => speakefforts1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I didn't really feel like going out, but I am glad I made the effort.""",
            kurdishText:
                """لە ڕاستیدا حەزم بە چوونە دەرەوە نەبوو، بەڵام خۆشحاڵم کە ھەوڵم دا.""",
            onPressedBritish: () => speakefforts2("en-GB"),
            onPressedAmerican: () => speakefforts2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Please make an effort to be on time.""",
                    kurdishText: """تکایە ھەوڵ بدە لە کاتی خۆیدا بە.""",
                    onPressedBritish: () => speakefforts3("en-GB"),
                    onPressedAmerican: () => speakefforts3("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """We need to make a concerted effort to finish on time.""",
                    kurdishText:
                        """دەبێت ھەوڵێکی ھاوبەش بدەین کە لە کاتی خۆیدا تەواوی بکەین.""",
                    onPressedBritish: () => speakefforts4("en-GB"),
                    onPressedAmerican: () => speakefforts4("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """You need to focus your efforts on critical areas first.""",
                    kurdishText:
                        """دەبێت سەرەتا سەرنجی ھەوڵەکانت بخەیتە سەر لایەنە گرنگەکان.""",
                    onPressedBritish: () => speakefforts5("en-GB"),
                    onPressedAmerican: () => speakefforts5("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I'm glad to hear that many of you support our efforts.""",
                    kurdishText:
                        """خۆشحاڵم کە دەبیستم زۆرێکتان پاڵپشتی ھەوڵەکانمانن.""",
                    onPressedBritish: () => speakefforts6("en-GB"),
                    onPressedAmerican: () => speakefforts6("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The company has laid off 150 workers in an effort to save money.""",
                    kurdishText:
                        """کۆمپانیاکە ١٥٠ کرێکاری دەرکردووە لە ھەوڵێکدا بۆ گەڕاندنەوەی پارە.""",
                    onPressedBritish: () => speakefforts7("en-GB"),
                    onPressedAmerican: () => speakefforts7("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Despite our best efforts, we didn't manage to win the game.""",
                    kurdishText:
                        """سەرەڕای باشترین ھەوڵەکانمان، نەمانتوانی یارییەکە ببەینەوە.""",
                    onPressedBritish: () => speakefforts8("en-GB"),
                    onPressedAmerican: () => speakefforts8("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He failed in his efforts to give up smoking.""",
                    kurdishText:
                        """لە ھەوڵەکانی بۆ وازھێنان لە جگەرەکێشان شکستی ھێنا.""",
                    onPressedBritish: () => speakefforts9("en-GB"),
                    onPressedAmerican: () => speakefforts9("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) وزەی جەستەیی یان دەروونی کە پێویستە بۆ کردنی شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """You should put more effort into your work.""",
            kurdishText: """دەبێت وزەی زیاتر بدەیت بە کارەکە.""",
            onPressedBritish: () => speakefforts10("en-GB"),
            onPressedAmerican: () => speakefforts10("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """A great deal of time and effort has gone into making this event a success.""",
            kurdishText:
                """ھەوڵێکی زۆری کات و وزە دراوە بۆ سەرخستنی ئەم بۆنەیە.""",
            onPressedBritish: () => speakefforts11("en-GB"),
            onPressedAmerican: () => speakefforts11("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's a long climb to the top, but well worth the effort.""",
            kurdishText:
                """تا سەرەوە سەرکەوتنێکی درێژە، بەڵام شایەنی ھەوڵەکەیە.""",
            onPressedBritish: () => speakefforts12("en-GB"),
            onPressedAmerican: () => speakefforts12("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The task required almost no effort.""",
            kurdishText: """ئەرکەکە بەنزیکەیی پێویستی بە ھیچ وزەیەک نەبوو.""",
            onPressedBritish: () => speakefforts13("en-GB"),
            onPressedAmerican: () => speakefforts13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ناو) چالاکی کۆمەڵە کەسێک بۆ کردنی شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The United Nations’ peacekeeping effort reduced violence in the region.""",
            kurdishText:
                """ھەوڵی ئاشتی‌پارێزی نەتەوە یەکگرتووەکان توندوتیژی لە ھەرێمەکە کەمکردەوە.""",
            onPressedBritish: () => speakefforts14("en-GB"),
            onPressedAmerican: () => speakefforts14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) ئەنجامی ھەوڵی کردنی شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """I'm afraid this essay is a poor effort.""",
            kurdishText: """بەداخەوەم کە ئەم داڕشتنە ئەنجامێکی خراپە.""",
            onPressedBritish: () => speakefforts15("en-GB"),
            onPressedAmerican: () => speakefforts15("en-US"),
          ),
          // efforts1600efforts16
          // speakefforts16
          // speakefforts1700efforts17
          // speakefforts17
          // speakefforts1800efforts18
          // speakefforts18
          // speakefforts1900efforts19
          // speakefforts19
          // speakefforts_2000efforts20
          // speakefforts20
          // speakefforts2100efforts21
          // speakefforts21
          // speakefforts2200efforts22
          // speakefforts22("en-US"""),
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
- Noun: effort (derived forms: efforts)
1. Earnest and conscientious activity intended to do or accomplish something (= attempt, endeavor [US], endeavour [Brit, Cdn], try)
"made an effort to cover all the reading material";
 
2. Use of physical or mental energy; hard work (= elbow grease, exertion, travail [literary], sweat [informal])
"he got an A for effort";
 
3. A notable achievement (= feat, exploit)
"the book was her finest effort";
 
4. A series of actions advancing a principle or tending toward a particular end (= campaign, cause, crusade, drive, movement)
"contributed to the war effort";
 
5. Long and tiring mental or physical work, travel, etc. (= slog)
"writing the paper was a real effort";
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 236;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 293;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 548;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 753;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 67;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 520;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'bXCOI_LQ_0o';
  final double _startSeconds = 118;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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