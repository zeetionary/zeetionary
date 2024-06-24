import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydown extends StatefulWidget {
  const EnglishEntrydown({super.key});

  @override
  State<EnglishEntrydown> createState() => _EnglishEntrydownState();
}

class _EnglishEntrydownState extends State<EnglishEntrydown> {
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
  final String keyword = "down";
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
    return const EntryTitle(word: "down");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: down");
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
    return const IPAofEnglish(text: "IpaUK: /daʊn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdown(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("down");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdown("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daʊn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdown(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("down");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdown("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdowns1(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She jumped down off the chair.");
  }

  Future<void> speakdowns2(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He looked down at her.");
  }

  Future<void> speakdowns3(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We watched as the sun went down.");
  }

  Future<void> speakdowns4(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She bent down to pick up her glove.");
  }

  Future<void> speakdowns5(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Mary's not down yet.");
  }

  Future<void> speakdowns6(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had to go and lie down for a while.");
  }

  Future<void> speakdowns7(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Prices have gone down recently.");
  }

  Future<void> speakdowns8(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're already two goals down.");
  }

  Future<void> speakdowns9(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Turn the music down!");
  }

  Future<void> speakdowns10(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The class settled down and she began the lesson.");
  }

  Future<void> speakdowns11(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did you get that down?");
  }

  Future<void> speakdowns12(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I always write everything down.");
  }

  Future<void> speakdowns13(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you got me down for the trip?");
  }

  Future<void> speakdowns14(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't do 3 down.");
  }

  Future<void> speakdowns15(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They flew down to Texas.");
  }

  Future<void> speakdowns16(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Houses are more expensive down south.");
  }

  Future<void> speakdowns17(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got people from the head office coming down.");
  }

  Future<void> speakdowns18(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her daughter's down from Oxford for the holidays.");
  }

  Future<void> speakdowns19(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Everyone will be there, from the Principal down.");
  }

  Future<void> speakdowns20(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At the end of the day we were £20 down.");
  }

  Future<void> speakdowns21(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I gave him £1,000 down, and paid the rest in instalments.");
  }

  Future<void> speakdowns22(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Well, I've seen six apartments so far. That's six down and four to go!");
  }

  Future<void> speakdowns23(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I saw him down at the shops.");
  }

  Future<void> speakdowns24(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The stone rolled down the hill.");
  }

  Future<void> speakdowns25(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tears ran down her face.");
  }

  Future<void> speakdowns26(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her hair hung down her back to her waist.");
  }

  Future<void> speakdowns27(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He lives just down the street.");
  }

  Future<void> speakdowns28(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Go down the road till you reach the traffic lights.");
  }

  Future<void> speakdowns29(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a bridge a mile down the river from here.");
  }

  Future<void> speakdowns30(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These myths have come down to us from prehistoric times.");
  }

  Future<void> speakdowns31(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We downed our coffees and left.");
  }

  Future<void> speakdowns32(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Storms downed trees and power lines.");
  }

  Future<void> speakdowns33(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The down escalator isn't working.");
  }

  Future<void> speakdowns34(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Click the down arrow.");
  }

  Future<void> speakdowns35(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I feel a bit down today.");
  }

  Future<void> speakdowns36(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You look a bit down. Is something the matter?");
  }

  Future<void> speakdowns37(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't let the weather get you down.");
  }

  Future<void> speakdowns38(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The system was down all morning.");
  }

  Future<void> speakdowns39(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She bought a down jacket to stay warm in winter.");
  }

  Future<void> speakdowns40(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We all have our downs from time to time.");
  }

  Future<void> speakdowns41(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her career has had a few downs this year.");
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
کوردی: خوارەوە، بۆ خوارەوە، بەرەو خوارەوە، دەمەوژێر، دەمەوخوار، ڕوولە خوارەوە، داـ، ڕۆ(وەکوو ڕۆچوون و…)، لەژێر، ژێر، لەسەر عەرز، بەرەو عەرز،	پەنچەر، کەم‌با،	دواوە، پشتەوە،	خواروو، خوارەوە، لای خوار،	تەواوکراو، جێبەجێ‌کراو، کراو،	ناڕەحەت، خەمبار، دڵتەنگ، مات،	نەخۆش، ناساز، نەرمەپەڕ، وردەپەڕ، پەڕی نەرم، کوڵکە، گەندەموو، تووکی نەرم،	ھاتنەخوارێ، داکەوتن، کڵۆڵی، ڕۆژەڕەشی، نەھاتی، مەینەتی، نەگبەتی
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵکار) لە خوارەوە"),
          SentencesRow(
            englishText: "She jumped down off the chair.",
            kurdishText: "لە کورسییەکە بازی دایە خوارەوە.", // down
            onPressedBritish: () => speakdowns1("en-GB"),
            onPressedAmerican: () => speakdowns1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He looked down at her.",
            kurdishText: "سەیری خوارەوەی کرد بۆ لای.",
            onPressedBritish: () => speakdowns2("en-GB"),
            onPressedAmerican: () => speakdowns2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We watched as the sun went down.",
            kurdishText: "سەیرمان کرد کە خۆرئاوا بوو.",
            onPressedBritish: () => speakdowns3("en-GB"),
            onPressedAmerican: () => speakdowns3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She bent down to pick up her glove.",
            kurdishText: "چەمایەوە بۆ ھەڵگرتنەوەی دەستکێشەکەی.",
            onPressedBritish: () => speakdowns4("en-GB"),
            onPressedAmerican: () => speakdowns4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Mary's not down yet (= she is still upstairs).",
            kurdishText: "ماری ھێشتا نەھاتووەتە خوارەوە.",
            onPressedBritish: () => speakdowns5("en-GB"),
            onPressedAmerican: () => speakdowns5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵکار) لە ھەستانەوە بۆ دابەزین"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He had to go and lie down for a while.",
            kurdishText: "پێویست بوو بچێت و کەمێک ڕابکشێت.",
            onPressedBritish: () => speakdowns6("en-GB"),
            onPressedAmerican: () => speakdowns6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵکار) بۆ ئاستێکی کەمتر"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Prices have gone down recently.",
            kurdishText: "نرخەکان تازەگی دابەزیون.",
            onPressedBritish: () => speakdowns7("en-GB"),
            onPressedAmerican: () => speakdowns7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We're already two goals down (= the other team has two goals more).",
            kurdishText: "پێشوەختە دوو گۆڵ لە دواوە بووین.",
            onPressedBritish: () => speakdowns8("en-GB"),
            onPressedAmerican: () => speakdowns8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵکار) بۆ وتنی ئەوەی بڕ یان ھێزی شتێک کەمترە، یان ئەوەی چالاکی کەمتر ھەیە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Turn the music down!",
            kurdishText: "میوزیکەکە کز بکە!",
            onPressedBritish: () => speakdowns9("en-GB"),
            onPressedAmerican: () => speakdowns9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The class settled down and she began the lesson.",
            kurdishText: "پۆلەکە دانیشتن و دەستی بە وانەکە کرد.",
            onPressedBritish: () => speakdowns10("en-GB"),
            onPressedAmerican: () => speakdowns10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵکار) لەسەر کاغەز؛ لە لیستێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Did you get that down?",
            kurdishText: "ئەوەت نووسی؟",
            onPressedBritish: () => speakdowns11("en-GB"),
            onPressedAmerican: () => speakdowns11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I always write everything down.",
            kurdishText: "ھەمیشە ھەموو شتێک دەنووسم.",
            onPressedBritish: () => speakdowns12("en-GB"),
            onPressedAmerican: () => speakdowns12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Have you got me down for the trip?",
            kurdishText: "بۆ گەشتەکە ناومت نووسیوە؟",
            onPressedBritish: () => speakdowns13("en-GB"),
            onPressedAmerican: () => speakdowns13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ھاوەڵکار) خوێندنەوە لە سەرەوە بۆ خوارەوە، نەک لە لایەک بۆ لایەکەی دیکە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I can't do 3 down.",
            kurdishText: "ناتوانم سێیەم بۆ خوارەوە شیکار بکەم.",
            onPressedBritish: () => speakdowns14("en-GB"),
            onPressedAmerican: () => speakdowns14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵکار) بەرەو باشوور یان لە باشووری وڵاتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They flew down to Texas.",
            kurdishText: "بەرەو باشوور بۆ تێکساس فڕین.",
            onPressedBritish: () => speakdowns15("en-GB"),
            onPressedAmerican: () => speakdowns15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Houses are more expensive down south.",
            kurdishText: "خانوو گرانترە لە باشوور.",
            onPressedBritish: () => speakdowns16("en-GB"),
            onPressedAmerican: () => speakdowns16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ھاوەڵکار) لە شوێنێک گرنگەوە بۆ یەکێک کە بچووکترە یان کەمتر گرنگە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "We've got people from the head office coming down.",
            kurdishText:
                "کەسانی ئۆفیسی سەرەکی سەردانمان دەکەن (لە لقێکی لاوەکی).",
            onPressedBritish: () => speakdowns17("en-GB"),
            onPressedAmerican: () => speakdowns17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her daughter's down from Oxford (= Oxford University) for the holidays.",
            kurdishText: "کچەکەی لە ئۆکسفۆردەوە گەڕاوەتەوە بۆ پشووەکان.",
            onPressedBritish: () => speakdowns18("en-GB"),
            onPressedAmerican: () => speakdowns18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (ھاوەڵکار) بۆ پیشاندانی سنووری مەودایەک یان ڕیزبەندییەک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Everyone will be there, from the Principal down.",
            kurdishText: "ھەمووان لەوێ دەبن، لە بەڕێوەبەرەکەوە بۆ ئەوانی دیکە.",
            onPressedBritish: () => speakdowns19("en-GB"),
            onPressedAmerican: () => speakdowns19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ھاوەڵکار) لەدەستدانی بڕە پارەیەک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "At the end of the day we were £20 down.",
            kurdishText: "لە کۆتایی ڕۆژەکەدا ٢٠ پاوەندمان لەدەستدابوو.",
            onPressedBritish: () => speakdowns20("en-GB"),
            onPressedAmerican: () => speakdowns20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ھاوەڵکار) پێدانی بڕە پارەیەک وەک پێشەکی"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "I gave him £1,000 down, and paid the rest in instalments.",
            kurdishText:
                "١٠٠٠ پاوەندم وەک پێشەکی دا و ئەوەی دیکەم دواتر لە کاتی دانانی دا.",
            onPressedBritish: () => speakdowns21("en-GB"),
            onPressedAmerican: () => speakdowns21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ھاوەڵکار) بۆ گوتنی ئەوەی چەندی ئەو شتانەت کردووە کە لە لیستێک داتناون"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Well, I've seen six apartments so far. That's six down and four to go!",
            kurdishText:
                "باشە، تا ئێستا شەش دەستەژوورم دیوە. واتە شەش تەواو بووە و چوار ماوە.",
            onPressedBritish: () => speakdowns22("en-GB"),
            onPressedAmerican: () => speakdowns22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (ھاوەڵکار) لە شوێنێکی ناوخۆیی یان چوون بۆی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I saw him down at the shops.",
            kurdishText: "لە دووکانەکان بینیم.",
            onPressedBritish: () => speakdowns23("en-GB"),
            onPressedAmerican: () => speakdowns23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (ئامراز) بۆ خوارەوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The stone rolled down the hill.",
            kurdishText: "بەردەکە بە گردەکەدا غلۆربوویەوە.",
            onPressedBritish: () => speakdowns24("en-GB"),
            onPressedAmerican: () => speakdowns24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Tears ran down her face.",
            kurdishText: "فرمێسک بە چاویدا ھاتە خوارەوە.",
            onPressedBritish: () => speakdowns25("en-GB"),
            onPressedAmerican: () => speakdowns25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her hair hung down her back to her waist.",
            kurdishText: "قژی شۆڕبووبوویەوە بە پشتیدا تا کەمەری.",
            onPressedBritish: () => speakdowns26("en-GB"),
            onPressedAmerican: () => speakdowns26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ئامراز) بۆ ئەو ئاراستەیەی کە سەیری دەکەیت"),
          const DividerSentences(),
          SentencesRow(
            englishText: "He lives just down the street.",
            kurdishText: "کەمێک لە خوارەوەی شەقامەکەی دەژی.",
            onPressedBritish: () => speakdowns27("en-GB"),
            onPressedAmerican: () => speakdowns27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Go down the road till you reach the traffic lights.",
            kurdishText:
                "بە ڕێگاکاندا بچۆرە خوارەوە تاوەکو دەگەیت بە ترافیک لایتەکان.",
            onPressedBritish: () => speakdowns28("en-GB"),
            onPressedAmerican: () => speakdowns28("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There's a bridge a mile down the river from here.",
            kurdishText: "پردێک ھەیە یەک میل لێرەوە لە خوارەوەی ڕووبارەکە.",
            onPressedBritish: () => speakdowns29("en-GB"),
            onPressedAmerican: () => speakdowns29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ئامراز) تەواوی ماوەیەک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "These myths have come down to us from prehistoric times.",
            kurdishText:
                "ئەم ئەفسانانە بۆمان مونەتەوە لە سەردەمانی پێش مێژووەوە.",
            onPressedBritish: () => speakdowns30("en-GB"),
            onPressedAmerican: () => speakdowns30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٧. (کردار) تەواوکردنی خواردنەوەیەک یان خواردنی شتێک بە خێرایی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "We downed our coffees and left.",
            kurdishText: "قاوەکانمان ھەڵقوڕاند و ڕۆشتین.",
            onPressedBritish: () => speakdowns31("en-GB"),
            onPressedAmerican: () => speakdowns31("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (کردار) خستنی کەسێک/شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Storms downed trees and power lines.",
            kurdishText: "زریانەکان دارەکان و ھێڵەکانی کارەبایان کەواند.",
            onPressedBritish: () => speakdowns32("en-GB"),
            onPressedAmerican: () => speakdowns32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٩. (ھاوەڵناو) بەرەو خوارەوە یان دوور لە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The down escalator isn't working.",
            kurdishText: "پلیکانە کارەباییەکانی دابەزین کار ناکەن.",
            onPressedBritish: () => speakdowns33("en-GB"),
            onPressedAmerican: () => speakdowns33("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Click the down arrow.",
            kurdishText: "گرتە لە تیرەی خوارەوە بکە.",
            onPressedBritish: () => speakdowns34("en-GB"),
            onPressedAmerican: () => speakdowns34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٠. (ھاوەڵناو) دەڵتەنگ و خەمبار"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I feel a bit down today.",
            kurdishText: "ئەمڕۆ کەمێک ھەست بە خەمباری دەکەم.",
            onPressedBritish: () => speakdowns35("en-GB"),
            onPressedAmerican: () => speakdowns35("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You look a bit down. Is something the matter?",
            kurdishText: "کەساس دیاریت. ھیچ شت کێشەیە؟",
            onPressedBritish: () => speakdowns36("en-GB"),
            onPressedAmerican: () => speakdowns36("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Don't let the weather get you down.",
            kurdishText: "مەھێڵە کەشوھەوا دڵتەنگت بکات.",
            onPressedBritish: () => speakdowns37("en-GB"),
            onPressedAmerican: () => speakdowns37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢١. (ھاوەڵناو) کە کارناکات"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The system was down all morning.",
            kurdishText: "سیستەمەکە تەواوی بەیانییەکە کاری نەدەکرد.",
            onPressedBritish: () => speakdowns38("en-GB"),
            onPressedAmerican: () => speakdowns38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) پەڕی نەرمی باڵندە؛ مووی نەرم"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She bought a down jacket to stay warm in winter.",
            kurdishText:
                "چاکەتێکی نەرمەپەڕی کڕی بۆ مانەوە بە گەرمی لە زستاندا.",
            onPressedBritish: () => speakdowns39("en-GB"),
            onPressedAmerican: () => speakdowns39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٣. (ناو) ماوەیەک لە ھەستکردن بە نیگەرانی یان کە شتەکان باش نین"),
          const DividerSentences(),
          SentencesRow(
            englishText: "We all have our downs from time to time.",
            kurdishText: "ھەموومان ڕۆژەڕەشی خۆمان ھەیە ماوە ماوە.",
            onPressedBritish: () => speakdowns40("en-GB"),
            onPressedAmerican: () => speakdowns40("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her career has had a few downs this year.",
            kurdishText: "کارەکەی ژمارەیەک نەھاتی ھەبوو ئەمساڵ.",
            onPressedBritish: () => speakdowns41("en-GB"),
            onPressedAmerican: () => speakdowns41("en-US"),
          ),
          // downs4200"),
          // speakdowns42
          // downs42
          // downs4300"),
          // speakdowns43
          // downs43
          // downs4400"),
          // speakdowns44
          // downs44
          // downs4500"),
          // speakdowns45
          // downs45
          // downs4600"),
          // speakdowns46
          // downs46
          // downs4700"),
          // speakdowns47
          // downs47
          // downs4800"),
          // speakdowns48
          // downs48
          // downs4900"),
          // speakdowns49
          // downs49
          // downs_6000"),
          // speakdowns50
          // downs50
          // downs5100"),
          // speakdowns51
          // downs51
          // downs5200"),
          // speakdowns52
          // downs52
          // downs5300"),
          // speakdowns53
          // downs53
          // downs5400"),
          // speakdowns54
          // downs54
          // downs5500"),
          // speakdowns55
          // downs55
          // downs5600"),
          // speakdowns56
          // downs56
          // downs5700"),
          // speakdowns57
          // downs57
          // downs5800"),
          // speakdowns58
          // downs58
          // downs5900"),
          // speakdowns59
          // downs59
          // downs6000"),
          // speakdowns60
          // downs60
          // downs6100"),
          // speakdowns61
          // downs61
          // downs6200"),
          // speakdowns62
          // downs62
          // downs6300"),
          // speakdowns63
          // downs63
          // downs6400"),
          // speakdowns65
          // downs65
          // downs6600"),
          // speakdowns66
          // downs66
          // downs6700"),
          // speakdowns67
          // downs67
          // downs6800"),
          // speakdowns68
          // downs68
          // downs6900"),
          // speakdowns69
          // downs69
          // downs7000"),
          // speakdowns70
          // downs70
          // downs7100"),
          // speakdowns71
          // downs71
          // downs7200"),
          // speakdowns72
          // downs72
          // downs7300"),
          // speakdowns73
          // downs73
          // downs7400"),
          // speakdowns75
          // downs75
          // downs7700"),
          // speakdowns76
          // downs76
          // downs7700"),
          // speakdowns77
          // downs77
          // downs7800"),
          // speakdowns79
          // downs79
          // downs8000"),
          // speakdowns80
          // downs80
          // downs8100"),
          // speakdowns81
          // downs81
          // downs8200"),
          // speakdowns82
          // downs82
          // downs8300"),
          // speakdowns83
          // downs83
          // downs8400"),
          // speakdowns84
          // downs84("en-US"),
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
- Adverb: down
1. Spatially or metaphorically from a higher to a lower level or position (= downwards, downward, downwardly)
"don't fall down"; "rode the lift up and skied down";

2. Away from a more central or a more northerly place
"was sent down to work at the regional office"; "worked down on the farm"; "came down for the wedding"; "flew down to Florida"
 
3. Paid in cash at time of purchase
"put ten dollars down on the necklace"
 
4. From an earlier time
"the story was passed down from father to son"
 
5. To a lower intensity
"he slowly phased down the light until the stage was completely black"
 
6. In an inactive or inoperative state
"the factory went down during the strike"; "the computer went down again"

- Adjective: down 
1. Being or moving lower in position or less in some value
"lay face down"; "the moon is down"; "our team is down by a run"; "down by a pawn"; "the stock market is down today"
 
2. Extending or moving from a higher to a lower place (= downward)
"the down staircase";
 
3. Becoming progressively lower
"the down trend in the real estate market"
 
4. (baseball) being put out in a game of baseball
"two down in the bottom of the ninth"
 
5. Understood perfectly (= down pat, mastered)
"had his algebra problems down";
 
6. Lower than previously (= depressed)
"prices are down";
 
7. Shut
"the shades were down"
 
8. Not functioning (temporarily or permanently)
"we can't work because the computer is down"
 
9. Filled with melancholy and despondency (= gloomy, grim, blue [informal], depressed, dispirited, downcast, downhearted, down in the mouth, low, low-spirited)

- Verb: down (derived forms: downed, downing, downs)
Usage: informal
1. Drink down entirely (= toss off [informal], pop [informal], bolt down [informal], belt down [informal], pour down, drink down, kill [informal])
"He downed three martinis before dinner"; "They belted down a few beers after work"; "They poured down a few beers after work"; "They drank down a few beers after work"; "They bolted down a few beers after work";
 
2. Eat up completely, as with great appetite (= devour, demolish, consume, go through)
"Some people can down a pound of meat in the course of one meal";
 
3. (sport) bring down or defeat (an opponent)
 
4. Shoot at and force to come down (= shoot down, land)
"the enemy downed several of our aircraft";
 
5. Cause to come or go down (= knock down, cut down, push down, pull down)
"The policeman downed the heavily armed suspect"; "The mugger knocked down the old lady after she refused to hand over her wallet"; "The policeman cut down the heavily armed suspect";
 
6. Improve or perfect by pruning or polishing (= polish, refine, fine-tune)

- Noun: down (derived forms: downs)
1. Soft fine feathers (= down feather)
 
2. (American football) a complete play to advance the football
"you have four downs to gain ten yards"
 
3. (usually plural) a rolling treeless highland with little soil
 
4. Fine soft dense hair (as the fine short hair of cattle or deer or the wool of sheep or the undercoat of certain dogs) (= pile)

- Noun: Down (derived forms: Downs)
1. English physician who first described Down's syndrome (1828-1896) (= John Langdon Down, John L. H. Down)
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

  final String _videoId = 'e_04ZrNroTo';
  final double _startSeconds = 117;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 1021;

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

  final String _videoId = '1roy4o4tqQM';
  final double _startSeconds = 45;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 1021;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 408;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 506;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 466;

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