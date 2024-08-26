import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydivide extends StatefulWidget {
  const EnglishEntrydivide({super.key});

  @override
  State<EnglishEntrydivide> createState() => _EnglishEntrydivideState();
}

class _EnglishEntrydivideState extends State<EnglishEntrydivide> {
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
  final String keyword = "divide";
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
    return const EntryTitle(word: "divide");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: divide");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈvaɪd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivide(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("divide");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdivide("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈvaɪd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivide(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("divide");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdivide("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdivides1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The cells began to divide rapidly.");
  }

  Future<void> speakdivides2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The questions divide into two categories: easy and hard.");
  }

  Future<void> speakdivides3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("After lunch we divided up for group discussions.");
  }

  Future<void> speakdivides4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I divided the class into four groups.");
  }

  Future<void> speakdivides5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book is divided into 11 sections.");
  }

  Future<void> speakdivides6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A sentence can be divided up into meaningful segments.");
  }

  Future<void> speakdivides7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They could not agree on how to divide the land.");
  }

  Future<void> speakdivides8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Jack divided up the rest of the cash.");
  }

  Future<void> speakdivides9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We divided the work between us.");
  }

  Future<void> speakdivides10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Profits were divided up among the staff.");
  }

  Future<void> speakdivides11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The money was divided equally among his sons.");
  }

  Future<void> speakdivides12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "As working parents we think carefully about how we divide our time.");
  }

  Future<void> speakdivides13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He divides his energies between politics and business.");
  }

  Future<void> speakdivides14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They divided their time between London and Boston.");
  }

  Future<void> speakdivides15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Where the path divides, keep right.");
  }

  Future<void> speakdivides16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The river divides into several channels.");
  }

  Future<void> speakdivides17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Can it ever be right to divide a mother from her child?");
  }

  Future<void> speakdivides18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A fence divides off the western side of the grounds.");
  }

  Future<void> speakdivides19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The English Channel divides England from France.");
  }

  Future<void> speakdivides20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's easy to divide by ten.");
  }

  Future<void> speakdivides21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("30 divided by 6 is 5.");
  }

  Future<void> speakdivides22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The children are learning how to multiply and divide.");
  }

  Future<void> speakdivides23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("5 divides into 30 6 times.");
  }

  Future<void> speakdivides24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This issue has bitterly divided the community.");
  }

  Future<void> speakdivides25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The building divides opinion.");
  }

  Future<void> speakdivides26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The party is deeply divided on this question.");
  }

  Future<void> speakdivides27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He offered advice on bridging cultural divides.");
  }

  Future<void> speakdivides28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Will this deepen the divide between the country's rich and poor?");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: جیاوازی، کێشە، ناکۆکی، ناتەبایی، ناسازی، کەلێن، سنوور،	خاڵی وەرچەرخان، ئاوەڕێژ، دابەشگەی ئاو
