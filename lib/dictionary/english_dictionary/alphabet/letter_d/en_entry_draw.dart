import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydraw extends StatefulWidget {
  const EnglishEntrydraw({super.key});

  @override
  State<EnglishEntrydraw> createState() => _EnglishEntrydrawState();
}

class _EnglishEntrydrawState extends State<EnglishEntrydraw> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: CustomTabBarNew(
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
  final String keyword = "draw";
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
    return const EntryTitle(word: "draw");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: draw");
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
    return const IPAofEnglish(text: "IpaUK: /drɔː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraw(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("draw");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdraw("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /drɔː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraw(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("draw");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdraw("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraws1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You draw beautifully.");
  }

  Future<void> speakdraws2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drew a house.");
  }

  Future<void> speakdraws3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He drew a circle in the sand with a stick.");
  }

  Future<void> speakdraws4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The report drew a grim picture of inefficiency and corruption.");
  }

  Future<void> speakdraws5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Is it possible to draw inferences about the environment during the Bronze Age?");
  }

  Future<void> speakdraws6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What conclusions did you draw from the report?");
  }

  Future<void> speakdraws7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We can draw some lessons for the future from this accident.");
  }

  Future<void> speakdraws8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He attempted to draw a contrast between himself and the prime minister.");
  }

  Future<void> speakdraws9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The site's boundaries were drawn by the Department of the Environment.");
  }

  Future<void> speakdraws10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plan has drawn a lot of criticism.");
  }

  Future<void> speakdraws11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The announcement drew loud applause from the audience.");
  }

  Future<void> speakdraws12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The reforms drew widespread support from voters.");
  }

  Future<void> speakdraws13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Our aim is to draw attention to the plight of these children.");
  }

  Future<void> speakdraws14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The exhibition drew great critical attention.");
  }

  Future<void> speakdraws15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My eyes were drawn to the man in the corner.");
  }

  Future<void> speakdraws16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The movie is drawing large audiences.");
  }

  Future<void> speakdraws17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The events continue to draw huge crowds.");
  }

  Future<void> speakdraws18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The course draws students from all over the country.");
  }

  Future<void> speakdraws19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was increasingly drawn to the idea of making short films.");
  }

  Future<void> speakdraws20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The train drew into the station.");
  }

  Future<void> speakdraws21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their car drew alongside ours.");
  }

  Future<void> speakdraws22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her retirement is drawing near.");
  }

  Future<void> speakdraws23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The meeting was drawing to a close.");
  }

  Future<void> speakdraws24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He drew the cork out of the bottle.");
  }

  Future<void> speakdraws25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I drew my chair up closer to the fire.");
  }

  Future<void> speakdraws26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drew me onto the balcony.");
  }

  Future<void> speakdraws27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I tried to draw him aside.");
  }

  Future<void> speakdraws28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The blinds were drawn.");
  }

  Future<void> speakdraws29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It was getting dark so I switched on the light and drew the curtains.");
  }

  Future<void> speakdraws30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She drew back the curtains and let the sunlight in.");
  }

  Future<void> speakdraws31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drew a revolver on me.");
  }

  Future<void> speakdraws32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He came towards them with his sword drawn.");
  }

  Future<void> speakdraws33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Spielberg refused to be drawn on his next movie.");
  }

  Future<void> speakdraws34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We drew for partners.");
  }

  Future<void> speakdraws35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He drew the winning ticket.");
  }

  Future<void> speakdraws36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Names were drawn from a hat for the last few places.");
  }

  Future<void> speakdraws37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Italy has been drawn against Spain in the first round.");
  }

  Future<void> speakdraws38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("England and France drew 3–3.");
  }

  Future<void> speakdraws39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("England drew with/against France.");
  }

  Future<void> speakdraws40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I drew out £200.");
  }

  Future<void> speakdraws41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can I draw £80 out of my account?");
  }

  Future<void> speakdraws42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The cheque was drawn on his personal account.");
  }

  Future<void> speakdraws43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The device draws gas along the pipe.");
  }

  Future<void> speakdraws44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She breathed deeply, drawing in the fresh mountain air.");
  }

  Future<void> speakdraws45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The draw for the raffle takes place on Saturday.");
  }

  Future<void> speakdraws46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I’m now going to call on the President to make the draw.");
  }

  Future<void> speakdraws47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The match ended in a two-all draw.");
  }

  Future<void> speakdraws48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He managed to hold Smith to a draw.");
  }

  Future<void> speakdraws49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Liverpool have an away draw against Manchester United.");
  }

  Future<void> speakdraws50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She is currently one of the biggest draws on the Irish music scene.");
  }

  Future<void> speakdraws51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She took one last draw from the cigarette.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: کێشان، ڕاکێشان،	نێوکێشی، پشک‌ھەڵخستن، پشک، بەخت‌تاقی‌کردنەوە،	(یاری یان پێشبڕکێ) بەرامبەر، بەقەدیەک، یەکسان، ئەنجامی بەرامبەر،	جێی‌سەرنج،	مژ(لێدان)،	بڕەپارەی وەرگیراو بە چەک
