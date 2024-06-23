import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydue extends StatefulWidget {
  const EnglishEntrydue({super.key});

  @override
  State<EnglishEntrydue> createState() => _EnglishEntrydueState();
}

class _EnglishEntrydueState extends State<EnglishEntrydue> {
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
  final String keyword = "due";
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
    return const EntryTitle(word: "due");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: due");
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
    return const IPAofEnglish(text: "IpaUK: /djuː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdue(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("due");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdue("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /duː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdue(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("due");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdue("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdues1(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The team's success was largely due to her efforts.");
  }

  Future<void> speakdues2(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He argues that climate change is mainly due to the actions of industrialized countries.");
  }

  Future<void> speakdues3(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The increase in reported cases is partly due to growing public awareness of the disease.");
  }

  Future<void> speakdues4(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The next train is due in five minutes.");
  }

  Future<void> speakdues5(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("When's the baby due?");
  }

  Future<void> speakdues6(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My essay's due next Friday.");
  }

  Future<void> speakdues7(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Payment is due on 1 October.");
  }

  Future<void> speakdues8(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our thanks are due to the whole team.");
  }

  Future<void> speakdues9(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Have they been paid the money that is due to them?");
  }

  Future<void> speakdues10(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm still due 15 days' leave.");
  }

  Future<void> speakdues11(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's due for promotion soon.");
  }

  Future<void> speakdues12(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After due consideration, we have decided to appoint Mr Davis to the job.");
  }

  Future<void> speakdues13(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's a slow worker, but to give her her due, she does try very hard.");
  }

  Future<void> speakdues14(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Members of the society pay £1,000 in annual dues.");
  }

  Future<void> speakdues15(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The village lies five miles due north of York.");
  }

  Future<void> speakdues16(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("From here, you go due east until you get to the school.");
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
کوردی: لەدانەوەھاتوو، شێاوی دان یان پێدان،	وادە، وەختی دانەوە،	خاوەن‌قەرز،	دیاری‌کراو، دانراو، بڕیارلەسەردراو، پێویست،	باش، گونجاو، ڕەوا، شیاو، حەق، بەرحەق،	لە ئەنجامی، لەبەر،	ماف، حەق،	قەرز، حەقی ئەندامێتی، ئەندامانە،	حەق
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) بەھۆی کەسێک/شتێک"""),
          SentencesRow(
            englishText:
                """The team's success was largely due to her efforts.""",
            kurdishText:
                """سەرکەوتنی تیمەکە بەشێوەیەکی سەرەکی بەھۆی ھەوڵەکانی ئەو بوو.""", // due
            onPressedBritish: () => speakdues1("en-GB"),
            onPressedAmerican: () => speakdues1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He argues that climate change is mainly due to the actions of industrialized countries.""",
            kurdishText:
                """مشتومڕی ئەوە دەکات کە گۆڕانی کەشووھەوا بەشێوەیەکی سەرەکی بەھۆی ھەوڵەکانی وڵاتە پیشەسازییەکانە.""",
            onPressedBritish: () => speakdues2("en-GB"),
            onPressedAmerican: () => speakdues2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The increase in reported cases is partly due to growing public awareness of the disease.""",
            kurdishText:
                """زیادبوونی کەیسە ڕاگەیەندراوەکان تا ڕادەیەک بەھۆی ھۆشیاری زیادبووی خەڵکییە بۆ نەخۆشییەکە.""",
            onPressedBritish: () => speakdues3("en-GB"),
            onPressedAmerican: () => speakdues3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵناو) کە چاوەڕوانکراوە یان ئامادەیی بۆ کراوە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """The next train is due in five minutes.""",
            kurdishText:
                """شەمەندەفەری دواتر لە پێنج خولەکدا پێشبینی دەکرێت.""",
            onPressedBritish: () => speakdues4("en-GB"),
            onPressedAmerican: () => speakdues4("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """When's the baby due?""",
            kurdishText: """منداڵەکە بۆ کەی پێشبینی دەکرێت.""",
            onPressedBritish: () => speakdues5("en-GB"),
            onPressedAmerican: () => speakdues5("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """My essay's due next Friday (= it has to be given to the teacher by then).""",
            kurdishText: """داڕشتنەکەم تاوەکو ھەینی کاتی ھەیە.""",
            onPressedBritish: () => speakdues6("en-GB"),
            onPressedAmerican: () => speakdues6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ھاوەڵناو) کە قەرزێک دەبیت دەستبەجێ بدرێتەوە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Payment is due on 1 October.""",
            kurdishText: """دانەوەی قەرزەکە لە یەکی تشرینی یەکەم دەبێت.""",
            onPressedBritish: () => speakdues7("en-GB"),
            onPressedAmerican: () => speakdues7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ھاوەڵناو) کە دەبێت بدرێت بە کەسێک بەھۆی ئەوەی مافیەتی یان شایەنیەتی"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Our thanks are due to the whole team.""",
            kurdishText: """سوپاسمان بۆ تەواوی تیمەکەیە.""",
            onPressedBritish: () => speakdues8("en-GB"),
            onPressedAmerican: () => speakdues8("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Have they been paid the money that is due to them?""",
            kurdishText: """ئەو پارەیان پێدراوە کە مافیانە.""",
            onPressedBritish: () => speakdues9("en-GB"),
            onPressedAmerican: () => speakdues9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ھاوەڵناو) کە شایەنی شتێکە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """I'm still due 15 days' leave.""",
            kurdishText: """ھێشتا ١٥ ڕۆژ مۆڵەتم ماوە.""",
            onPressedBritish: () => speakdues10("en-GB"),
            onPressedAmerican: () => speakdues10("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She's due for promotion soon.""",
            kurdishText: """بەزووی شایستەی پلەبەرزکردنەوە دەبێت.""",
            onPressedBritish: () => speakdues11("en-GB"),
            onPressedAmerican: () => speakdues11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ھاوەڵناو) کە لە ھەلومەرجێکدا گونجاو دەبێت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """After due consideration, we have decided to appoint Mr Davis to the job.""",
            kurdishText:
                """لە دوای بیرکردنەوەی گونجاو، بڕیارمان داوە بە دیاریکردنی بەڕێز دەیڤیز بۆ کارەکە.""",
            onPressedBritish: () => speakdues12("en-GB"),
            onPressedAmerican: () => speakdues12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ناو) شتێک کە وەک مافی کەسێک دەبێت پێی بدرێت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """She's a slow worker, but to give her her due (= to be fair to her), she does try very hard.""",
            kurdishText:
                """کرێکارێکی خاووخلیچکە، بەڵام بۆ ناحەقی نەبێت بەرامبەری، زۆر ماندوونەناسانە ھەوڵ دەدات.""",
            onPressedBritish: () => speakdues13("en-GB"),
            onPressedAmerican: () => speakdues13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (ناو) بڕە پارەیەک کە دەیدەیت بە دامەزراوەیەک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Members of the society pay £1,000 in annual dues.""",
            kurdishText:
                """ئەندامانی کۆمەڵگەکە دەبێت ١٠٠٠ پاوەندی ساڵانە بدەن.""",
            onPressedBritish: () => speakdues14("en-GB"),
            onPressedAmerican: () => speakdues14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (ھاوەڵکار) بە تەواوی؛ بەھێڵێکی ڕاست"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """The village lies five miles due north of York.""",
            kurdishText: """گوندەکە ڕێک پێنج میل لە باکووری یۆرکە.""",
            onPressedBritish: () => speakdues15("en-GB"),
            onPressedAmerican: () => speakdues15("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """From here, you go due east until you get to the school.""",
            kurdishText:
                """لێرەوە ڕاست بۆ ڕۆژھەڵات دەچیت تاوەکو دەگەیت بە قوتابخانەکە.""",
            onPressedBritish: () => speakdues16("en-GB"),
            onPressedAmerican: () => speakdues16("en-US"),
          ),
          // dues1700
          // speakdues17
          // dues17// dues1800
          // speakdues18
          // dues18// dues1900
          // speakdues19
          // dues19// dues_2000
          // speakdues20
          // dues20// dues2100
          // speakdues21
          // dues21// dues2200
          // speakdues22
          // dues22("en-US"""),
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
- Adjective: due
1. Owed and payable immediately or on demand
"payment is due"
 
