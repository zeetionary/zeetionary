import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeasy extends StatefulWidget {
  const EnglishEntryeasy({super.key});

  @override
  State<EnglishEntryeasy> createState() => _EnglishEntryeasyState();
}

class _EnglishEntryeasyState extends State<EnglishEntryeasy> {
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
  final String keyword = "easy";
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
    return const EntryTitle(word: "easy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: easy");
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
    return const IPAofEnglish(text: "IpaUK: /ˈiːzi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasy(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("easy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeasy("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈiːzi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasy(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("easy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeasy("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Reaching the summit is no easy task.");
  }

  Future<void> speakeasys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's much easier if you speak the language.");
  }

  Future<void> speakeasys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("It's easy to forget how we lived before the internet.");
  }

  Future<void> speakeasys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The tool is quick and easy to use.");
  }

  Future<void> speakeasys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their house isn't the easiest place to get to.");
  }

  Future<void> speakeasys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are no easy answers in cases like this.");
  }

  Future<void> speakeasys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Doing all that while injured isn't exactly easy.");
  }

  Future<void> speakeasys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plant is relatively easy to identify.");
  }

  Future<void> speakeasys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has not had an easy life.");
  }

  Future<void> speakeasys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Things are getting easier for us.");
  }

  Future<void> speakeasys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("I don't feel easy about letting the kids go out alone.");
  }

  Future<void> speakeasys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've had a very easy day at work.");
  }

  Future<void> speakeasys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll agree to anything for an easy life.");
  }

  Future<void> speakeasys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I felt a bit easier after that.");
  }

  Future<void> speakeasys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's an easy target for their criticisms.");
  }

  Future<void> speakeasys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby fish are easy prey for birds.");
  }

  Future<void> speakeasys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had an easy manner.");
  }

  Future<void> speakeasys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Easy with that chair—one of its legs is loose.");
  }

  Future<void> speakeasys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Easy, girl—you'll knock me over!");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ئاسان، سانا، ساکار، بێ‌زەحمەت، خۆش، بێ‌ئەرک،	ئاسوودە، تەناھـ، بێ‌دەردی‌سەر، بێ‌گێرەوکێشە، نانیگەران، خەیاڵ‌تەخت، بێ‌خەیاڵ، بێ‌خەم، لە ئاسایش‌دا،	مفتە،	(ھەڵس‌وکەوت و ھتد) خۆمانە، سادە،	نەرم، نەرم‌ونیان (خوو و خدە)
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) ئاسان"""),
          SentencesRow(
            englishText: """Reaching the summit is no easy task.""",
            kurdishText: """گەشتن بە لوتکەکە ئەرکێکی ئاسان نییە.""",
            onPressedBritish: () => speakeasys1("en-GB"),
            onPressedAmerican: () => speakeasys1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """It's much easier if you speak the language.""",
                    kurdishText:
                        """زۆر ئاسانتر دەبێت کە قسە بە زمانەکە بکەیت.""",
                    onPressedBritish: () => speakeasys2("en-GB"),
                    onPressedAmerican: () => speakeasys2("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """It's easy to forget how we lived before the internet.""",
                    kurdishText:
                        """ئاسانە بیرمان بچێت چۆن پێش ئینتەرنێت دەژیاین.""",
                    onPressedBritish: () => speakeasys3("en-GB"),
                    onPressedAmerican: () => speakeasys3("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The tool is quick and easy to use.""",
                    kurdishText: """ئامرازەکە خێرا و ئاسانە بۆ بەکارھێنان.""",
                    onPressedBritish: () => speakeasys4("en-GB"),
                    onPressedAmerican: () => speakeasys4("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Their house isn't the easiest place to get to.""",
                    kurdishText:
                        """خانووەکەیان ئاسانترین جێگا نییە کە پێی بگەیت.""",
                    onPressedBritish: () => speakeasys5("en-GB"),
                    onPressedAmerican: () => speakeasys5("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """There are no easy answers in cases like this.""",
                    kurdishText:
                        """ھیچ وەڵامێکی ئاسان نییە لە دۆخێکی وەھادا.""",
                    onPressedBritish: () => speakeasys6("en-GB"),
                    onPressedAmerican: () => speakeasys6("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Doing all that while injured isn't exactly easy.""",
                    kurdishText:
                        """کردنی ھەموو ئەوە لە کاتی برینداریدا تەواو ئاسان نییە.""",
                    onPressedBritish: () => speakeasys7("en-GB"),
                    onPressedAmerican: () => speakeasys7("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The plant is relatively easy to identify.""",
                    kurdishText: """ڕووەکەکە ئاڕادەیەک ئاسانە بناسرێتەوە.""",
                    onPressedBritish: () => speakeasys8("en-GB"),
                    onPressedAmerican: () => speakeasys8("en-US" ""),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵناو) ئاسوودە، حەساوە، و بێ‌خەم"""),
          SentencesRow(
            englishText: """He has not had an easy life.""",
            kurdishText: """ژیانێکی ئاسانی نەبووە.""",
            onPressedBritish: () => speakeasys9("en-GB"),
            onPressedAmerican: () => speakeasys9("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Things are getting easier for us.""",
                    kurdishText: """شتەکان بۆمان ئاسانتر دەبن.""",
                    onPressedBritish: () => speakeasys10("en-GB"),
                    onPressedAmerican: () => speakeasys10("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I don't feel easy about letting the kids go out alone.""",
                    kurdishText:
                        """ھەست بە ئاسوودەیی ناکەم ڕێگا بدەم منداڵەکان بە تەنھا بچنە دەرەوە.""",
                    onPressedBritish: () => speakeasys11("en-GB"),
                    onPressedAmerican: () => speakeasys11("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I've had a very easy day at work.""",
                    kurdishText: """ڕۆژێکی ئاسانم ھەبوو لە کار.""",
                    onPressedBritish: () => speakeasys12("en-GB"),
                    onPressedAmerican: () => speakeasys12("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I'll agree to anything for an easy life.""",
                    kurdishText: """ڕازیم بە ھەر شتێک بۆ ژیانێکی ئاسان.""",
                    onPressedBritish: () => speakeasys13("en-GB"),
                    onPressedAmerican: () => speakeasys13("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I felt a bit easier after that.""",
                    kurdishText:
                        """کەمێک ھەستم بە ئاسوودەیی کرد لە دوای ئەوە.""",
                    onPressedBritish: () => speakeasys14("en-GB"),
                    onPressedAmerican: () => speakeasys14("en-US" ""),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ھاوەڵناو) کە ناتوانیت بەرگری لە خۆت بکەیت"""),
          SentencesRow(
            englishText: """She's an easy target for their criticisms.""",
            kurdishText: """ئامانجێکی ئاسانە بۆ ڕەخنەکانیان.""",
            onPressedBritish: () => speakeasys15("en-GB"),
            onPressedAmerican: () => speakeasys15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The baby fish are easy prey for birds.""",
            kurdishText: """ماسییە گچکەکان نێچیری ئاسانن بۆ باڵندەکان.""",
            onPressedBritish: () => speakeasys16("en-GB"),
            onPressedAmerican: () => speakeasys16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ھاوەڵناو) خۆش و ھاوڕێیانە"""),
          SentencesRow(
            englishText: """He had an easy manner.""",
            kurdishText: """ھەڵسوکەوتی ھاوڕێیانەی ھەبووە.""",
            onPressedBritish: () => speakeasys17("en-GB"),
            onPressedAmerican: () => speakeasys17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ھاوەڵکار) بۆ گوتن بە کەسێک کە وریا بێت لەکاتی کردنی شتێک"""),
          SentencesRow(
            englishText: """Easy with that chair—one of its legs is loose.""",
            kurdishText: """ئاگاداری ئەو کورسییە بە ـ یەکێک لە لاقەکانی شلە.""",
            onPressedBritish: () => speakeasys18("en-GB"),
            onPressedAmerican: () => speakeasys18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Easy, girl—you'll knock me over!""",
            kurdishText: """بەئاگا بە، کچێ ـ دەمکەوێنیت.""",
            onPressedBritish: () => speakeasys19("en-GB"),
            onPressedAmerican: () => speakeasys19("en-US"),
          ),
          // easys2200easyseasys
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
- Adjective: easy (derived forms: easiest, easier)
1. Posing no difficulty; requiring little effort
"an easy job"; "an easy problem"; "an easy victory"; "the house is easy to heat"; "satisfied with easy answers"; "took the easy way out of his dilemma"
 
2. Free from worry or anxiety
"knowing that I had done my best, my mind was easy"; "an easy good-natured manner"
 
3. Not hurried or forced (= easygoing, leisurely, easy-going)
"an easy walk around the block";
 
4. Affording pleasure
"easy good looks"
 
5. Having little impact (= gentle, soft)
"an easy pat on the shoulder";
 
6. Readily exploited or tricked
"an easy victim"; "an easy mark"
 
7. In fortunate circumstances financially; moderately rich (= comfortable, prosperous, well-fixed, well-heeled, well-off, well-situated, well-to-do)
"easy living";
 
8. Marked by moderate steepness (= gentle)
"an easy climb";
 
9. Affording comfort
"soft light that was easy on the eyes"
 
10. Casual and unrestrained in sexual behaviour (= loose, promiscuous, sluttish [informal], wanton, tarty [informal], slutty [informal])
"her easy virtue";
 
11. (economics) less in demand and therefore readily obtainable
"commodities are easy this quarter"
 
12. (economics) obtained with little effort or sacrifice, often obtained illegally
"easy money"
 
13. Not strict (= lenient)
"an easy teacher"; "easy standards"; "an easy penalty";

- Adverb: easy 
1. With ease ('easy' is sometimes used informally for 'easily') (= easily)
"success came too easy";
 
2. With low speed (= slowly, slow, tardily)
"go easy here--the road is slippery";
 
3. In a relaxed manner; or without hardship (= soft)
"the judge went easy on the young defendant"; "just wanted to take it easy";
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

  final String _videoId = 'DPZzrlFCD_I';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'lYu1ysDULwA';
  final double _startSeconds = 964;

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

  final String _videoId = '4itx6mXEJ6c';
  final double _startSeconds = 796;

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

  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 1198;

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

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 428;

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

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 123;

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

  final String _videoId = 'tsE1rMH18Tk';
  final double _startSeconds = 228;

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