"""),
          const DefinitionKurdish(
              text: "١. (کردار) کێشانی وێنەیەکی شتێک بە پێنووس یان تەباشیر"),
          SentencesRow(
            englishText: "You draw beautifully.",
            kurdishText: "جوان وێنە دەکێشیت.",
            onPressedBritish: () => speakdraws1("en-GB"),
            onPressedAmerican: () => speakdraws1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She drew a house.",
            kurdishText: "وێنەی خانوویەکی کێشا.",
            onPressedBritish: () => speakdraws2("en-GB"),
            onPressedAmerican: () => speakdraws2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He drew a circle in the sand with a stick.",
            kurdishText: "بە چیلکەیەک بازنەیەکی لە خۆڵەکەدا کێشا.",
            onPressedBritish: () => speakdraws3("en-GB"),
            onPressedAmerican: () => speakdraws3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) باسکردنی شتێک بە وشە بە شێوەیەک کە وێنایەک درووست بکات"),
          SentencesRow(
            englishText:
                "The report drew a grim picture of inefficiency and corruption.",
            kurdishText:
                "ڕاپۆرتەکە وێنەیەکی خەمناکی  لێنەھاتوویی و گەندەڵی پیشان دەدات.",
            onPressedBritish: () => speakdraws4("en-GB"),
            onPressedAmerican: () => speakdraws4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) ھەبوونی بیرکردنەوەیەکی دیاریکراو لە دوای ئەوەی کە لێکۆڵینەوەت لە شتێک کردووە یان بیرت لێکردووەتەوە"),
          SentencesRow(
            englishText:
                "Is it possible to draw inferences about the environment during the Bronze Age?",
            kurdishText:
                "دەکرێت ئەنجام‌گیری بکرێت سەبارەت بە ژینگە لە سەردەمی برۆنزدا.",
            onPressedBritish: () => speakdraws5("en-GB"),
            onPressedAmerican: () => speakdraws5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What conclusions did you draw from the report?",
            kurdishText: "چی ئەنجامێکت وەرگرت لە ڕاپۆرتەکەوە؟",
            onPressedBritish: () => speakdraws6("en-GB"),
            onPressedAmerican: () => speakdraws6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We can draw some lessons for the future from this accident.",
            kurdishText:
                "لەم وانەیەوە دەکرێت ژمارەیەک وانە بۆ داھاتوو وەربگرین.",
            onPressedBritish: () => speakdraws7("en-GB"),
            onPressedAmerican: () => speakdraws7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پیشاندانی بەرواردی نێوان دوو شت"),
          SentencesRow(
            englishText:
                "He attempted to draw a contrast between himself and the prime minister.",
            kurdishText:
                "ھەوڵیدا بەراوردکارییەک لە نێوان خۆی و سەرۆک وەزیراندا بکات.",
            onPressedBritish: () => speakdraws8("en-GB"),
            onPressedAmerican: () => speakdraws8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The site's boundaries were drawn by the Department of the Environment.",
            kurdishText: "سنوورەکانی ناوچەکە لەلایەن وەزارەتی ژینگەوە کێشران.",
            onPressedBritish: () => speakdraws9("en-GB"),
            onPressedAmerican: () => speakdraws9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) درووستکردنی/ھێنانە بوونی کاردانەوەیەک یان وەڵامێک"),
          SentencesRow(
            englishText: "The plan has drawn a lot of criticism.",
            kurdishText: "پلانەکە زۆر ڕەخنەی تووش بووە.",
            onPressedBritish: () => speakdraws10("en-GB"),
            onPressedAmerican: () => speakdraws10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The announcement drew loud applause from the audience.",
            kurdishText: "ڕاگەیاندنەکە چەپڵەڕێزانی بەرزی گوێگرانی لێکەوتەوە.",
            onPressedBritish: () => speakdraws11("en-GB"),
            onPressedAmerican: () => speakdraws11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The reforms drew widespread support from voters.",
            kurdishText: "چاکسازییەکان پشتیوانی بەرفروانی دەنگدەرانی ھەبوو.",
            onPressedBritish: () => speakdraws12("en-GB"),
            onPressedAmerican: () => speakdraws12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) ئاراستەکردنی سەرنجی کەسێک بۆ شتێک"),
          SentencesRow(
            englishText:
                "Our aim is to draw attention to the plight of these children.",
            kurdishText:
                "ئامانجمان ئەوەیە سەرنج بھێنینە سەر دۆخی خراپی ئەم منداڵانە.",
            onPressedBritish: () => speakdraws13("en-GB"),
            onPressedAmerican: () => speakdraws13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The exhibition drew great critical attention.",
            kurdishText: "پێشانگاکە سەرنجی زۆری ڕەخنەگری ڕاکێشا.",
            onPressedBritish: () => speakdraws14("en-GB"),
            onPressedAmerican: () => speakdraws14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "My eyes were drawn to the man in the corner.",
            kurdishText: "چاوم کەوتە سەر پیاوی سووچەکە.",
            onPressedBritish: () => speakdraws15("en-GB"),
            onPressedAmerican: () => speakdraws15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) سەرنجڕاکێشانی کەسێک یان حەزی لا درووست بکەیت"),
          SentencesRow(
            englishText: "The movie is drawing large audiences.",
            kurdishText: "فیلمەکە گوێگری زۆری کۆکردووەتەوە.",
            onPressedBritish: () => speakdraws16("en-GB"),
            onPressedAmerican: () => speakdraws16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The events continue to draw huge crowds.",
            kurdishText: "ئەم بۆنانە بەردەوامن لەوەی جەماوەری زۆر کۆبکەنەوە.",
            onPressedBritish: () => speakdraws17("en-GB"),
            onPressedAmerican: () => speakdraws17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The course draws students from all over the country.",
            kurdishText: "کۆرسەکە خوێندکاری لە ھەموو وڵاتەکەوە کۆکردووەتەوە.",
            onPressedBritish: () => speakdraws18("en-GB"),
            onPressedAmerican: () => speakdraws18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was increasingly drawn to the idea of making short films.",
            kurdishText:
                "زیاتر و زیاتر حەزی کرد بە بیرۆکەی بەرھەمھێنانی کورتە فیلم.",
            onPressedBritish: () => speakdraws19("en-GB"),
            onPressedAmerican: () => speakdraws19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) ڕۆشتن بەو ئاراستەیەی کە باسکراوە"),
          SentencesRow(
            englishText: "The train drew into the station.",
            kurdishText: "شەمەندەفەرەکە ھاتە ناو وێستگەکە.",
            onPressedBritish: () => speakdraws20("en-GB"),
            onPressedAmerican: () => speakdraws20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Their car drew alongside ours.",
            kurdishText: "ئۆتۆمبێلەکەیان ھاتە تەنیشت ئەوەی ئێمە.",
            onPressedBritish: () => speakdraws21("en-GB"),
            onPressedAmerican: () => speakdraws21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her retirement is drawing near.",
            kurdishText:
                "(خوازراوی) خانەنشینبوونەکەی وادەردەکەوت نزیکتر ببێتەوە.",
            onPressedBritish: () => speakdraws22("en-GB"),
            onPressedAmerican: () => speakdraws22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The meeting was drawing to a close.",
            kurdishText: "(خوازراوی) چاوپێکەوتنەکە بەرەو کۆتایی دەچوو.",
            onPressedBritish: () => speakdraws23("en-GB"),
            onPressedAmerican: () => speakdraws23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) جوڵاندنی شتێک/کەسێک بە ڕاکێشانی بە ھێواشی"),
          SentencesRow(
            englishText: "He drew the cork out of the bottle.",
            kurdishText: "تۆپەوانەکەی لە بوتڵەکە دەرکرد.",
            onPressedBritish: () => speakdraws24("en-GB"),
            onPressedAmerican: () => speakdraws24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I drew my chair up closer to the fire.",
            kurdishText: "کورسیەکەمم لە ئاگرەکە نزیکتر کردەوە.",
            onPressedBritish: () => speakdraws25("en-GB"),
            onPressedAmerican: () => speakdraws25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She drew me onto the balcony.",
            kurdishText: "ڕایکێشامە باڵکۆنەکە.",
            onPressedBritish: () => speakdraws26("en-GB"),
            onPressedAmerican: () => speakdraws26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I tried to draw him aside (= for example where I could talk to him privately).",
            kurdishText: "ھەوڵمدا ڕایکێشمەوە کەنارەوە.",
            onPressedBritish: () => speakdraws27("en-GB"),
            onPressedAmerican: () => speakdraws27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) بەستن یان کردنەوەی پەردە، ھتد"),
          SentencesRow(
            englishText: "The blinds were drawn.",
            kurdishText: "پەردەکان کرابوونەوە.",
            onPressedBritish: () => speakdraws28("en-GB"),
            onPressedAmerican: () => speakdraws28("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It was getting dark so I switched on the light and drew the curtains.",
            kurdishText: "تاریکی دەکرد بۆیە لایتەکەم کردەوە و پەردەکانم لادا.",
            onPressedBritish: () => speakdraws29("en-GB"),
            onPressedAmerican: () => speakdraws29("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She drew back the curtains and let the sunlight in.",
            kurdishText: "پەردەکانی کردەوە و ھێشتی ھەتاوەکە بێتە ژوورەوە.",
            onPressedBritish: () => speakdraws30("en-GB"),
            onPressedAmerican: () => speakdraws30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) دەرھێنانی چەک یان شمشیر بۆ ھێرشکردنە سەر کەسێک"),
          SentencesRow(
            englishText: "She drew a revolver on me.",
            kurdishText: "شەشتیرێکی لێم ڕاکێشا.",
            onPressedBritish: () => speakdraws31("en-GB"),
            onPressedAmerican: () => speakdraws31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He came towards them with his sword drawn.",
            kurdishText: "بەرەو ڕوویان ھات بە شمشێر ڕاکێشراوی.",
            onPressedBritish: () => speakdraws32("en-GB"),
            onPressedAmerican: () => speakdraws32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) وا لە کەسێک بکەیت زیاتر لەسەر شتێک بڵێت"),
          SentencesRow(
            englishText: "Spielberg refused to be drawn on his next movie.",
            kurdishText: "سپیڵبێرگ ڕەتیکردەوە بدركیندرێت لەسەر فیلمی داھاتووی.",
            onPressedBritish: () => speakdraws33("en-GB"),
            onPressedAmerican: () => speakdraws33("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) بڕیاردان لەسەر شتێک بە ڕاکێشانی کارد، بلیت، ژمارە بە شانس"),
          SentencesRow(
            englishText: "We drew for partners.",
            kurdishText: "ڕاکێشانیان بۆ ھاوبەش کرد.",
            onPressedBritish: () => speakdraws34("en-GB"),
            onPressedAmerican: () => speakdraws34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He drew the winning ticket.",
            kurdishText: "کاردی بردنەوەی ڕاکێشا.",
            onPressedBritish: () => speakdraws35("en-GB"),
            onPressedAmerican: () => speakdraws35("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Names were drawn from a hat for the last few places.",
            kurdishText:
                "ناوەکان لە کڵاوێک ڕاکێشران بۆ چەند شوێنی کەمی کۆتایی.",
            onPressedBritish: () => speakdraws36("en-GB"),
            onPressedAmerican: () => speakdraws36("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Italy has been drawn against Spain in the first round.",
            englishNote: "Similar: Italy has been drawn to play Spain.",
            kurdishText: "لە یەکەم قۆناغدا ئیتالیا دژ بە ئیسپانیا ڕاکێشراوە.",
            onPressedBritish: () => speakdraws37("en-GB"),
            onPressedAmerican: () => speakdraws37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (کردار) تەواوبوونی یارییەک بەبێ بردنەوەی ھیچ لایەک"),
          SentencesRow(
            englishText: "England and France drew 3–3.",
            kurdishText: "ئینگلتەرە و فەرەنسا ٣-٣ یەکسان بوون.",
            onPressedBritish: () => speakdraws38("en-GB"),
            onPressedAmerican: () => speakdraws38("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "England drew with/against France.",
            englishNote: "Similar: England drew their game against France.",
            kurdishText: "ئینگلتەرە دژ بە فەرەنسا یەکسان بوو.",
            onPressedBritish: () => speakdraws39("en-GB"),
            onPressedAmerican: () => speakdraws39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (کردار) ڕاکێشانی پارە لە بانکێک یان ھەژمارێک"),
          SentencesRow(
            englishText: "I drew out £200.",
            kurdishText: "٢٠٠ پاوەندم ڕاکێشا.",
            onPressedBritish: () => speakdraws40("en-GB"),
            onPressedAmerican: () => speakdraws40("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Can I draw £80 out of my account?",
            kurdishText: "دەکرێت ٨٠ پاوەند لە ھەژمارەکەم ڕابکێشم؟",
            onPressedBritish: () => speakdraws41("en-GB"),
            onPressedAmerican: () => speakdraws41("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The cheque was drawn on his personal account.",
            kurdishText: "چەکەکە لە ھەژماری کەسیی ڕاکێشرا.",
            onPressedBritish: () => speakdraws42("en-GB"),
            onPressedAmerican: () => speakdraws42("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (کردار) دەرھێنانی گاس یان شلە لە شوێنێک"),
          SentencesRow(
            englishText: "The device draws gas along the pipe.",
            kurdishText: "ئامێرەکە گاس بە بۆرییەکەدا ڕادەکێشێت.",
            onPressedBritish: () => speakdraws43("en-GB"),
            onPressedAmerican: () => speakdraws43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (کردار) ھەڵمژینی دووکەڵ یان ھەوا"),
          SentencesRow(
            englishText:
                "She breathed deeply, drawing in the fresh mountain air.",
            kurdishText: "بە قووڵی ھەناسەی دا و ھەوا پاکەکەی چیاکانی ھەڵمژی.",
            onPressedBritish: () => speakdraws44("en-GB"),
            onPressedAmerican: () => speakdraws44("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) ئەوەی کە شتێک ھەڵبژێریت، بۆ نموونە براوی خەڵاتێک یان ئەو تیمانەی کە دژ بە یەکدی یاری دەکەن لە پاڵەوانێتییەکدا؛ پاڵەوانێتییەک کە بەژداربووەکانی بەم شێوەیە ھەڵدەبژێردرێت"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: drawing"),
          SentencesRow(
            englishText: "The draw for the raffle takes place on Saturday.",
            kurdishText: "ھەڵبژاردنی تیروپشکەکە ڕۆژی یەکشەممە دەبێت.",
            onPressedBritish: () => speakdraws45("en-GB"),
            onPressedAmerican: () => speakdraws45("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I’m now going to call on the President to make the draw.",
            kurdishText: "ئێستاش داوا لە سەرۆک دەکەم ھەڵبژاردنەکە بکات.",
            onPressedBritish: () => speakdraws46("en-GB"),
            onPressedAmerican: () => speakdraws46("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٠. (ناو) یارییەک کە بە یەکسانی تەواو دەبێت"),
          SentencesRow(
            englishText: "The match ended in a two-all draw.",
            kurdishText: "یارییەکە کۆتایی ھات بە دوو (خاڵ/گۆڵ) بۆ ھەر لایەک.",
            onPressedBritish: () => speakdraws47("en-GB"),
            onPressedAmerican: () => speakdraws47("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He managed to hold Smith to a draw (= to stop him from winning when he seemed likely to do so).",
            kurdishText: "توانی یەکسان بێت لەگەڵ سمیس.",
            onPressedBritish: () => speakdraws48("en-GB"),
            onPressedAmerican: () => speakdraws48("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢١. (ناو) یارییەکی وەرزشی یان ژمارەیەک یاری کە تیمەکان یان یاریزانەکان بە ڕاکێشان ھەڵدەبژێردرێن"),
          SentencesRow(
            englishText:
                "Liverpool have an away draw against Manchester United.",
            kurdishText:
                "لیڤەرپوول یارییەکی دەرەوەی یاریگای خۆی لەگەڵ مانچیستەر یونایتید ھەیە.",
            onPressedBritish: () => speakdraws49("en-GB"),
            onPressedAmerican: () => speakdraws49("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) شتێک یان کەسێک کە سەرنجی زۆر کەس ڕادەکێشێت"),
          SentencesRow(
            englishText:
                "She is currently one of the biggest draws on the Irish music scene.",
            kurdishText:
                "لە ئێستادا یەکێک لە گەورەترین ناوەکانی میوزیکی ئێرلەندی.",
            onPressedBritish: () => speakdraws50("en-GB"),
            onPressedAmerican: () => speakdraws50("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٣. (ناو) قومدان لە جگەرە"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: drag"),
          SentencesRow(
            englishText: "She took one last draw from the cigarette.",
            kurdishText: "یەک قومی کۆتایی لە جگەرەکە دا.",
            onPressedBritish: () => speakdraws51("en-GB"),
            onPressedAmerican: () => speakdraws51("en-US"),
          ),
          // draws52draws52
          // draws53draws53
          // draws54draws54
          // draws55draws55
          // draws56draws56
          // draws57draws57
          // draws58draws58
          // draws59draws59
          // draws60draws60
          // draws61draws61
          // draws62draws62
          // draws63draws63
          // draws64draws65
          // draws66draws66
          // draws67draws67
          // draws68draws68
          // draws69draws69
          // draws70draws70
          // draws71draws71
          // draws72draws72
          // draws73draws73
          // draws74draws75
          // draws77draws76
          // draws77draws77
          // draws78draws79
          // draws80draws80
          // draws81draws81
          // draws82draws82
          // draws83draws83
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

    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: draw (derived forms: drawing, drew, draws, drawn)
1. Make a mark or lines on a surface (= trace, line, describe, delineate)
"draw a line";
 
2. Cause to move by pulling (= pull)
"draw a wagon";
 
3. Get or derive (= reap)
"He drew great benefits from his membership in the association";
 
4. Make, formulate, or derive in the mind (= make)
"I draw a line here"; "draw a conclusion"; "draw parallels";
 
5. Bring, take, or pull out of a container or from under a cover (= pull, pull out, get out, take out)
"draw a weapon";
 
6. (art) represent by making a drawing of, as with a pencil, chalk, etc. on a surface
"She drew an elephant"; "Draw me a horse"
 
7. Take liquid out of a container or well (= take out)
"She drew water from the barrel";
 
8. Give a description of (= describe, depict)
"He drew an elaborate plan of attack";
 
9. Select or take in from a given group or region
 
10. Elicit responses, such as objections, criticism, applause, etc.
"The President's comments drew sharp criticism from the Republicans"; "The comedian drew a lot of laughter"
 
11. Suck in or take (air) (= puff, drag)
"draw a deep breath"; "draw on a cigarette";
 
12. Move or go steadily or gradually
"The ship drew near the shore"
 
13. Remove (a commodity) from (a supply source) (= withdraw, take out, draw off)
"She drew £2,000 from the account"; "The doctors drew medical supplies from the hospital's emergency bank";
 
14. Choose at random (= cast)
"draw a card";
 
15. (baseball) earn or achieve a base by being walked by the pitcher (= get)
"He drew a base on balls";
 
16. Bring or lead someone to a certain action or condition
 
17. To obtain a liquid from somewhere
"The nurse drew blood"
 
18. Write a legal document or paper
 
19. Engage in drawing
"He spent the day drawing in the garden"
 
20. Move or pull so as to cover or uncover something
"draw the shades"; "draw the curtains"
 
21. Allow a draft
"This chimney draws very well"
 
22. Require a specified depth for floating
"This boat draws 70 inches"
 
23. Pull (a person) apart with four horses tied to his extremities, so as to execute him (= quarter, draw and quarter)
 
24. Cause to move in a certain direction by exerting a force upon, either physically or in an abstract sense (= pull)
"A declining dollar drew down the export figures for the last quarter";
 
25. Take in, also metaphorically (= absorb, suck, imbibe, soak up, sop up, suck up, take in, take up)
"She drew strength from the minister's words";
 
26. Direct toward itself or oneself by means of some psychological power or physical attributes (= attract, pull, pull in, draw in)
"The store owner was happy that the ad drew in many new customers";
 
27. Thread on or as if on a string (= string, thread)
"the child drew glass beads on a string";
 
28. Stretch back a bowstring (on an archer's bow) (= pull back)
"The archers were drawing their bows";
 
29. Pass over, across, or through (= guide, run, pass)
"He drew her hair through his fingers";
 
30. Finish a game with an equal number of points, goals, etc. (= tie)
"The teams drew a tie";
 
31. Shrink
"The material drew after it was washed in hot water"
 
32. Reduce the diameter of (a wire or metal rod) by pulling it through a die
"draw wire"
 
33. Steep; pass through a strainer
"draw pulp from the fruit"
 
34. Remove the entrails of (= disembowel, eviscerate, embowel [archaic])
"draw a chicken";
 
35. Flatten, stretch, or mould metal or glass, by rolling or by pulling it through a die or by stretching
"draw steel"
 
36. Cause to localize at one point
"Draw blood and pus"

- Noun: draw (derived forms: draws)
1. A gully that is shallower than a ravine
 
2. An entertainer who attracts large audiences (= drawing card, attraction, attractor, attracter)
"he was the biggest draw they had";
 
3. The finish of a contest in which the score is tied and the winner is undecided (= standoff, tie)
"the game ended in a draw";
 
4. Anything (straws or pebbles etc.) taken or chosen at random (= lot)
"the luck of the draw";
 
5. A playing card or cards dealt or taken from the pack
"he got a pair of kings in the draw"
 
6. A golf shot that curves to the left for a right-handed golfer (= hook, hooking)
"he took lessons to cure his draw";
 
7. (American football) the quarterback moves back as if to pass and then hands the ball to the fullback who is running toward the line of scrimmage (= draw play)
 
8. Poker in which a player can discard cards and receive substitutes from the dealer (= draw poker)
"he played only draw and stud";
 
9. The act of drawing or hauling something (= haul, haulage)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 289;

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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 1998;

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

  final String _videoId = 'EdQxtsTwHHs';
  final double _startSeconds = 10;

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

  final String _videoId = 'omcNGrnt7Sg';
  final double _startSeconds = 1274;

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

  final String _videoId = '62opaXeyWZY';
  final double _startSeconds = 1411;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 152;

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

  final String _videoId = '7j5ul4XBjAI';
  final double _startSeconds = 116;

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