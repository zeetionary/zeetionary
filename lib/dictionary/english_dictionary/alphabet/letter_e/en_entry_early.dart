import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryearly extends StatefulWidget {
  const EnglishEntryearly({super.key});

  @override
  State<EnglishEntryearly> createState() => _EnglishEntryearlyState();
}

class _EnglishEntryearlyState extends State<EnglishEntryearly> {
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
  final String keyword = "early";
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
    return const EntryTitle(word: "early");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: early");
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
    return const IPAofEnglish(text: "IpaUK: /ˈɜːli/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearly(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("early");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakearly("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ˈɜːrli/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearly(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("early");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakearly("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakearlys1(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The project is still in the early stages.");
  }

  Future<void> speakearlys2(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is too early to tell how badly the economy will be affected.");
  }

  Future<void> speakearlys3(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's in his early twenties.");
  }

  Future<void> speakearlys4(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The ruling overturned the court’s earlier decision.");
  }

  Future<void> speakearlys5(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The earliest description of this species dates from 1703.");
  }

  Future<void> speakearlys6(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These discoveries were made at a early date.");
  }

  Future<void> speakearlys7(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("An earlier version of this article appeared online.");
  }

  Future<void> speakearlys8(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're early! I wasn't expecting you till seven.");
  }

  Future<void> speakearlys9(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus was ten minutes early.");
  }

  Future<void> speakearlys10(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He learnt to play the piano at an early age.");
  }

  Future<void> speakearlys11(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm sorry I'm a bit early.");
  }

  Future<void> speakearlys12(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Victoria has decided to take early retirement.");
  }

  Future<void> speakearlys13(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The gallery has an unrivalled collection of early twentieth-century art.");
  }

  Future<void> speakearlys14(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The main construction of the fort belongs to the early medieval period.");
  }

  Future<void> speakearlys15(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We arrived early the next day.");
  }

  Future<void> speakearlys16(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We meet the hero quite early in the film.");
  }

  Future<void> speakearlys17(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He started writing music as early as 1989.");
  }

  Future<void> speakearlys18(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The best rooms go to those who book earliest.");
  }

  Future<void> speakearlys19(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Why don't you go home early if you're not feeling well?");
  }

  Future<void> speakearlys20(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Get there early to make sure you get good seats.");
  }

  Future<void> speakearlys21(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus came five minutes early.");
  }

  Future<void> speakearlys22(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I woke up early this morning.");
  }

  Future<void> speakearlys23(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She went to bed early.");
  }

  Future<void> speakearlys24(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I arrived a few minutes early for my interview.");
  }

  Future<void> speakearlys25(String languageCode) async {
    // DOPSUM: CHANGE speakearly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had seen him earlier in the day.");
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
کوردی: زوو، پێش‌وەخت، زووتر لەوەختی خۆی، زووتر،	لەسەرەتادا،	سەرەتاکان، دەسپێک، ھەوەڵین، ھەوەڵ‌جار، یەکەمین، سەرەتا،	کۆن، باستانی، زوو،	بەزوویی، دەسبەجێ (وەڵام)
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) سەرەتای شتێک"""),
          SentencesRow(
            englishText: """The project is still in the early stages.""",
            kurdishText: """پڕۆژەکە ھێشتا لە قۆناغەکانی سەرەتایەتی.""", // early
            onPressedBritish: () => speakearlys1("en-GB"),
            onPressedAmerican: () => speakearlys1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It is too early to tell how badly the economy will be affected.""",
            kurdishText:
                """زۆر زووە بۆ گوتنی ئەوەی چەندە خراپ ئابووری کاریگەر دەبێت.""",
            onPressedBritish: () => speakearlys2("en-GB"),
            onPressedAmerican: () => speakearlys2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """He's in his early twenties.""",
                    kurdishText: """لە سەرەتای بیستەکانیەتی.""",
                    onPressedBritish: () => speakearlys3("en-GB"),
                    onPressedAmerican: () => speakearlys3("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The ruling overturned the court’s earlier decision.""",
                    kurdishText:
                        """بڕیارەکە بڕیاری سەرەتای دادگاکەی ھەڵوەشاندەوە.""",
                    onPressedBritish: () => speakearlys4("en-GB"),
                    onPressedAmerican: () => speakearlys4("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The earliest description of this species dates from 1703.""",
                    kurdishText:
                        """سەرەتاییترین ناساندنی ئەم جۆرە بۆ ١٧٠٣ دەگەڕێتەوە.""",
                    onPressedBritish: () => speakearlys5("en-GB"),
                    onPressedAmerican: () => speakearlys5("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """These discoveries were made at a early date.""",
                    kurdishText:
                        """ئەم دۆزینەوانە لە ڕێکەوتێکی سەرەتایی کران.""",
                    onPressedBritish: () => speakearlys6("en-GB"),
                    onPressedAmerican: () => speakearlys6("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """An earlier version of this article appeared online.""",
                    kurdishText:
                        """وەشانێکی کۆنتری ئەم وتارە بۆ ئۆنلاین دەرکەوت.""",
                    onPressedBritish: () => speakearlys7("en-GB"),
                    onPressedAmerican: () => speakearlys7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵناو) گەشتن یان کردن لە پێش کاتی پێشبینیکراو"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """You're early! I wasn't expecting you till seven.""",
            kurdishText: """زوو ھاتوویت! تاوەکو حەوت چاوەڕێم نەدەکردی.""",
            onPressedBritish: () => speakearlys8("en-GB"),
            onPressedAmerican: () => speakearlys8("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The bus was ten minutes early.""",
            kurdishText: """پاسەکە ١٠ خولەک زوو ھات.""",
            onPressedBritish: () => speakearlys9("en-GB"),
            onPressedAmerican: () => speakearlys9("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He learnt to play the piano at an early age.""",
            kurdishText: """فێری لێدانی پیانۆ بوو لە تەمەنێکی سەرەتادا.""",
            onPressedBritish: () => speakearlys10("en-GB"),
            onPressedAmerican: () => speakearlys10("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I'm sorry I'm a bit early.""",
            kurdishText: """ببوورە کەمێک زوو ھاتووم.""",
            onPressedBritish: () => speakearlys11("en-GB"),
            onPressedAmerican: () => speakearlys11("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Victoria has decided to take early retirement.""",
            kurdishText: """ڤیکتۆریا بڕیاری داوە کە زوو خانەنشین ببێت.""",
            onPressedBritish: () => speakearlys12("en-GB"),
            onPressedAmerican: () => speakearlys12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ھاوەڵناو) سەر بە سەرەتاکانی مێژوو یان بزووتنەوەیەکی کەلتووری"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The gallery has an unrivalled collection of early twentieth-century art.""",
            kurdishText:
                """پێشانگاکە کۆکراوەیەکی بێ‌وێنەی ھونەری سەرەتای سەدەی بیستی ھەیە.""",
            onPressedBritish: () => speakearlys13("en-GB"),
            onPressedAmerican: () => speakearlys13("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The main construction of the fort belongs to the early medieval period.""",
            kurdishText:
                """درووستکردنی یەکەمی قەڵاکە بۆ ماوەی سەرەتای سەردەمی ناوەڕاست دەگەڕێتەوە.""",
            onPressedBritish: () => speakearlys14("en-GB"),
            onPressedAmerican: () => speakearlys14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ھاوەڵکار) لە سەرەتای شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """We arrived early the next day.""",
            kurdishText: """ڕۆژی دواتر زوو گەشتین.""",
            onPressedBritish: () => speakearlys15("en-GB"),
            onPressedAmerican: () => speakearlys15("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We meet the hero quite early in the film.""",
            kurdishText: """پالەوانەکە لە سەرەتای فیلمەکە دەبینین.""",
            onPressedBritish: () => speakearlys16("en-GB"),
            onPressedAmerican: () => speakearlys16("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He started writing music as early as 1989.""",
            kurdishText: """دەستی بە نووسینی میوزیک کرد لە سەرەتای ١٩٨٩.""",
            onPressedBritish: () => speakearlys17("en-GB"),
            onPressedAmerican: () => speakearlys17("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The best rooms go to those who book earliest.""",
            kurdishText:
                """باشترین ژوورەکان بۆ ئەوانە دەبن کە زوو حجز دەکەن.""",
            onPressedBritish: () => speakearlys18("en-GB"),
            onPressedAmerican: () => speakearlys18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ھاوەڵکار) پێش کاتی ھەمیشەیی یان دیاریکراو"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Why don't you go home early if you're not feeling well?""",
            kurdishText:
                """بۆچی زووتر ناچیتە ماڵەوە ئەگەر ھەست بە باشی ناکەیت؟""",
            onPressedBritish: () => speakearlys19("en-GB"),
            onPressedAmerican: () => speakearlys19("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Get there early to make sure you get good seats.""",
            kurdishText: """زوو بگە ئەوێ بۆ ئەوەی دڵنیابیت کورسی باش دەبەیت.""",
            onPressedBritish: () => speakearlys20("en-GB"),
            onPressedAmerican: () => speakearlys20("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The bus came five minutes early.""",
            kurdishText: """پاسەکە پێنج خولەک زووتر ھات.""",
            onPressedBritish: () => speakearlys21("en-GB"),
            onPressedAmerican: () => speakearlys21("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I woke up early this morning.""",
            kurdishText: """ئەم بەیانییە زوو خەبەرم بوویەوە.""",
            onPressedBritish: () => speakearlys22("en-GB"),
            onPressedAmerican: () => speakearlys22("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She went to bed early.""",
            kurdishText: """زوو چووە جێخەو.""",
            onPressedBritish: () => speakearlys23("en-GB"),
            onPressedAmerican: () => speakearlys23("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I arrived a few minutes early for my interview.""",
            kurdishText: """چەند خولەکێک زوو گەشتم بۆ چاوپێکەوتنەکەم.""",
            onPressedBritish: () => speakearlys24("en-GB"),
            onPressedAmerican: () => speakearlys24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ھاوەڵکار) پێش کاتی ئێستا یان ئەو کاتەی باسکراوە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """She had seen him earlier in the day.""",
            kurdishText: """پێشووتر لە ڕۆژەکەدا بینیبووی.""",
            onPressedBritish: () => speakearlys25("en-GB"),
            onPressedAmerican: () => speakearlys25("en-US"),
          ),
          // earlys2600earlys26
          // speakearlys26
          // earlys2700earlys27
          // speakearlys27
          // earlys2800earlys28
          // speakearlys28
          // earlys2900earlys29
          // speakearlys29
          // earlys_3000earlys30
          // speakearlys30
          // earlys3100earlys31
          // speakearlys31
          // earlys3200earlys32
          // speakearlys32
          // earlys3300earlys33
          // speakearlys33
          // earlys3400earlys34
          // speakearlys34
          // earlys3500earlys35
          // speakearlys35
          // earlys3600earlys36
          // speakearlys36
          // earlys3700earlys37
          // speakearlys37
          // earlys3800earlys38
          // speakearlys38("en-US"""),
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
- Adjective: early (derived forms: earlier, earliest)
1. At or near the beginning of a period of time or course of events or before the usual or expected time
"early morning"; "an early warning"; "early diagnosis"; "an early death"; "took early retirement"; "an early spring"; "early varieties of peas and tomatoes mature before most standard varieties"
 
2. Belonging to the distant past (= former, other)
"the early inhabitants of Europe";
 
3. Very young
"at an early age"
 
4. Being or occurring at an early stage of development
"in an early stage"; "early forms of life"; "early man"; "an early computer"
 
5. Expected in the near future
"look for an early end to the negotiations"
 
6. (linguistics) of an early stage in the development of a language or literature
"the Early Hebrew alphabetical script is that used mainly from the 11th to the 6th centuries B.C."; "Early Modern English is represented in documents printed from 1476 to 1700"

- Adverb: early
1. During an early stage (= early on)
"early on in her career";
 
2. Before the usual time or the time expected (= ahead of time, too soon)
"she graduated early";
 
3. In good time (= betimes)
"he awoke early that morning";
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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1139;

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

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 74;

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

  final String _videoId = 'QEbYo07jLoY';
  final double _startSeconds = 573;

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

  final String _videoId = 'B0lwiInZG1E';
  final double _startSeconds = 128;

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

  final String _videoId = 'oAEJsE-TUvQ';
  final double _startSeconds = 390;

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
  final double _startSeconds = 76;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 195;

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