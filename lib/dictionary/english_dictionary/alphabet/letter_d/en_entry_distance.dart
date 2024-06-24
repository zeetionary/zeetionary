import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydistance extends StatefulWidget {
  const EnglishEntrydistance({super.key});

  @override
  State<EnglishEntrydistance> createState() => _EnglishEntrydistanceState();
}

class _EnglishEntrydistanceState extends State<EnglishEntrydistance> {
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
  final String keyword = "distance";
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
    return const EntryTitle(word: "distance");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: distance");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪstəns/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdistance(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("distance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdistance("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪstəns/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdistance(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("distance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdistance("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdistances1(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Paul has to drive very long distances as part of his job.");
  }

  Future<void> speakdistances2(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What’s the distance from New York City to Boston?");
  }

  Future<void> speakdistances3(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The wind carries pollen over considerable distances.");
  }

  Future<void> speakdistances4(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The beach is within walking distance of my house.");
  }

  Future<void> speakdistances5(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In the US, distance is measured in miles.");
  }

  Future<void> speakdistances6(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Distance is no problem on the internet.");
  }

  Future<void> speakdistances7(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They don't see their family because of geographical distance.");
  }

  Future<void> speakdistances8(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("No time or distance can limit this type of friendship.");
  }

  Future<void> speakdistances9(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'll never get the ball in from that distance.");
  }

  Future<void> speakdistances10(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cat sat and watched us from a safe distance.");
  }

  Future<void> speakdistances11(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Visitors can only view the painting from a distance of three metres.");
  }

  Future<void> speakdistances12(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The distance between fashion and art remains as great as ever.");
  }

  Future<void> speakdistances13(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government is keen to put some distance between itself and these events.");
  }

  Future<void> speakdistances14(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eddie is, by some distance, the funniest character in the show.");
  }

  Future<void> speakdistances15(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The coldness and distance in her voice took me by surprise.");
  }

  Future<void> speakdistances16(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a growing distance between the two sides of the family.");
  }

  Future<void> speakdistances17(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When he retired, he tried to distance himself from politics.");
  }

  Future<void> speakdistances18(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has tried to distance itself from the remarks made by some of its employees.");
  }

  Future<void> speakdistances19(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her mother wished to distance her from the rough village children.");
  }

