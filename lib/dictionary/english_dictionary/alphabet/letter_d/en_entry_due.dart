import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

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
                    SentencesIconForTab(), // New tab for SentencesFromDatabase
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
              const SentencesFromDatabase(), // New SentencesFromDatabase tab
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
    await flutterTts.speak("due"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak("due"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak(
        "The team's success was largely due to her efforts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues2(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He argues that climate change is mainly due to the actions of industrialized countries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues3(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The increase in reported cases is partly due to growing public awareness of the disease."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues4(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The next train is due in five minutes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues5(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("When's the baby due?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues6(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My essay's due next Friday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues7(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Payment is due on 1 October."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues8(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our thanks are due to the whole team."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues9(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Have they been paid the money that is due to them?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues10(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm still due 15 days' leave."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues11(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's due for promotion soon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues12(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After due consideration, we have decided to appoint Mr Davis to the job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues13(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's a slow worker, but to give her her due, she does try very hard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues14(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Members of the society pay £1,000 in annual dues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues15(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The village lies five miles due north of York."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues16(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "From here, you go due east until you get to the school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues17(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues18(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues19(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues20(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues21(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdues22(String languageCode) async {
    // DOPSUM: CHANGE speakdue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdues2200"); // DOPSUM: CHANGE TEXT
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
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The team's success was largely due to her efforts."""),
                    ExampleSentenceKurdish(
                        text:
                            """سەرکەوتنی تیمەکە بەشێوەیەکی سەرەکی بەھۆی ھەوڵەکانی ئەو بوو."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "due", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues1("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues1("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """He argues that climate change is mainly due to the actions of industrialized countries."""),
                    ExampleSentenceKurdish(
                        text:
                            """مشتومڕی ئەوە دەکات کە گۆڕانی کەشووھەوا بەشێوەیەکی سەرەکی بەھۆی ھەوڵەکانی وڵاتە پیشەسازییەکانە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues2("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues2("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The increase in reported cases is partly due to growing public awareness of the disease."""),
                    ExampleSentenceKurdish(
                        text:
                            """زیادبوونی کەیسە ڕاگەیەندراوەکان تا ڕادەیەک بەھۆی ھۆشیاری زیادبووی خەڵکییە بۆ نەخۆشییەکە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues3("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues3("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵناو) کە چاوەڕوانکراوە یان ئامادەیی بۆ کراوە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """The next train is due in five minutes."""),
                    ExampleSentenceKurdish(
                        text:
                            """شەمەندەفەری دواتر لە پێنج خولەکدا پێشبینی دەکرێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues4("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues4("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: """When's the baby due?"""),
                    ExampleSentenceKurdish(
                        text: """منداڵەکە بۆ کەی پێشبینی دەکرێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues5("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues5("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """My essay's due next Friday (= it has to be given to the teacher by then)."""),
                    ExampleSentenceKurdish(
                        text: """داڕشتنەکەم تاوەکو ھەینی کاتی ھەیە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues6("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues6("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ھاوەڵناو) کە قەرزێک دەبیت دەستبەجێ بدرێتەوە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Payment is due on 1 October."""),
                    ExampleSentenceKurdish(
                        text:
                            """دانەوەی قەرزەکە لە یەکی تشرینی یەکەم دەبێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues7("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ھاوەڵناو) کە دەبێت بدرێت بە کەسێک بەھۆی ئەوەی مافیەتی یان شایەنیەتی"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """Our thanks are due to the whole team."""),
                    ExampleSentenceKurdish(
                        text: """سوپاسمان بۆ تەواوی تیمەکەیە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues8("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues8("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """Have they been paid the money that is due to them?"""),
                    ExampleSentenceKurdish(
                        text: """ئەو پارەیان پێدراوە کە مافیانە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues9("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues9("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ھاوەڵناو) کە شایەنی شتێکە"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """I'm still due 15 days' leave."""),
                    ExampleSentenceKurdish(
                        text: """ھێشتا ١٥ ڕۆژ مۆڵەتم ماوە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues10("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues10("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: """She's due for promotion soon."""),
                    ExampleSentenceKurdish(
                        text: """بەزووی شایستەی پلەبەرزکردنەوە دەبێت."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues11("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues11("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ھاوەڵناو) کە لە ھەلومەرجێکدا گونجاو دەبێت"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """After due consideration, we have decided to appoint Mr Davis to the job."""),
                    ExampleSentenceKurdish(
                        text:
                            """لە دوای بیرکردنەوەی گونجاو، بڕیارمان داوە بە دیاریکردنی بەڕێز دەیڤیز بۆ کارەکە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues12("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues12("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ناو) شتێک کە وەک مافی کەسێک دەبێت پێی بدرێت"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """She's a slow worker, but to give her her due (= to be fair to her), she does try very hard."""),
                    ExampleSentenceKurdish(
                        text:
                            """کرێکارێکی خاووخلیچکە، بەڵام بۆ ناحەقی نەبێت بەرامبەری، زۆر ماندوونەناسانە ھەوڵ دەدات."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues13("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues13("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (ناو) بڕە پارەیەک کە دەیدەیت بە دامەزراوەیەک"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """Members of the society pay £1,000 in annual dues."""),
                    ExampleSentenceKurdish(
                        text:
                            """ئەندامانی کۆمەڵگەکە دەبێت ١٠٠٠ پاوەندی ساڵانە بدەن."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues14("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues14("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (ھاوەڵکار) بە تەواوی؛ بەھێڵێکی ڕاست"""),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """The village lies five miles due north of York."""),
                    ExampleSentenceKurdish(
                        text: """گوندەکە ڕێک پێنج میل لە باکووری یۆرکە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues15("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues15("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            """From here, you go due east until you get to the school."""),
                    ExampleSentenceKurdish(
                        text:
                            """لێرەوە ڕاست بۆ ڕۆژھەڵات دەچیت تاوەکو دەگەیت بە قوتابخانەکە."""),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdues16("en-GB" ""),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdues16("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues1700"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues17("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues1800"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues18("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues1900"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues19("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues_2000"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues20("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues2100"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues21("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ناو) پێنناسە"""),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: """speakdues2200"""),
          //           ExampleSentenceKurdish(text: """رستە_رستە_رستە_رستە."""),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdues22("en-GB"""),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdues22("en-US"""),
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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

- Noun: due (Derived forms: dues)
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
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ARERGvMzhmc',
    startSeconds: 379,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '-m0Qh8fv0i0',
    startSeconds: 384,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '2-bQnjgUiUs',
    startSeconds: 28,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'LEc29-83f8s',
    startSeconds: 280,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'dwcavo44AFk',
    startSeconds: 68,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'kD7TGp8XML4',
    startSeconds: 37,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'QLq6GEiHqR8',
    startSeconds: 812,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
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
    return YouTubeScroller(
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