"""),
          const DefinitionKurdish(text: "١. (کردار) دابەشکردن"),
          SentencesRow(
            englishText: "The cells began to divide rapidly.",
            kurdishText: "خانەکان بەخێرایی دەستیان بە دابەشبوون کرد.",
            onPressedBritish: () => speakdivides1("en-GB"),
            onPressedAmerican: () => speakdivides1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "The questions divide into two categories: easy and hard.",
                    kurdishText:
                        "پرسیارەکان بەسەر دوو کۆمەڵەدا دابەشبوونە: ئاسان و سەخت.",
                    onPressedBritish: () => speakdivides2("en-GB"),
                    onPressedAmerican: () => speakdivides2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "After lunch we divided up for group discussions.",
                    kurdishText:
                        "دوای نانی نیوەڕۆ دابەش بووین بۆ گفتوگۆی گرووپی.",
                    onPressedBritish: () => speakdivides3("en-GB"),
                    onPressedAmerican: () => speakdivides3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "I divided the class into four groups.",
                    kurdishText: "پۆلەکەم بەسەر چوار گرووپدا دابەش کرد.",
                    onPressedBritish: () => speakdivides4("en-GB"),
                    onPressedAmerican: () => speakdivides4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The book is divided into 11 sections.",
                    kurdishText: "کتێبەکە بەسەر ١١ بەشدا دابەش بووە.",
                    onPressedBritish: () => speakdivides5("en-GB"),
                    onPressedAmerican: () => speakdivides5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "A sentence can be divided up into meaningful segments.",
                    kurdishText:
                        "ڕستەیەک دەکرێت بەسەر ژمارەیەک یەکەی واتاداردا دابەش بکرێت.",
                    onPressedBritish: () => speakdivides6("en-GB"),
                    onPressedAmerican: () => speakdivides6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) بەش‌بەشکردنی شتێک و دابەشکردنی بەسەر ژمارەیەک کەسدا "),
          SentencesRow(
            englishText: "They could not agree on how to divide the land.",
            kurdishText:
                "نەیاندەتوانی ڕێکبکەون لەسەر ئەوەی چۆن زەوییەکە دابەش بکەن.",
            onPressedBritish: () => speakdivides7("en-GB"),
            onPressedAmerican: () => speakdivides7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Jack divided up the rest of the cash.",
            kurdishText: "جاک باقی کاشەکەی دابەش کرد.",
            onPressedBritish: () => speakdivides8("en-GB"),
            onPressedAmerican: () => speakdivides8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We divided the work between us.",
            kurdishText: "کارەکەمان لە نێوانماندا دابەشکرد.",
            onPressedBritish: () => speakdivides9("en-GB"),
            onPressedAmerican: () => speakdivides9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Profits were divided up among the staff.",
            kurdishText: "قازانجەکان بەسەر ستافەکە دابەشکران.",
            onPressedBritish: () => speakdivides10("en-GB"),
            onPressedAmerican: () => speakdivides10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The money was divided equally among his sons.",
            kurdishText: "پارەکە بە یەکسانی بەسەر کوڕەکانیدا دابەشکرا.",
            onPressedBritish: () => speakdivides11("en-GB"),
            onPressedAmerican: () => speakdivides11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بەکارھێنانی بەشە جیاوازەکانی کاتت، وزەت، ھتد بۆ چالاکی و کاری جیاواز"),
          SentencesRow(
            englishText:
                "As working parents we think carefully about how we divide our time.",
            kurdishText:
                "وەک دایبابی ئیشکەر بە وریایی بیردەکەینەوە لەوەی چۆن کاتمان دابەش بکەین.",
            onPressedBritish: () => speakdivides12("en-GB"),
            onPressedAmerican: () => speakdivides12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He divides his energies between politics and business.",
            kurdishText: "وزەی بەسەر سیاسەت و کاردا دابەش دەکات.",
            onPressedBritish: () => speakdivides13("en-GB"),
            onPressedAmerican: () => speakdivides13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They divided their time between London and Boston.",
            kurdishText: "کاتیان لە نێوان لەندەن و بۆستندا بەسەر دەبرد.",
            onPressedBritish: () => speakdivides14("en-GB"),
            onPressedAmerican: () => speakdivides14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) دابەش بوون بەسەر دوو بەش یان زیاتر کە بە ئاراستەی جیاوازدا دەچن"),
          SentencesRow(
            englishText: "Where the path divides, keep right.",
            kurdishText: "لەو شوێنەی ڕێگاکە جیادەبێتەوە، بە ڕاستدا بچۆ.",
            onPressedBritish: () => speakdivides15("en-GB"),
            onPressedAmerican: () => speakdivides15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The river divides into several channels.",
            kurdishText: "ڕووبارەکە بۆ ژمارەیەک جۆگە دابەش دەبێت.",
            onPressedBritish: () => speakdivides16("en-GB"),
            onPressedAmerican: () => speakdivides16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) جیاکردنەوەی دوو شت یان کەس"),
          SentencesRow(
            englishText:
                "Can it ever be right to divide a mother from her child?",
            kurdishText:
                "ھەرگیز دەکرێت درووست بێت کە دایکێک لە منداڵەکەی جیابکەیتەوە؟",
            onPressedBritish: () => speakdivides17("en-GB"),
            onPressedAmerican: () => speakdivides17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بوون بە خاڵی جیاکەرەوەی دوو شت یان کەس"),
          SentencesRow(
            englishText: "A fence divides off the western side of the grounds.",
            kurdishText: "پەرژینێک لای ڕۆژئاوای زەوییەکان جیادەکاتەوە.",
            onPressedBritish: () => speakdivides18("en-GB"),
            onPressedAmerican: () => speakdivides18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The English Channel divides England from France.",
            kurdishText: "کەناڵی ئینگلیز ئینگلتەرە و فەرەنسا جیادکاتەوە.",
            onPressedBritish: () => speakdivides19("en-GB"),
            onPressedAmerican: () => speakdivides19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) دابەشکردن؛ دۆزینەوەی ئەوەی ژمارەیەک چەند جار ژمارەیەکی دیکە لەخۆدەگرێت"),
          SentencesRow(
            englishText: "It's easy to divide by ten.",
            kurdishText: "ئاسانە بەسەر ١٠ ـدا دابەش بکەیت.",
            onPressedBritish: () => speakdivides20("en-GB"),
            onPressedAmerican: () => speakdivides20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "30 divided by 6 is 5 (= 30 ÷ 6 = 5).",
            kurdishText: "٣٠ دابەشی ٦ دەبێتە ٥.",
            onPressedBritish: () => speakdivides21("en-GB"),
            onPressedAmerican: () => speakdivides21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The children are learning how to multiply and divide.",
            kurdishText: "منداڵەکان فێردەبن چۆن لێکدان و دابەش بکەن.",
            onPressedBritish: () => speakdivides22("en-GB"),
            onPressedAmerican: () => speakdivides22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) کە دەکرێت لێکبدرێت بۆ بەدەستھێنانی ژمارەیەکی دیکە"),
          SentencesRow(
            englishText: "5 divides into 30 6 times.",
            kurdishText: "٥ شەش جار بەسەر ٣٠ ـدا دابەش دەکرێت.",
            onPressedBritish: () => speakdivides23("en-GB"),
            onPressedAmerican: () => speakdivides23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) وا لە خەڵکی بکەیت ناکۆک بن"),
          SentencesRow(
            englishText: "This issue has bitterly divided the community.",
            kurdishText: "ئەم بابەتە بە توندی کۆمەڵگەکەی دابەش کردووە.",
            onPressedBritish: () => speakdivides24("en-GB"),
            onPressedAmerican: () => speakdivides24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The building divides opinion (= some people like it and some do not).",
            kurdishText: "بیناکەکە ناکۆکی لەسەرە.",
            onPressedBritish: () => speakdivides25("en-GB"),
            onPressedAmerican: () => speakdivides25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The party is deeply divided on this question.",
            kurdishText: "پارتەکە بە قووڵی دابەش بووە لەسەر ئەم بابەتە.",
            onPressedBritish: () => speakdivides26("en-GB"),
            onPressedAmerican: () => speakdivides26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) جیاوازییەک کە دوو کەس یان شت لە یەکدی جیادەکاتەوە"),
          SentencesRow(
            englishText: "He offered advice on bridging cultural divides.",
            kurdishText:
                "ڕاوێژی پێشکەش کرد لەسەر کەمکردنەوەی جیاوازییە کەلتوورییەکان.",
            onPressedBritish: () => speakdivides27("en-GB"),
            onPressedAmerican: () => speakdivides27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Will this deepen the divide between the country's rich and poor?",
            kurdishText:
                "ئایا ئەمە جیاوازییەکانی نێوان دەوڵەمەند و ھەژار قووڵ دەکاتەوە؟",
            onPressedBritish: () => speakdivides28("en-GB"),
            onPressedAmerican: () => speakdivides28("en-US"),
          ),
          // divides29divides29
          // divides_30divides30
          // divides31divides31
          // divides32divides32
          // divides33divides33
          // divides34divides34
          // divides35divides35
          // divides36divides36
          // divides37divides37
          // divides38divides38
          // divides39divides39
          // divides_40divides40
          // divides41divides41
          // divides42divides42
          // divides43divides43
          // divides44divides44
          // divides45divides45
          // divides46divides46
          // divides47divides47
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
- Verb: divide (derived forms: divided, dividing, divides)
1. Separate into parts or portions (= split, split up, separate, dissever, carve up)
"divide the cake into three equal parts";
 
2. (arithmetic) perform a division (= fraction)
"Can you divide 49 by seven?";
 
3. Act as a barrier between; stand between (= separate)
"The mountain range divides the two countries";
 
4. Move or break apart (= separate, part)
 
5. Make a division or separation (= separate)
 
6. Force, take, or pull apart (= separate, disunite, part)
"He divided the fighting children";

- Noun: divide 
1. A serious disagreement between two groups of people (typically producing tension or hostility)
 
2. A ridge of land that separates two adjacent river systems (= watershed, water parting)
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'o0n4oQUMiHs';
  final double _startSeconds = 92;

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

  final String _videoId = 'bq4UUfi35qI';
  final double _startSeconds = 352;

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

  final String _videoId = 'd-ZTMi4k4MM';
  final double _startSeconds = 65;

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

  final String _videoId = '2bplCvAM2Kg';
  final double _startSeconds = 261;

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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 574;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 1518;

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

  final String _videoId = '0jltioeaEyY';
  final double _startSeconds = 671;

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