import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydry extends StatefulWidget {
  const EnglishEntrydry({super.key});

  @override
  State<EnglishEntrydry> createState() => _EnglishEntrydryState();
}

class _EnglishEntrydryState extends State<EnglishEntrydry> {
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
  final String keyword = "dry";
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
    return const EntryTitle(word: "dry");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dry");
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
    return const IPAofEnglish(text: "IpaUK: /draɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdry(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dry"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdry("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /draɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdry(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dry"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdry("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrys1(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Is my shirt dry yet?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys2(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Store onions in a cool dry place."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys3(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm afraid this cake has turned out very dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys4(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Some plants grow better in dry soil."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys5(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When the paint is completely dry, apply another coat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys6(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was summer and the rivers were dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys7(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He towelled himself dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys8(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Ruth felt her mouth go dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys9(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I hope it stays dry for our picnic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys10(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is every prospect of the weather remaining dry this week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys11(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The day will start bright and mainly dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys12(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is a shampoo for dry hair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys13(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had a dry hacking cough all night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys14(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Breakfast consisted of dry bread and a cup of tea."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys15(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This wine is too dry for me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys16(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was a man of few words with a dry sense of humour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys17(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He replied in a cold, dry manner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys18(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Government reports tend to make dry reading."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys19(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's been dry for a year now."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys20(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm a bit dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys21(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is dry work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys22(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You must be so wet! Come into the dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys23(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dry had started and the grass was turning yellow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys24(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He did the laundry and hung it out to dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys25(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Be careful. The paint hasn't dried yet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys26(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You wash the dishes and I'll dry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys27(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Use this towel to dry your hands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys28(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys29(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys30(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys_3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys31(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys32(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys33(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys34(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys35(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys36(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys37(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys38(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys39(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys40(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys_4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys41(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys42(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrys43(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrys4300"); // DOPSUM: CHANGE TEXT
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
کوردی: وشک، تورت، کزر، کوێر (کانی)، زەھا،	کەم‌باران، بێ‌ئاو، وشک،	(مانگا) بێ‌شیر، وشک‌کردوو، بێ‌دەم‌ودۆ،	(نان) بێ‌کەرە، وشک،	ڕەق، وشکەوەبوو، ڕەقەوەبوو،	(خواردنەوە) تاڵ، شیرین نییە، مزر،	تینوو، تھنی، تینوێتی‌ھێنەر، تینووتی دێنێ،	ناخۆش، وشک، ماندووکەر، وەڕەزکەر،	سارد، وشک، ساردوسڕ،	ئاشکرا، دیار، بەرچاو
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) وشک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Is my shirt dry yet?"),
                    ExampleSentenceKurdish(text: "کراسەکەم ئێستا وشکە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dry", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Store onions in a cool dry place."),
                    ExampleSentenceKurdish(
                        text: "پیاز لە شوێنێکی وشکی سارد ھەڵبگرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'm afraid this cake has turned out very dry."),
                    ExampleSentenceKurdish(
                        text: "بەداخەوەم کە کێکەکە زۆر وشک دەرچووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Some plants grow better in dry soil."),
                    ExampleSentenceKurdish(
                        text: "ھەندێک ڕووەک لە خاکی وشكدا باشتر گەشە دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "When the paint is completely dry, apply another coat."),
                    ExampleSentenceKurdish(
                        text:
                            "کە بۆیەکە بە تەواوی وشکە، چینێکی دیکە بدە بە سەریدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It was summer and the rivers were dry (= had no water in them)."),
                    ExampleSentenceKurdish(
                        text: "ھاوین بوو و ڕووبارەکان وشک بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He towelled himself dry."),
                    ExampleSentenceKurdish(text: "خۆی بە خاولییەک وشککردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Ruth felt her mouth go dry."),
                    ExampleSentenceKurdish(
                        text: "ڕووس ھەستی دەکرد دەمی وشکدەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) بە بوونی کەمێک باران"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I hope it stays dry for our picnic."),
                    ExampleSentenceKurdish(
                        text: "ھیوادارم کەم‌باران بێت بۆ سەفرەکەمان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There is every prospect of the weather remaining dry this week."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو پێشبینییەک دەکرێت کەشووھەوا ئەم ھەفتەیە بێ‌باران بمێنێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The day will start bright and mainly dry."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕۆژەکە بە گەشاوەیی و تا ڕادەیەک بێ‌باران دەستپێدەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) بەبێ چەوری سرووشتی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This is a shampoo for dry hair."),
                    ExampleSentenceKurdish(text: "ئەمە شامپۆیەکە بۆ قژی وشک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) کە بەڵغەم درووست ناکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He had a dry hacking cough all night."),
                    ExampleSentenceKurdish(
                        text: "تەواوی شەوەکە کۆکەڕەشەیەکی وشکی ھەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) نانێک کە بە تەنھا دەخوردرێت بەبێ پەنیر، دۆشاو، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Breakfast consisted of dry bread and a cup of tea."),
                    ExampleSentenceKurdish(
                        text:
                            "نانی بەیانی لە نانەوشکە و پیاڵەیەک چا پێکھاتبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) کە شیرین نییە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This wine is too dry for me."),
                    ExampleSentenceKurdish(text: "شەرابەکە زۆر بێ‌تامە بۆ من."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵناو) گاڵتەیەک کە زیرەکانە و شاراوەیە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was a man of few words with a dry sense of humour."),
                    ExampleSentenceKurdish(
                        text: "کەسێکی کەمدوو بوو بە حەزێکی بۆ شۆخی شاراوە ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (ھاوەڵناو) بەبێ پیشاندانی ھەست و سۆز"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He replied in a cold, dry manner."),
                    ExampleSentenceKurdish(
                        text: "بەشێوەیەکی ساردوسڕ و وشک وەڵامی دایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ھاوەڵناو) کە سەرنجڕاکێش نییە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Government reports tend to make dry reading."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاپۆرتەکانی حکومەت وا دەکەن خوێندنەوە ماندووکەر بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ھاوەڵناو) بەبێ کحوول"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He's been dry (= has drunk no alcohol) for a year now."),
                    ExampleSentenceKurdish(
                        text: "چەندین ساڵ دەبێت دوورە لە کحوول."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ھاوەڵناو) تینوو؛ کە تینووت دەکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I'm a bit dry."),
                    ExampleSentenceKurdish(text: "کەمێک تینووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "This is dry work."),
                    ExampleSentenceKurdish(text: "کارێکی تینووکەرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (ناو) شوێنێکی وشک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You must be so wet! Come into the dry."),
                    ExampleSentenceKurdish(
                        text: "دەبێت زۆر تەڕ بیت! وەرە وشکاییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (ناو) وەرزی وشکێتی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The dry had started and the grass was turning yellow."),
                    ExampleSentenceKurdish(
                        text:
                            "وەرزی وشکێتی دەستیپێکردبوو و گژووگیا زەرد دەبوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (کردار) وشکبوون"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He did the laundry and hung it out to dry."),
                    ExampleSentenceKurdish(
                        text: "جلەکانی شووشت و ھەڵیواسین تاوەکو وشکببنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Be careful. The paint hasn't dried yet."),
                    ExampleSentenceKurdish(
                        text: "وریابە. بۆیەکە ھێشتا وشک نەبووەتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You wash the dishes and I'll dry."),
                    ExampleSentenceKurdish(
                        text: "تۆ قاپەکان بشۆ و من وشکیان دەکەمەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Use this towel to dry your hands."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم خاولییە بەکاربھێنە بۆ وشککردنەوەی دەستەکانت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrys27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrys27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys2800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys28("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys28("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys2900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys29("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys29("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys_3000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys30("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys30("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys31("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys31("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys32("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys32("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys33("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys33("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys34("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys34("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys35("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys35("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys36("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys36("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys37("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys37("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys38("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys38("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys3900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys39("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys39("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys_4000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys40("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys40("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrys4100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrys41("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrys41("en-US"),
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
- Verb: dry (Derived forms: dries, drying, dried)
1. Remove the moisture from and make dry (= dry out)
"dry hair"; "dry clothes";
 
2. Become dry or drier (= dry out)
"The laundry dries in the sun";

- Adjective: dry (Derived forms: drier, dryer, dryest, driest)
1. Free from liquid or moisture; lacking natural or normal moisture or depleted of water; or no longer wet
"dry land"; "dry clothes"; "a dry climate"; "dry splintery boards"; "a dry river bed"; "the paint is dry"
 
2. Humorously sarcastic or mocking (= ironic, ironical, wry)
"dry humour";
 
3. Not shedding tears
"dry sobs"; "with dry eyes"
 
4. Lacking interest or stimulation; dull and lifeless (= juiceless)
"a dry book"; "a dry lecture filled with trivial details";
 
5. Used of solid substances in contrast with liquid ones
"dry weight"
 
6. Unproductive especially of the expected results
"a dry run"; "a mind dry of new ideas"
 
7. Having no adornment or coloration
"dry facts"; "rattled off the facts in a dry mechanical manner"
 
8. (of food) eaten without a spread, sauce or other garnish
"dry toast"; "dry meat"
 
9. Having a large proportion of strong liquor
"a very dry martini is almost straight gin"
 
10. Lacking warmth or emotional involvement
"a dry greeting"; "a dry reading of the lines"; "a dry critique"
 
11. Practising complete abstinence from alcoholic beverages (= teetotal)
"he's been dry for ten years";
 
12. Lacking moisture or volatile components
"dry paint"
 
13. Opposed to or prohibiting the production and sale of alcoholic beverages
"the dry vote led by preachers and bootleggers"; "a dry state"
 
14. Not producing milk
"a dry cow"
 
15. (of liquor) having a low residual sugar content because of decomposition of sugar during fermentation
"a dry white burgundy"; "a dry Bordeaux"
 
16. Without a mucous or watery discharge
"a dry cough"; "that rare thing in the wintertime; a small child with a dry nose"

- Noun: dry (Derived forms: dries, drys)
1. A reformer who opposes the use of intoxicating beverages (= prohibitionist)
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
    videoId: 'rOqUiXhECos',
    startSeconds: 169,
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
    videoId: 'kGg44zdgHYM',
    startSeconds: 18,
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
    videoId: 'h4CyhQqAPpk',
    startSeconds: 236,
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
    videoId: '47MNn4bsmSw',
    startSeconds: 4716,
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
    videoId: 'dThvyim4tbU',
    startSeconds: 180,
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
    videoId: 'J4hQFL5ICxY',
    // startSeconds: 222222222222222,
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
    videoId: 'iKv4oc2zbeA',
    startSeconds: 2058,
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