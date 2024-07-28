import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydrive extends StatefulWidget {
  const EnglishEntrydrive({super.key});

  @override
  State<EnglishEntrydrive> createState() => _EnglishEntrydriveState();
}

class _EnglishEntrydriveState extends State<EnglishEntrydrive> {
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
  final String keyword = "drive";
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
    return const EntryTitle(word: "drive");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drive");
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
    return const IPAofEnglish(text: "IpaUK: /draɪv/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrive("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /draɪv/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrive("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrives1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't drive so fast!");
  }

  Future<void> speakdrives2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you drive?");
  }

  Future<void> speakdrives3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Shall we drive or go by train?");
  }

  Future<void> speakdrives4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He drives a taxi.");
  }

  Future<void> speakdrives5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was arrested for driving recklessly.");
  }

  Future<void> speakdrives6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you drive me home?");
  }

  Future<void> speakdrives7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My mother drove us to the airport.");
  }

  Future<void> speakdrives8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were driven to an unknown place in the hills.");
  }

  Future<void> speakdrives9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't want to take the bus. Will you drive me?");
  }

  Future<void> speakdrives10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A stream of black cars drove by us.");
  }

  Future<void> speakdrives11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A car drove up to us and a man got out.");
  }

  Future<void> speakdrives12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What car do you drive?");
  }

  Future<void> speakdrives13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You need a special licence to drive a heavy goods vehicle.");
  }

  Future<void> speakdrives14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hunger drove her to steal.");
  }

  Future<void> speakdrives15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Those kids are driving me crazy.");
  }

  Future<void> speakdrives16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The situation has become so desperate that many are driven to suicide.");
  }

  Future<void> speakdrives17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The urge to survive drove them on.");
  }

  Future<void> speakdrives18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're driving yourself too hard.");
  }

  Future<void> speakdrives19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The work is driven by the need for information sharing.");
  }

  Future<void> speakdrives20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The engine drives the wheels.");
  }

  Future<void> speakdrives21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Water drives the turbines that produce electricity.");
  }

  Future<void> speakdrives22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The enemy was driven back.");
  }

  Future<void> speakdrives23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is the main factor driving investment in the area.");
  }

  Future<void> speakdrives24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A key factor driving growth was the launch of convenient products.");
  }

  Future<void> speakdrives25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The knife had been driven through his heart.");
  }

  Future<void> speakdrives26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He took a wooden peg and drove it into the ground.");
  }

  Future<void> speakdrives27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They drove a tunnel through the solid rock.");
  }

  Future<void> speakdrives28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "From the free kick, Owen drove the ball straight at the keeper.");
  }

  Future<void> speakdrives29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Huge waves drove the yacht onto the rocks.");
  }

  Future<void> speakdrives30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The waves drove against the shore.");
  }

  Future<void> speakdrives31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's go for a drive.");
  }

  Future<void> speakdrives32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a three-hour drive to London.");
  }

  Future<void> speakdrives33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was tired after the long drive home.");
  }

  Future<void> speakdrives34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He uses a car with left-hand drive (= in which the driver sits in the seat on the left).");
  }

  Future<void> speakdrives35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He jumped in, put the car in drive and set off.");
  }

  Future<void> speakdrives36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were two cars parked in the drive.");
  }

  Future<void> speakdrives37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The party spearheaded the drive for independence.");
  }

  Future<void> speakdrives38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The treatment should not affect your sex drive or fertility.");
  }

  Future<void> speakdrives39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He'll do very well—he has tremendous drive.");
  }

  Future<void> speakdrives40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cole scored with a thunderous left-foot drive.");
  }

  Future<void> speakdrives41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The computer has a built-in DVD drive.");
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
کوردی: گەڕان، سواری، سووڕانەوە (بە ئۆتۆمبێل و ھتد)،	لێخوڕین، ئاژۆتن، ڕاندن، ڕانین،	لێخوڕین، ڕاپێچ‌دان، قوڵەپێچ (کردن، وڵاغ و ھتد)،	ڕێگای نێوان ماڵ و شەقام،	لێھاتوویی، لێوەشاوەیی،	لێدان، پیاکێشان،	گوڕوتین، تاووتین، تامەزرۆیی،	(دەروون‌ناسی) ھاندەر، پاڵنەر، ئاژۆک،	ھێرش، پەلامار (توندوتیژ)،	حەولی ڕێکخراو یان تەواو، تێکۆشانی ڕێک‌وپێک،	ڕاگوێستنی ھێز (بۆ دەزگاکان)، ھێزی لێخوڕین، ڕادان، ڕاماڵین،	(کۆمپیوتەر) دڕایڤ
"""),
          const DefinitionKurdish(text: "١. (کردار) لێخوڕینی ئۆتۆمبێلێک"),
          SentencesRow(
            englishText: "Don't drive so fast!",
            kurdishText: "‌ھێندە خێرا لێمەخوڕە!", // drive
            onPressedBritish: () => speakdrives1("en-GB"),
            onPressedAmerican: () => speakdrives1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Can you drive?",
            kurdishText: "دەتوانیت شۆفێری بکەیت؟",
            onPressedBritish: () => speakdrives2("en-GB"),
            onPressedAmerican: () => speakdrives2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Shall we drive (= go there by car) or go by train?",
            kurdishText: "شۆفێری بکەین یان بە ئۆتۆمبێل بچین؟",
            onPressedBritish: () => speakdrives3("en-GB"),
            onPressedAmerican: () => speakdrives3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He drives a taxi (= that is his job).",
            kurdishText: "شۆفێری تاکسییە.",
            onPressedBritish: () => speakdrives4("en-GB"),
            onPressedAmerican: () => speakdrives4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was arrested for driving recklessly.",
            kurdishText: "دەستگیرکرا بۆ شۆفێری کردن بە ھەڵەشانەوە.",
            onPressedBritish: () => speakdrives5("en-GB"),
            onPressedAmerican: () => speakdrives5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) بردنی کەسێک بۆ شوێنێک بە ئۆتۆمبێل، تەکسی، ھتد"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Could you drive me home?",
            kurdishText: "دەتوانیت بمگەیەنیتە ماڵەوە؟",
            onPressedBritish: () => speakdrives6("en-GB"),
            onPressedAmerican: () => speakdrives6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "My mother drove us to the airport.",
            kurdishText: "دایکم گەیاندمانی بە فڕۆکەخانەکە.",
            onPressedBritish: () => speakdrives7("en-GB"),
            onPressedAmerican: () => speakdrives7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They were driven to an unknown place in the hills.",
            kurdishText: "بردران بۆ شوێنێکی نەزانراو لە گردەکان.",
            onPressedBritish: () => speakdrives8("en-GB"),
            onPressedAmerican: () => speakdrives8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I don't want to take the bus. Will you drive me?",
            kurdishText: "نامەوێت بە پاسەکە بچم. دەتوانیت بمبەیت؟",
            onPressedBritish: () => speakdrives9("en-GB"),
            onPressedAmerican: () => speakdrives9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) کە ئۆتۆمبێل بکەری ڕستەیە واتا کەسێک شۆفێری دەکات و ئۆتۆمبێلەکە بە ڕێگادا دەچێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "A stream of black cars drove by us.",
            kurdishText: "زنجیرە ئۆتۆمبێلێک تێپەڕین بە لاماندا.",
            onPressedBritish: () => speakdrives10("en-GB"),
            onPressedAmerican: () => speakdrives10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A car drove up to us and a man got out.",
            kurdishText: "ئۆتۆمبێلێک گەشتەوە پێمان و پیاوێک ھاتە دەرەوە.",
            onPressedBritish: () => speakdrives11("en-GB"),
            onPressedAmerican: () => speakdrives11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ھەبوون یان بەکارھێنانی جۆرێکی تایبەتی ئۆتۆمبێل"),
          const DividerSentences(),
          SentencesRow(
            englishText: "What car do you drive?",
            kurdishText: "چی ئۆتۆمبێلێکت ھەیە؟",
            onPressedBritish: () => speakdrives12("en-GB"),
            onPressedAmerican: () => speakdrives12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You need a special licence to drive a heavy goods vehicle.",
            kurdishText:
                "پێویستیت بە مۆڵەتی تایبەتە بۆ لێخوڕینی ئۆتۆمبێلی بارھەڵگری گەورە.",
            onPressedBritish: () => speakdrives13("en-GB"),
            onPressedAmerican: () => speakdrives13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) وا لە کەسێک بکەیت تووڕە، بێ‌ئۆقرە، ھتد بێت، یان وا بکەیت شتێکی توندوتیژ بکەن"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Hunger drove her to steal.",
            kurdishText: "برسێتی وایلێکرد دزی بکات.",
            onPressedBritish: () => speakdrives14("en-GB"),
            onPressedAmerican: () => speakdrives14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Those kids are driving me crazy.",
            kurdishText: "ئەو منداڵە خەریکە شێتم دەکەن.",
            onPressedBritish: () => speakdrives15("en-GB"),
            onPressedAmerican: () => speakdrives15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The situation has become so desperate that many are driven to suicide.",
            kurdishText:
                "دۆخەکە ھێندە خراپ بووە کە زۆر کەس پەنا دەبەنە بەر خۆکوشتن.",
            onPressedBritish: () => speakdrives16("en-GB"),
            onPressedAmerican: () => speakdrives16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) واکردنی ئەوەی کەسێک بە شێوەیەکی دیاریکراو مامەڵە بکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The urge to survive drove them on.",
            kurdishText: "ویستی مانەوە بەردەوامی پێدان.",
            onPressedBritish: () => speakdrives17("en-GB"),
            onPressedAmerican: () => speakdrives17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You're driving yourself too hard.",
            kurdishText: "زۆر پەستان دەخەیتە سەر خۆت.",
            onPressedBritish: () => speakdrives18("en-GB"),
            onPressedAmerican: () => speakdrives18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The work is driven by the need for information sharing.",
            kurdishText: "کارەکە بە پێویستی بەشکردنی زانیاری بەڕێوە دەچێت.",
            onPressedBritish: () => speakdrives19("en-GB"),
            onPressedAmerican: () => speakdrives19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) دابینکردنی ئەو ھێزەی کە وا دەکات ئامێرێک کاربکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The engine drives the wheels.",
            kurdishText: "بزوێنەرەکە کار بە ویلەکان دەکات.",
            onPressedBritish: () => speakdrives20("en-GB"),
            onPressedAmerican: () => speakdrives20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Water drives the turbines that produce electricity.",
            kurdishText: "ئاو تۆڕبینەکان دەخاتەکار کە کارەبا بەرھەمدەھێنن.",
            onPressedBritish: () => speakdrives21("en-GB"),
            onPressedAmerican: () => speakdrives21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) واکردنی ئەوەی کەسێک/شتێک بە ئاراستەیەکی دیاریکراودا بچێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The enemy was driven back.",
            kurdishText: "دووژمن پاشەکشەی پێکرا.",
            onPressedBritish: () => speakdrives22("en-GB"),
            onPressedAmerican: () => speakdrives22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) ھەبوونی کاریگەری لەسەر شتێک یان وا بکەیت کە بەرەوپێش بچێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "This is the main factor driving investment in the area.",
            kurdishText:
                "ئەمە ھۆکاری سەرەکییە کە وەبەرھێنان لە ناوچەکە بەرەوپێش دەبات.",
            onPressedBritish: () => speakdrives23("en-GB"),
            onPressedAmerican: () => speakdrives23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A key factor driving growth was the launch of convenient products.",
            kurdishText:
                "ھۆکارێکی سەرەکی کە گەشەکردن بەڕێوە دەبات پەرەپێدانی بەرھەمە کارخۆشەکان بوو.",
            onPressedBritish: () => speakdrives24("en-GB"),
            onPressedAmerican: () => speakdrives24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) زۆرکردن لە شتێک کە بە ئاراستەیەک یان شوێنێکی دیاریکراودا بچێت بە پاڵنانی، لێدانی، ھتد"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The knife had been driven through his heart.",
            kurdishText: "چەقۆیەکە کرابوو بە دڵیدا.",
            onPressedBritish: () => speakdrives25("en-GB"),
            onPressedAmerican: () => speakdrives25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He took a wooden peg and drove it into the ground.",
            kurdishText: "مێخێکی دارینی برد و کوتای بە زەوییەکەدا.",
            onPressedBritish: () => speakdrives26("en-GB"),
            onPressedAmerican: () => speakdrives26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) کونکردنە شتێک بە بەکارھێنانی ھیز"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They drove a tunnel through the solid rock.",
            kurdishText: "تونێلێکیان لێدا بە گابەردە سەختەکەدا.",
            onPressedBritish: () => speakdrives27("en-GB"),
            onPressedAmerican: () => speakdrives27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) لێدان لە تۆپێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "From the free kick, Owen drove the ball straight at the keeper.",
            kurdishText:
                "لە لێدانە ئازادەکەوە، ئۆون تۆپەکەی ڕێک بەرەو گۆڵپارێزەکە ئاراستە کرد.",
            onPressedBritish: () => speakdrives28("en-GB"),
            onPressedAmerican: () => speakdrives28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (کردار) ھەڵگرتنی شتێک لەگەڵ خۆت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Huge waves drove the yacht onto the rocks.",
            kurdishText: "شەپۆلی گەورە یەختەکەیان کێشا بە بەردەکاندا.",
            onPressedBritish: () => speakdrives29("en-GB"),
            onPressedAmerican: () => speakdrives29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) کەوتن یان جوڵانی بە خێرایی و ھێزی زۆرەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The waves drove against the shore.",
            kurdishText: "شەپۆلەکان کێشایان بە کەنارەکەدا.",
            onPressedBritish: () => speakdrives30("en-GB"),
            onPressedAmerican: () => speakdrives30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) گەشتێک لە ئۆتۆمبێلێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Let's go for a drive.",
            kurdishText: "با بچین بۆ فڕەیەک.",
            onPressedBritish: () => speakdrives31("en-GB"),
            onPressedAmerican: () => speakdrives31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's a three-hour drive to London.",
            kurdishText: "بۆ لەندەن سێ کاتژمێر شۆفێری کردنە.",
            onPressedBritish: () => speakdrives32("en-GB"),
            onPressedAmerican: () => speakdrives32("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was tired after the long drive home.",
            kurdishText: "ماندوو بوو لە دوای شۆفێریکردنی درێژخایەنی بۆ ماڵەوە.",
            onPressedBritish: () => speakdrives33("en-GB"),
            onPressedAmerican: () => speakdrives33("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٦. (ناو) ئەو ئامێرانەی کە وزە لە بزوێنەرەو بۆ ویلەکان دەگوازنەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "He uses a car with left-hand drive (= in which the driver sits in the seat on the left).",
            kurdishText: "ئۆتۆمبێلێکی سوکان چەپ بەکاردێنێت.",
            onPressedBritish: () => speakdrives34("en-GB"),
            onPressedAmerican: () => speakdrives34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٧. (ناو) لە ئۆتۆمبێلی گێڕ ئۆتۆماتیکدا ئەو کاتەیە کە گێڕەکە لەسەر پیتی D دەبێت و تێیدا گێڕەکان لەکاردان و بزوێنەرەکە دەکرێت ھێز بنێرێت بۆ ویلەکان"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He jumped in, put the car in drive and set off.",
            kurdishText:
                "ھەڵیکوتایە ناو، ئۆتۆمبێلەکەی خستە سەر و D و بۆی دەرچوو.",
            onPressedBritish: () => speakdrives35("en-GB"),
            onPressedAmerican: () => speakdrives35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٨. (ناو) ڕێگایەک کە لەسەر ڕێگای گشتییەوە دێت بەرەو خانوویەک"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: driveway"),
          SentencesRow(
            englishText: "There were two cars parked in the drive.",
            kurdishText: "دوو ئۆتۆمبێل لە درایڤەکە وەستابوون.",
            onPressedBritish: () => speakdrives36("en-GB"),
            onPressedAmerican: () => speakdrives36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) ھەوڵێکی ڕێکخراو لەلایەن گرووپێک کەسەوە بۆ کردنی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The party spearheaded the drive for independence.",
            kurdishText: "پارتەکە سەرمەشقی ھەوڵەکانی سەربەخۆیی بوو.",
            onPressedBritish: () => speakdrives37("en-GB"),
            onPressedAmerican: () => speakdrives37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٠. (ناو) وزە و ورەی کەسێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The treatment should not affect your sex drive or fertility.",
            kurdishText:
                "چارەسەرەکە نابێت کاریگەری لەسەر حەزی سێکسی و توانای وەچەخستنەوەت ھەبێت.",
            onPressedBritish: () => speakdrives38("en-GB"),
            onPressedAmerican: () => speakdrives38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢١. (ناو) حەزێکی زۆر بۆ کردنی شتێک یان بەدەستھێنانی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He'll do very well—he has tremendous drive.",
            kurdishText: "زۆر باش دەبێت ـ گوڕوتین مەزنی ھەیە.",
            onPressedBritish: () => speakdrives39("en-GB"),
            onPressedAmerican: () => speakdrives39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٢. (ناو) لێدانێکی بەھێز"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Cole scored with a thunderous left-foot drive.",
            kurdishText:
                "کۆوڵ بە لێدانێکی برووسکەئاسای قاچی چەپ گۆڵی تۆمارکرد.",
            onPressedBritish: () => speakdrives40("en-GB"),
            onPressedAmerican: () => speakdrives40("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٣. (ناو) بەشێکی کۆمپیوتەر کە زانیاری ھەڵدەگرێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The computer has a built-in DVD drive.",
            kurdishText: "کۆمپیوتەرەکە درایڤێکی دی‌ڤی‌دی ناوەکی ھەیە.",
            onPressedBritish: () => speakdrives41("en-GB"),
            onPressedAmerican: () => speakdrives41("en-US"),
          ),
          // drives4200"),
          // speakdrives42
          // drives42
          // drives4300"),
          // speakdrives43
          // drives43
          // drives4400"),
          // speakdrives44
          // drives44
          // drives4500"),
          // speakdrives45
          // drives45
          // drives4600"),
          // speakdrives46
          // drives46
          // drives4700"),
          // speakdrives47
          // drives47
          // drives4800"),
          // speakdrives48
          // drives48
          // drives4900"),
          // speakdrives49
          // drives49
          // drives_6000"),
          // speakdrives50
          // drives50
          // drives5100"),
          // speakdrives51
          // drives51
          // drives5200"),
          // speakdrives52
          // drives52
          // drives5300"),
          // speakdrives53
          // drives53
          // drives5400"),
          // speakdrives54
          // drives54
          // drives5500"),
          // speakdrives55
          // drives55
          // drives5600"),
          // speakdrives56
          // drives56
          // drives5700"),
          // speakdrives57
          // drives57
          // drives5800"),
          // speakdrives58
          // drives58
          // drives5900"),
          // speakdrives59
          // drives59
          // drives6000"),
          // speakdrives60
          // drives60
          // drives6100"),
          // speakdrives61
          // drives61("en-US"),
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
- Verb: drive (derived forms: driving, drives, driven, drove)
1. (driving) operate or control a vehicle
"drive a car or bus"; "Can you drive this four-wheel truck?"
 
2. (driving) travel or be transported in a vehicle (= motor)
"We drove to the university every morning";
 
3. Cause someone or something to move by driving
"She drove me to school every day"; "We drove the car to the garage"
 
4. Force into or from an action or state, either physically or metaphorically (= force, ram)
"He drives me mad";
 
5. To compel or force or urge relentlessly or exert coercive pressure on, or motivate strongly
 
6. Cause to move back by force or influence (= repel, repulse, force back, push back, beat back)
"drive the enemy";
 
7. Compel somebody to do something, often against his own will or judgment
"She finally drove him to change jobs"
 
8. Push, propel, or press with force
"Drive a nail into the wall"
 
9. Cause to move rapidly by striking or throwing with force
"drive the ball far out into the field"
 
10. Strive and make an effort to reach a goal (= tug, labor [US], labour [Brit, Cdn], push, plow [US], plough on [Brit], plow on [US], plough [Brit], sweat)
"She is driving away at her doctoral thesis";
 
11. Move into a desired direction of discourse (= get, aim)
"What are you driving at?";
 
12. Have certain properties when driven (= ride)
"My new truck drives well";
 
13. Work as a driver
"He drives a bread truck"; "She drives for the taxi company in Newark"
 
14. Move by being propelled by a force
"The car drove around the corner"
 
15. Urge forward
"drive the cows into the barn"
 
16. (driving) proceed along in a vehicle (= take)
"We drive the turnpike to work";
 
17. (golf) strike with a driver, as in teeing off
"drive a golf ball"
 
18. (sport) hit very hard, as by swinging a bat horizontally
"drive a ball"
 
19. (mining) excavate horizontally
"drive a tunnel"
 
20. Cause to function by supplying the force or power for or by controlling
"The amplifier drives the tube"; "steam drives the engines"; "this device drives the disks for the computer"
 
21. (hunting) search for game
"drive the forest"
 
22. (hunting) chase from cover into more open ground
"drive the game"

- Noun: drive (derived forms: drives)
1. The act of applying force to propel something (= thrust, driving force)
"after reaching the desired velocity the drive is cut off";
 
2. A mechanism by which force or power is transmitted in a machine
"a variable speed drive permitted operation through a range of speeds"
 
3. A series of actions advancing a principle or tending toward a particular end (= campaign, cause, crusade, movement, effort)
"the team was ready for a drive toward the pennant";
 
4. A road leading up to a private house (= driveway, private road)
"they parked in the drive";
 
5. The trait of being highly motivated
"his drive and energy exhausted his co-workers"
 
6. Hitting a golf ball off of a tee with a driver (= driving)
"he sliced his drive out of bounds";
 
7. The act of driving a herd of animals overland
 
8. A journey in a vehicle (usually an automobile) (= ride)
"he took the family for a drive in his new car";
 
9. A physiological state corresponding to a strong need or desire
 
10. (computing) a device that writes data onto or reads data from a storage medium
 
11. A wide scenic road planted with trees (= parkway [N. Amer])
"the riverside drive offers many exciting scenic views";
 
12. (sport) a hard straight return (as in tennis or squash)
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

  final String _videoId = 'ipQ1c6jTjIc';
  final double _startSeconds = 146;

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

  final String _videoId = 'gFuEoxh5hd4';
  final double _startSeconds = 856;

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

  final String _videoId = 'DkSMrI86NWk';
  final double _startSeconds = 12;

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

  final String _videoId = 'DgAoy7XaFgk';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 486;

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

  final String _videoId = 'aAByKcPJ5NQ';
  final double _startSeconds = 58;

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

  final String _videoId = 'PgeLL3baD_Y';
  final double _startSeconds = 90;

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