  Future<void> speakdistances20(String languageCode) async {
    // DOPSUM: CHANGE speakdistance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These narrative techniques actually distance the reader from the story.");
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
کوردی: ڕێگا، مەودا، دووری، دۆژ، دوورەوە، جیاوازی، ماوە،	ساردی، ساردوسڕی، نەدوێنی، کەم‌قسەیی، نەمرچی،	کاکی‌بەکاکی، چۆڵگە، چۆڵەوار، دەشت
"""),
          const DefinitionKurdish(text: "١. (ناو) مەودای نێوان دوو کەس یان شت"),
          SentencesRow(
            englishText:
                "Paul has to drive very long distances as part of his job.",
            kurdishText:
                "پاوڵ دەبێت مەودای زۆر ببڕێت وەک بەشێک لە کارەکەی.", // distance
            onPressedBritish: () => speakdistances1("en-GB"),
            onPressedAmerican: () => speakdistances1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What’s the distance from New York City to Boston?",
            englishNote:
                "Also: What’s the distance between New York City and Boston?",
            kurdishText: "مەودای نێوان نیویۆرک و بۆستن چەندە؟",
            onPressedBritish: () => speakdistances2("en-GB"),
            onPressedAmerican: () => speakdistances2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The wind carries pollen over considerable distances.",
            kurdishText: "با ھەڵاڵە بەسەر مەودای بەرچاودا دەبات.",
            onPressedBritish: () => speakdistances3("en-GB"),
            onPressedAmerican: () => speakdistances3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The beach is within walking distance of my house (= you can walk there easily).",
            kurdishText: "کەنارەکە ھێندەی دووری بەپێ‌چوون دوورە لە ماڵەکەمەوە.",
            onPressedBritish: () => speakdistances4("en-GB"),
            onPressedAmerican: () => speakdistances4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In the US, distance is measured in miles.",
            kurdishText: "لە ئەمریکا دووری بە میل دەپێورێت.",
            onPressedBritish: () => speakdistances5("en-GB"),
            onPressedAmerican: () => speakdistances5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەوەی کە دوور بێت بەپێی کات یان مەودا"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Distance is no problem on the internet.",
            kurdishText: "دووری لەسەر ئینتەرنێت کێشە نییە.",
            onPressedBritish: () => speakdistances6("en-GB"),
            onPressedAmerican: () => speakdistances6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They don't see their family because of geographical distance.",
            kurdishText: "خێزانەکەیان نابینن بەھۆی دووری جوگرافییەوە.",
            onPressedBritish: () => speakdistances7("en-GB"),
            onPressedAmerican: () => speakdistances7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "No time or distance can limit this type of friendship.",
            kurdishText:
                "ھیچ کات یان مەودایەک ئەم جۆرە ھاوڕێیەتییە سنووردار ناکات.",
            onPressedBritish: () => speakdistances8("en-GB"),
            onPressedAmerican: () => speakdistances8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) خاڵێک کە بە ڕێژەیەکی دیاریکراو دوورە لە شتێکی ترەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "You'll never get the ball in from that distance.",
            kurdishText: "ھەرگیز لەو دوورییەوە تۆپەکە تێناخەیت.",
            onPressedBritish: () => speakdistances9("en-GB"),
            onPressedAmerican: () => speakdistances9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The cat sat and watched us from a safe distance.",
            kurdishText:
                "پشیلەکە لە دوورییەکی سەلامەتەوە دانیشت و سەیرمانی کرد.",
            onPressedBritish: () => speakdistances10("en-GB"),
            onPressedAmerican: () => speakdistances10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Visitors can only view the painting from a distance of three metres.",
            kurdishText:
                "سەردانکەران دەتوانن تابلۆکە ببینن تەنھا لە دووری سێ مەترەوە.",
            onPressedBritish: () => speakdistances11("en-GB"),
            onPressedAmerican: () => speakdistances11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) جیاوازی یان نەبوونی پەیوەندی نێوان دوو شت"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The distance between fashion and art remains as great as ever.",
            kurdishText: "مەودای نێوان فاشن و ھونەر وەک ھەمیشە زۆرە.",
            onPressedBritish: () => speakdistances12("en-GB"),
            onPressedAmerican: () => speakdistances12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The government is keen to put some distance between itself and these events (= show that there is no connection between them).",
            kurdishText:
                "حکومەت مەیلی ھەیە ھەندێک مەودا بخاتە نێوان خۆی و ئەم ڕووداوانەوە.",
            onPressedBritish: () => speakdistances13("en-GB"),
            onPressedAmerican: () => speakdistances13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Eddie is, by some distance (= by a great amount), the funniest character in the show.",
            kurdishText:
                "ئێدی بە مەودایەکی زۆر پێکەناویترین کارەکتەری بەرنامەکەیە.",
            onPressedBritish: () => speakdistances14("en-GB"),
            onPressedAmerican: () => speakdistances14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) دۆخێک کە تێیدا کەمی ھەستی ھاوڕێیەتی یان پەیوەندیی نزیک ھەیە لە نێوان دوو کەس یان گرووپدا"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The coldness and distance in her voice took me by surprise.",
            kurdishText: "ساردوسڕی و مڕومۆچی لە دەنگیدا تووشی سوپرایزی کردم.",
            onPressedBritish: () => speakdistances15("en-GB"),
            onPressedAmerican: () => speakdistances15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was a growing distance between the two sides of the family.",
            kurdishText:
                "دابڕانێکی تەشەنەکردوو ھەبوو لە نێوان دوو لایەنەکەی خێزانەکەدا.",
            onPressedBritish: () => speakdistances16("en-GB"),
            onPressedAmerican: () => speakdistances16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) ئەوەی کە کەمتر تێکەڵ بیت لەگەڵ کەسێک/شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "When he retired, he tried to distance himself from politics.",
            kurdishText: "کە خانەنشین بوو ھەوڵیدا خۆی لە سیاسەت دووربخاتەوە.",
            onPressedBritish: () => speakdistances17("en-GB"),
            onPressedAmerican: () => speakdistances17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The company has tried to distance itself from the remarks made by some of its employees.",
            kurdishText:
                "کۆمپانیاکە ھەوڵیداوە خۆی بێبەری بکات لەو لێدوانانەی کە لەلایەن ھەندێک کارمەندییەوە دراوە.",
            onPressedBritish: () => speakdistances18("en-GB"),
            onPressedAmerican: () => speakdistances18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) دوورخستنەوەی کەسێک/شتێک لە کەسێک/شتێک یان ئەوەی پەیوەندیی نێوانیان نەھێڵیت"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Her mother wished to distance her from the rough village children.",
            kurdishText:
                "دایکی ھەوڵیدا دووری بخاتەوە لە منداڵە توندوتیژەکانی گوند.",
            onPressedBritish: () => speakdistances19("en-GB"),
            onPressedAmerican: () => speakdistances19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "These narrative techniques actually distance the reader from the story.",
            kurdishText:
                "تەکنیکەکانی گێڕانەوە لە ڕاستیدا خوێنەر لە چیرۆکەکە دادەبڕن.",
            onPressedBritish: () => speakdistances20("en-GB"),
            onPressedAmerican: () => speakdistances20("en-US"),
          ),
          // distances2100"),
          // speakdistances21
          // distances21("en-US"),
          // distances2200"),
          // speakdistances22
          // distances22("en-US"),
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
- Noun: distance (derived forms: distances)
1. The property created by the space between two objects or points
 
2. A distant region
"I could see it in the distance"
 
3. Size of the gap between two places (= length)
"the distance from New York to Chicago";
 
4. Indifference by personal withdrawal (= aloofness)
"emotional distance";
 
5. The interval between two times (= space)
"the distance from birth to death";
 
6. A remote point in time
"if that happens it will be at some distance in the future"; "at a distance of ten years he had forgotten many of the details"

- Verb: distance 
1. Keep at a distance
"we have to distance ourselves from these events in order to continue living"
 
2. Go far ahead of (= outdistance, outstrip)
"He distanced the other runners";
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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 134;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 155;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 523;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1353;

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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 304;

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

  final String _videoId = 'MPS2fwRMFgM';
  final double _startSeconds = 109;

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

  final String _videoId = 'F-Z3qNeZyTU';
  final double _startSeconds = 0;

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