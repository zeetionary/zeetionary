import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydivision extends StatefulWidget {
  const EnglishEntrydivision({super.key});

  @override
  State<EnglishEntrydivision> createState() => _EnglishEntrydivisionState();
}

class _EnglishEntrydivisionState extends State<EnglishEntrydivision> {
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
  final String keyword = "division";
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
    return const EntryTitle(word: "division");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: division");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈvɪʒn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivision(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("division");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdivision("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈvɪʒn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivision(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("division");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdivision("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivisions1(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "he organism begins as a single cell and grows by cell division.");
  }

  Future<void> speakdivisions2(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We need to ensure a fair division of time and resources.");
  }

  Future<void> speakdivisions3(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His will detailed his assets and gave instructions for their division among his children.");
  }

  Future<void> speakdivisions4(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She calculated the division by three in her head, quickly determining the answer.");
  }

  Future<void> speakdivisions5(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We choose peace over hatred and division.");
  }

  Future<void> speakdivisions6(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are deep divisions in the party over the war.");
  }

  Future<void> speakdivisions7(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her comments appeared to have deepened divisions between the two countries.");
  }

  Future<void> speakdivisions8(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has tried to sow division among the people.");
  }

  Future<void> speakdivisions9(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company's sales division is going to be restructured.");
  }

  Future<void> speakdivisions10(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She works in the marketing division.");
  }

  Future<void> speakdivisions11(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company recently launched its publishing division.");
  }

  Future<void> speakdivisions12(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Nagpur is the most eastern division in the state.");
  }

  Future<void> speakdivisions13(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The club will finish second in Division One.");
  }

  Future<void> speakdivisions14(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The commander of the fourth infantry division defied orders.");
  }

  Future<void> speakdivisions15(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A hedge forms the division between their land and ours.");
  }

  Future<void> speakdivisions16(String languageCode) async {
    // DOPSUM: CHANGE speakdivision
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sometimes there is no simple division between good and evil.");
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
کوردی: دابەشاندن، دابەش‌کردن، بەش‌کردن، پارڤەکر(د)ن، دەستە(دەستە)کردن، پۆلاندن، بەشاندن، بەش‌بەش‌کردن، کەرت(کەرت)کردن، قاش‌کردن،	کەرت، بەش، پشک، پار،	کێشە، دژایەتی، جیاوازی، ناتەبایی، ناسازی، من‌وتۆیی، کەلێن، کەلەبەر، دووبەرەکایەتی،	(بەتایبەت لە پارلێمانی بریتانیادا) دەنگ‌دان،	سنوور، ھێڵی جیاکردنەوە، جیاکار،	(سەربازی) لەشکر، سپا
"""),
          const DefinitionKurdish(text: "١. (ناو) پڕۆسەی دابەشکردن"),
          SentencesRow(
            englishText:
                "he organism begins as a single cell and grows by cell division.",
            kurdishText:
                "گیانلەبەرەکە بە یەک خانە دەست پێدەکات و بە دابەشبوونی خانە گەشي دەکات.", // division
            onPressedBritish: () => speakdivisions1("en-GB"),
            onPressedAmerican: () => speakdivisions1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We need to ensure a fair division of time and resources.",
            kurdishText:
                "دەبێت دڵنیایی بکەین لە دابەشکردنی یەکسانی کات و سەرچاوەکان.",
            onPressedBritish: () => speakdivisions2("en-GB"),
            onPressedAmerican: () => speakdivisions2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "His will detailed his assets and gave instructions for their division among his children.",
            kurdishText:
                "وەسیەتەکەی سامانەکەی دەخستەڕوو و ڕێنمایی دەدا بۆ دابەشکردنیان لە نێوان کوڕەکانیدا.",
            onPressedBritish: () => speakdivisions3("en-GB"),
            onPressedAmerican: () => speakdivisions3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) پڕۆسەی دابەشکردنی ژمارە"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "She calculated the division by three in her head, quickly determining the answer.",
            kurdishText:
                "لە مێشکیدا بەسەر سێدا دابەشی کرد و زوو وەڵامەکەی دۆزییەوە.",
            onPressedBritish: () => speakdivisions4("en-GB"),
            onPressedAmerican: () => speakdivisions4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) جیاوازی یان ناکۆکی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "We choose peace over hatred and division.",
            kurdishText: "ئاشتیمان ھەڵبژارد بەسەر ڕق و دووبەرەکایەتی.",
            onPressedBritish: () => speakdivisions5("en-GB"),
            onPressedAmerican: () => speakdivisions5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There are deep divisions in the party over the war.",
            kurdishText: "دووبەرەکی قووڵ لە پارتکەدا ھەیە دژ بە جەنگەکە.",
            onPressedBritish: () => speakdivisions6("en-GB"),
            onPressedAmerican: () => speakdivisions6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her comments appeared to have deepened divisions between the two countries.",
            kurdishText:
                "لێدوانەکانی وادەرکەوت کە جیاوازی نێوان دوو وڵاتەکە قووڵ بکاتەوە.",
            onPressedBritish: () => speakdivisions7("en-GB"),
            onPressedAmerican: () => speakdivisions7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He has tried to sow division among the people.",
            kurdishText: "ھەوڵیداوە دووبەرەکی درووست بکات لەناو خەڵکەکەدا.",
            onPressedBritish: () => speakdivisions8("en-GB"),
            onPressedAmerican: () => speakdivisions8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) بەشێکی گەورە یان گرنگی دامەزراوەیەک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The company's sales division is going to be restructured.",
            kurdishText: "بەشی فرۆشی کۆمپانیاکە دووبارە ڕێکدەخرێتەوە.",
            onPressedBritish: () => speakdivisions9("en-GB"),
            onPressedAmerican: () => speakdivisions9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She works in the marketing division.",
            kurdishText: "لە لقی بەبازاڕکردن کار دەکات.",
            onPressedBritish: () => speakdivisions10("en-GB"),
            onPressedAmerican: () => speakdivisions10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The company recently launched its publishing division.",
            kurdishText: "کۆمپانیاکە تازەگی بەشی بڵاوکردنەوەی کردەوە.",
            onPressedBritish: () => speakdivisions11("en-GB"),
            onPressedAmerican: () => speakdivisions11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) بەشێکی شارێک یان وڵاتێک کە بە بەشێکی جیاواز دادەنرێت بۆ مەبەستی بەڕێوەبردن"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Nagpur is the most eastern division in the state.",
            kurdishText: "ناگپوور ڕۆژھەڵاتترین بەشی ویلایەتەکەیە.",
            onPressedBritish: () => speakdivisions12("en-GB"),
            onPressedAmerican: () => speakdivisions12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) گرووپێک لە ژمارەیەک تیم یان وەرزشکار کە دژ بە یەکدی ڕکابەری دەکەن"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The club will finish second in Division One.",
            kurdishText: "یانەکە دووەم دەبێت لە کۆمەڵەی یەک.",
            onPressedBritish: () => speakdivisions13("en-GB"),
            onPressedAmerican: () => speakdivisions13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) یەکەیەکی سوپا"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The commander of the fourth infantry division defied orders.",
            kurdishText:
                "فەرمانداری یەکەی چوارەمی پیادە سەرپێچی بڕیارەکانی کرد.",
            onPressedBritish: () => speakdivisions14("en-GB"),
            onPressedAmerican: () => speakdivisions14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) ھێڵێک کە شتێک دابەش دەکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "A hedge forms the division between their land and ours.",
            kurdishText: "پەرژینێکی دەوەن زەوییەکەیان لە ھی ئێمە جیادەکاتەوە.",
            onPressedBritish: () => speakdivisions15("en-GB"),
            onPressedAmerican: () => speakdivisions15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Sometimes there is no simple division between good and evil.",
            kurdishText:
                "ھەندێک کات ھیچ جیاکەرەوەیەکی سادە نییە لە نێوان باش و خراپدا.",
            onPressedBritish: () => speakdivisions16("en-GB"),
            onPressedAmerican: () => speakdivisions16("en-US"),
          ),
          // divisions1700"),
          // speakdivisions17
          // divisions17
          // divisions1800"),
          // speakdivisions18
          // divisions18
          // divisions1900"),
          // speakdivisions19
          // divisions19
          // divisions_2000"),
          // speakdivisions20
          // divisions20
          // divisions2100"),
          // speakdivisions21
          // divisions21
          // divisions2200"),
          // speakdivisions22
          // divisions22("en-US"),
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
- Noun: division (derived forms: divisions)
1. An army unit large enough to sustain combat
"two infantry divisions were held in reserve"
 
2. One of the portions into which something is regarded as divided and which together constitute a whole (= part, section)
"the BBC's engineering division";
 
3. The act or process of dividing
 
4. An administrative unit in government or business
 
5. Discord that splits a group (= variance)
 
6. A league ranked by quality (= class)
"Princeton is in the NCAA Division 1-AA";
 
7. (biology) a group of organisms forming a subdivision of a larger category
 
8. (botany) taxonomic unit of plants corresponding to a phylum
 
9. A unit of the United States Air Force usually comprising two or more wings (= air division)
 
10. A group of ships of similar type (= naval division)
 
11. An arithmetic operation that is the inverse of multiplication; the quotient of two numbers is computed
 
12. The act of dividing or partitioning; separation by the creation of a boundary that divides or keeps apart (= partition, partitioning, segmentation, sectionalization, sectionalisation [Brit])
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

  final String _videoId = 'LAOoF2gyQaA';
  final double _startSeconds = 41;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1185;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 120;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '5ljluGA4dQU';
  final double _startSeconds = 817;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'HxRUuGqqMG4';
  final double _startSeconds = 438;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'Cln0J87vulU';
  final double _startSeconds = 472;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'LJNtfyq3TDE';
  final double _startSeconds = 499;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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