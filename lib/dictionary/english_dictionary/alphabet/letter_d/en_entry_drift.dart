import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydrift extends StatefulWidget {
  const EnglishEntrydrift({super.key});

  @override
  State<EnglishEntrydrift> createState() => _EnglishEntrydriftState();
}

class _EnglishEntrydriftState extends State<EnglishEntrydrift> {
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
  final String keyword = "drift";
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
    return const EntryTitle(word: "drift");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drift");
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
    return const IPAofEnglish(text: "IpaUK: /drɪft/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrift(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drift"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrift("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /drɪft/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrift(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drift"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrift("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrifts1(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Clouds drifted across the sky."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts2(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A cool breeze drifted through the open window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts3(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Smoke drifted across the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts4(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crowd drifted away from the scene of the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts5(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People began to drift back to their houses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts6(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I didn't intend to be a teacher—I just drifted into it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts7(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The conversation drifted onto politics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts8(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Finally she drifted into sleep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts9(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The injured man tried to speak but soon drifted into unconsciousness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts10(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some roads are closed because of drifting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts11(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He criticized the rightward drift of the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts12(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Action is needed to prevent a drift into lawlessness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts13(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "No attempts were being made to halt the drift towards war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts14(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Remember to allow for drift."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts15(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He knew the hidden drifts in that part of the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts16(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road was blocked by deep drifts of snow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts17(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Plant daffodils in informal drifts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts18(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you catch my drift?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts19(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My German isn't very good, but I got the drift of what she said."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts20(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrifts_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts21(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrifts2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrifts22(String languageCode) async {
    // DOPSUM: CHANGE speakdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrifts2200"); // DOPSUM: CHANGE TEXT
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
کوردی: جووڵە، جووڵانەوەی بەخاوی، تەکان (کەم‌کەم)، تەوژم، ڕاماڵین، ڕادان،	کەڵەکە، تۆپەڵە، ڕادراوە، ڕاماڵراوە، ڕاماڵە، کۆما، کۆگا، کۆمای ڕادراو بە با، باڕاماڵک (بەتایبەت زیخ، بەفر و ھتد)، سەھۆڵی ئاوماڵک،	ئەسکەنە،	مەبەست، خەیاڵ، نیاز، نێوەرۆک، کاکڵ، واتا، مانا،	داشکانەوە، مەیل، تێندێنسی،	(فڕۆکە و ...) لادان، ڕادان،	سەبر، چاوەڕوانی،	لێ‌خوڕین، ڕاپێچ‌دان (ئاژەڵ)،	ڕەھەندی لاوەکی، لاڕەھەند،	(زمانەوانی) گۆڕان، گۆڕان‌کاری
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) ئەوەی کە بە ھێواشی و لەسەرخۆیی بەسەر ئاو یان بە ھەوادا بجوڵێیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Clouds drifted across the sky."),
                    ExampleSentenceKurdish(
                        text: "ھەورەکان بە ئاسماندا دەسووڕانەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "drift", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A cool breeze drifted through the open window."),
                    ExampleSentenceKurdish(
                        text:
                            "سریوەیەکی سارد بە پەنجەرە کراوەکەدا ھاتە ژوورەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Smoke drifted across the room."),
                    ExampleSentenceKurdish(
                        text: "دووکەڵ بە ژوورەکەدا ھاتووچۆی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) چوون بۆ شوێنێک بەھێواشی، یان جوڵان بە ناویدا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The crowd drifted away from the scene of the accident."),
                    ExampleSentenceKurdish(
                        text: "جەماوەرەکە بڵاوەیان لە ڕووداوەکە کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "People began to drift back to their houses."),
                    ExampleSentenceKurdish(
                        text: "خەڵکی دەستیان کرد بە چوونەوە بۆ ماڵەکانیان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) کردنی شتێک، یان ئەوەی ڕووبدات یان بگۆڕێت بەبێ مەبەست یان پلانێکی دیاریکراو"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I didn't intend to be a teacher—I just drifted into it."),
                    ExampleSentenceKurdish(
                        text:
                            "مەبەستم نەبوو ببم بە مامۆستا ـ تەنھا ئەوەبوو تێکەوتم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The conversation drifted onto politics."),
                    ExampleSentenceKurdish(
                        text: "گفتوگۆکە خۆی کێشا/درێژەی کێشا بۆ سیاسەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) چوون لە دۆخێکەوە بۆ یەکێکی دیکە بەبێ ئەوەی ھەستی پێبکەیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Finally she drifted into sleep."),
                    ExampleSentenceKurdish(text: "لەکۆتاییدا کەوتە خەو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The injured man tried to speak but soon drifted into unconsciousness."),
                    ExampleSentenceKurdish(
                        text:
                            "پیاوە بریندارەکە ھەوڵیدا قسەبکات بەڵام ھەرزوو بێ‌ھۆش کەوت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) تۆپەڵبوون بەھۆی باوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Some roads are closed because of drifting."),
                    ExampleSentenceKurdish(
                        text: "ھەندێک ڕێگا بەھۆی تۆپەڵبوونەوە داخراون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) جوڵەیەکی ھێواش و لەسەرخۆ لە شوێنێکەوە بۆ شوێنێکی دیکە؛ گۆڕانێک یان پەرەسەندنێکی لەسەرەخۆ لە دۆخێکەوە بۆ دۆخێکی دیکە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He criticized the rightward drift of the party."),
                    ExampleSentenceKurdish(
                        text: "ڕەخنەی لە چوونی پارتەکە بۆ ڕاستڕەوی گرت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Action is needed to prevent a drift into lawlessness."),
                    ExampleSentenceKurdish(
                        text: "ھەنگاونان پێویستە بۆ ڕێگری لە پاشاگەردانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "No attempts were being made to halt the drift towards war."),
                    ExampleSentenceKurdish(
                        text: "ھیچ ھەوڵێک نەدەدرا بۆ سەرکێشان بۆ ناو جەنگ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) جوڵەی کەشتی یان فڕۆکە دوور لە ئاراستەکەی بەھۆی باوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Remember to allow for drift."),
                    ExampleSentenceKurdish(
                        text: "بیرت بێت حساب بۆ بایەکە بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) جوڵەی ئاو یان ھەوا"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: current"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He knew the hidden drifts in that part of the river."),
                    ExampleSentenceKurdish(
                        text: "شەپۆلە شاراوەکانی ئەو بەشەی ڕووبارەکەی دەزانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (ناو) تۆپەڵێکی گەورە لە شتێک، بەتایبەتی بەفر، کە بەھۆی باوە درووست بووە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The road was blocked by deep drifts of snow."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێگاکە داخراو بوو بەھۆی تۆپەڵبوونی گەورەی بەفرەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ناو) ڕێژەیەکی زۆر لە شتێک، بەتایبەتی گوڵ"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Plant daffodils in informal drifts."),
                    ExampleSentenceKurdish(
                        text: "نێرگزەکان لە گرووپی ناڕێکدا بچێنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ناو) واتای گشتی شتێک کە کەسێک دەیڵێت یان دەینووسێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Do you catch my drift?"),
                    ExampleSentenceKurdish(text: "کاکڵی قسەکەم وەرگرتم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "My German isn't very good, but I got the drift of what she said."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەڵمانییەکەم زۆرباش نییە، بەڵام مەبەستی ئەوەم وەرگرت کە گوتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrifts19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrifts19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // drifts_2000"),
          // speakdrifts20
          // drifts20("en-US"),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // drifts2100"),
          // speakdrifts21
          // drifts21("en-US"),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // drifts2200"),
          // speakdrifts22
          // drifts22("en-US"),
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
- Verb: drift (Derived forms: drifted, drifting, drifts)
1. Be in motion due to some air or water current (= float, be adrift, blow)
"the boat drifted on the lake"; "the shipwrecked boat drifted away from the shore";
 
2. Wander from a direct course or at random (= stray, err)
"don't drift from the set course";
 
3. Move about aimlessly or without any fixed destination (= roll, wander, swan [informal], stray, tramp, roam, cast, ramble, rove, range, vagabond [archaic])
"the labourers drift from one town to the next";
 
4. Vary or move from a fixed point or course
"stock prices are drifting higher"
 
5. Live unhurriedly, irresponsibly, or freely (= freewheel)
"My son drifted around for years in California before going to law school";
 
6. Move in an unhurried fashion
"The unknown young man drifted among the invited guests"
 
7. Cause to be carried by a current
"drift the boats downstream"
 
8. Drive slowly and far afield for grazing
"drift the cattle herds westwards"
 
9. Be subject to fluctuation
"The stock market drifted upward"
 
10. Be piled up in banks or heaps by the force of wind or a current
"snow drifting several feet high"; "sand drifting like snow"

- Noun: drift (Derived forms: drifts)
1. A force that moves something along (= impetus, impulsion)
 
2. The gradual departure from an intended course due to external influences (as a ship or plane)
 
3. A process of linguistic change over a period of time
 
4. A large mass of material that is heaped up by the wind or by water currents
 
5. A general tendency to change (as of opinion) (= trend, movement)
"not openly liberal but that is the drift of the book";
 
6. The pervading meaning or tenor (= purport)
"caught the general drift of the conversation";
 
7. (mining) a horizontal (or nearly horizontal) passageway in a mine (= heading, gallery)
"they dug a drift parallel with the vein";
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 394;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'Pl8AJAt3TDg';
  final double _startSeconds = 271;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'T48_SrFCdaQ';
  final double _startSeconds = 117;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'mncCR3wehF8';
  final double _startSeconds = 218;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'j3o6RLBehlc';
  final double _startSeconds = 563;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'Am1lDj2mUVY';
  final double _startSeconds = 1438;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'oI_X2cMHNe0';
  final double _startSeconds = 183;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
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