2. Scheduled to arrive
"the train is due in 15 minutes"
 
3. Capable of being assigned or credited to (= ascribable, imputable, referable)
"the cancellation of the concert was due to the rain";
 
4. Suitable to or expected in the circumstances
"all due respect"; "due cause to honour them"; "a long due promotion"; "in due course"; "due esteem"; "exercising due care"
 
5. Supposed to occur at the stated time
 
6. Expected to give birth on the stated date

- Noun: due (derived forms: dues)
1. That which is deserved or owed
"give the devil his due"
 
2. A payment that is due (e.g., as the price of membership)
"the society dropped him for non-payment of dues"

- Adverb: due 
1. Directly or exactly; straight
"went due North"
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

  final String _videoId = 'ARERGvMzhmc';
  final double _startSeconds = 379;

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

  final String _videoId = '-m0Qh8fv0i0';
  final double _startSeconds = 384;

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

  final String _videoId = '2-bQnjgUiUs';
  final double _startSeconds = 28;

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

  final String _videoId = 'LEc29-83f8s';
  final double _startSeconds = 280;

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

  final String _videoId = 'dwcavo44AFk';
  final double _startSeconds = 68;

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

  final String _videoId = 'kD7TGp8XML4';
  final double _startSeconds = 37;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 812;

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