import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("dry");
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
    await flutterTts.speak("dry");
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
    await flutterTts.speak("Is my shirt dry yet?");
  }

  Future<void> speakdrys2(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Store onions in a cool dry place.");
  }

  Future<void> speakdrys3(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm afraid this cake has turned out very dry.");
  }

  Future<void> speakdrys4(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Some plants grow better in dry soil.");
  }

  Future<void> speakdrys5(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When the paint is completely dry, apply another coat.");
  }

  Future<void> speakdrys6(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was summer and the rivers were dry.");
  }

  Future<void> speakdrys7(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He towelled himself dry.");
  }

  Future<void> speakdrys8(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ruth felt her mouth go dry.");
  }

  Future<void> speakdrys9(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hope it stays dry for our picnic.");
  }

  Future<void> speakdrys10(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is every prospect of the weather remaining dry this week.");
  }

  Future<void> speakdrys11(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The day will start bright and mainly dry.");
  }

  Future<void> speakdrys12(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is a shampoo for dry hair.");
  }

  Future<void> speakdrys13(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had a dry hacking cough all night.");
  }

  Future<void> speakdrys14(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Breakfast consisted of dry bread and a cup of tea.");
  }

  Future<void> speakdrys15(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This wine is too dry for me.");
  }

  Future<void> speakdrys16(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was a man of few words with a dry sense of humour.");
  }

  Future<void> speakdrys17(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He replied in a cold, dry manner.");
  }

  Future<void> speakdrys18(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Government reports tend to make dry reading.");
  }

  Future<void> speakdrys19(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been dry for a year now.");
  }

  Future<void> speakdrys20(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm a bit dry.");
  }

  Future<void> speakdrys21(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is dry work.");
  }

  Future<void> speakdrys22(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You must be so wet! Come into the dry.");
  }

  Future<void> speakdrys23(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dry had started and the grass was turning yellow.");
  }

  Future<void> speakdrys24(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He did the laundry and hung it out to dry.");
  }

  Future<void> speakdrys25(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be careful. The paint hasn't dried yet.");
  }

  Future<void> speakdrys26(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You wash the dishes and I'll dry.");
  }

  Future<void> speakdrys27(String languageCode) async {
    // DOPSUM: CHANGE speakdry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Use this towel to dry your hands.");
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
          // drys2800"),
          // speakdrys28
          // drys28("en-US"),
          // drys2900"),
          // speakdrys29
          // drys29("en-US"),
          // drys_3000"),
          // speakdrys30
          // drys30("en-US"),
          // drys3100"),
          // speakdrys31
          // drys31("en-US"),
          // drys3200"),
          // speakdrys32
          // drys32("en-US"),
          // drys3300"),
          // speakdrys33
          // drys33("en-US"),
          // drys3400"),
          // speakdrys34
          // drys34("en-US"),
          // drys3500"),
          // speakdrys35
          // drys35("en-US"),
          // drys3600"),
          // speakdrys36
          // drys36("en-US"),
          // drys3700"),
          // speakdrys37
          // drys37("en-US"),
          // drys3800"),
          // speakdrys38
          // drys38("en-US"),
          // drys3900"),
          // speakdrys39
          // drys39("en-US"),
          // drys_4000"),
          // speakdrys40
          // drys40("en-US"),
          // drys4100"),
          // speakdrys41
          // drys41("en-US"),
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
- Verb: dry (derived forms: dries, drying, dried)
1. Remove the moisture from and make dry (= dry out)
"dry hair"; "dry clothes";
 
2. Become dry or drier (= dry out)
"The laundry dries in the sun";

- Adjective: dry (derived forms: drier, dryer, dryest, driest)
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

- Noun: dry (derived forms: dries, drys)
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
  final String _videoId = 'rOqUiXhECos';
  final double _startSeconds = 169;

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

  final String _videoId = 'kGg44zdgHYM';
  final double _startSeconds = 18;

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

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'h4CyhQqAPpk';
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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 4716;

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

  final String _videoId = 'dThvyim4tbU';
  final double _startSeconds = 180;

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

  final String _videoId = 'J4hQFL5ICxY';
  final double _startSeconds = 0;

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

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 2058;

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