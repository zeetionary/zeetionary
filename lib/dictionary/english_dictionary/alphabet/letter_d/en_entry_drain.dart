import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydrain extends StatefulWidget {
  const EnglishEntrydrain({super.key});

  @override
  State<EnglishEntrydrain> createState() => _EnglishEntrydrainState();
}

class _EnglishEntrydrainState extends State<EnglishEntrydrain> {
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
  final String keyword = "drain";
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
    return const EntryTitle(word: "drain");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drain");
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
    return const IPAofEnglish(text: "IpaUK: /dreɪn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrain(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drain");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrain("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dreɪn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrain(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drain");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrain("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrains1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The marshes have been drained.");
  }

  Future<void> speakdrains2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You will need to drain the central heating system before you replace the radiator.");
  }

  Future<void> speakdrains3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The swimming pool drains very slowly.");
  }

  Future<void> speakdrains4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Leave the dishes to drain.");
  }

  Future<void> speakdrains5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had to drain the oil out of the engine.");
  }

  Future<void> speakdrains6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Drain off the excess fat from the meat.");
  }

  Future<void> speakdrains7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She pulled out the plug and the water drained away.");
  }

  Future<void> speakdrains8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My anger slowly drained away.");
  }

  Future<void> speakdrains9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The river drains into a lake.");
  }

  Future<void> speakdrains10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His face drained of colour.");
  }

  Future<void> speakdrains11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The blood drains out of the body.");
  }

  Future<void> speakdrains12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The country's coal reserves are being drained away.");
  }

  Future<void> speakdrains13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In one gulp, he drained the glass.");
  }

  Future<void> speakdrains14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She quickly drained the last of her drink.");
  }

  Future<void> speakdrains15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("My mother's hospital expenses were slowly draining my income.");
  }

  Future<void> speakdrains16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I felt drained of energy.");
  }

  Future<void> speakdrains17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His voice was utterly drained of emotion.");
  }

  Future<void> speakdrains18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had to call in a plumber to unblock the drain.");
  }

  Future<void> speakdrains19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The drains date from the beginning of the century.");
  }

  Future<void> speakdrains20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She used a drain strainer to prevent food from going down.");
  }

  Future<void> speakdrains21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Military spending is a huge drain on the country's resources.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: زێراب، گۆڕیچە (زێرابی سەرچن یان سەرگیراو)، گونج(ـە)، ڕەھەندی ئاوەڕۆ، لوولە یان بۆری ئاوەڕۆ،	گونجە، درگای ئاوەڕۆ، سەری زێراب، گۆمگە، کونەئاوەڕۆ، ئاوەڕۆ، پیساو، گەناو،	ئاوھەڵچۆڕاندن، وشک‌کردنەوە، ئاوەچۆڕکردن، ئاودەرکردن،	(پزشکی) چڵک‌کێش، کێم‌کێش، زووخ‌دەرکێش
"""),
          const DefinitionKurdish(
              text: "١. (کردار) بەتاڵکردنی شتێک بە دەرکردنی ئاوەکەی"),
          SentencesRow(
            englishText: "The marshes have been drained.",
            kurdishText: "زۆنگاوەکان بەتاڵ بوونە.",
            onPressedBritish: () => speakdrains1("en-GB"),
            onPressedAmerican: () => speakdrains1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You will need to drain the central heating system before you replace the radiator.",
            kurdishText:
                "دەبێت سیستەمە سەرەکییەکەی گەرمی بەتاڵ بکەیت پێش ئەوەی ڕادیەیتەرەکە بگۆڕیت.",
            onPressedBritish: () => speakdrains2("en-GB"),
            onPressedAmerican: () => speakdrains2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The swimming pool drains very slowly.",
            kurdishText: "مەلەوانگەکە زۆر بە ھێواشی بەتاڵ دەبێتەوە.",
            onPressedBritish: () => speakdrains3("en-GB"),
            onPressedAmerican: () => speakdrains3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Leave the dishes to drain.",
            kurdishText: "قاپەکان جێبھێڵە ئاوەچۆڕ بکەن.",
            onPressedBritish: () => speakdrains4("en-GB"),
            onPressedAmerican: () => speakdrains4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) نەھێشتنی شلە لە شتێک"),
          SentencesRow(
            englishText: "We had to drain the oil out of the engine.",
            kurdishText: "پێویست بوو ڕۆنەکە لە بزوێنەرەکە دەربکەین.",
            onPressedBritish: () => speakdrains5("en-GB"),
            onPressedAmerican: () => speakdrains5("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "Drain off the excess fat from the meat.",
                    kurdishText: "چەورییە زیادەکە لە گۆشتەکە بکەرەوە.",
                    onPressedBritish: () => speakdrains6("en-GB"),
                    onPressedAmerican: () => speakdrains6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She pulled out the plug and the water drained away.",
                    kurdishText: "دەمەوانەکەی دەرھێنا و ئاوەکە دەرچوو.",
                    onPressedBritish: () => speakdrains7("en-GB"),
                    onPressedAmerican: () => speakdrains7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "My anger slowly drained away.",
                    kurdishText: "(خوازراوی) تووڕەییەکەم بەھێواشی نەما.",
                    onPressedBritish: () => speakdrains8("en-GB"),
                    onPressedAmerican: () => speakdrains8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The river drains into a lake.",
                    kurdishText: "ڕووبارەکە بەتاڵ دەبێتە ناو دەریاچەیەک.",
                    onPressedBritish: () => speakdrains9("en-GB"),
                    onPressedAmerican: () => speakdrains9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "His face drained of colour.",
                    kurdishText: "(خوازراوی) ڕووخساری ڕەنگی تێدا نەما.",
                    onPressedBritish: () => speakdrains10("en-GB"),
                    onPressedAmerican: () => speakdrains10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The blood drains out of the body.",
                    kurdishText: "خوێن لە جەستەی نەما.",
                    onPressedBritish: () => speakdrains11("en-GB"),
                    onPressedAmerican: () => speakdrains11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The country's coal reserves are being drained away.",
                    kurdishText: "(خوازراوی) یەدەگی خەڵووزی وڵاتەکە دەدۆشرێت.",
                    onPressedBritish: () => speakdrains12("en-GB"),
                    onPressedAmerican: () => speakdrains12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بەتاڵکردنی شتێک بە خواردنەوەی ھەموو ئەوەی تێیدایە"),
          SentencesRow(
            englishText: "In one gulp, he drained the glass.",
            kurdishText: "بە یەک ھەڵقوڕان ھەموو گڵاسەکەی بەتاڵکرد.",
            onPressedBritish: () => speakdrains13("en-GB"),
            onPressedAmerican: () => speakdrains13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She quickly drained the last of her drink.",
            kurdishText: "بەخێرایی کۆتا خواردنەوەیی ھەڵقوڕاند.",
            onPressedBritish: () => speakdrains14("en-GB"),
            onPressedAmerican: () => speakdrains14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) لاوازکردن، ھەژارکردن، ھتد ــی کەسێک بە بردنی ھەموو توانا، پارە، ھتد ــی"),
          SentencesRow(
            englishText:
                "My mother's hospital expenses were slowly draining my income.",
            kurdishText:
                "تێچووی نەخۆشخانەی دایکم بەھێواشی داھاتەکەم تەواو دەکەن.",
            onPressedBritish: () => speakdrains15("en-GB"),
            onPressedAmerican: () => speakdrains15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I felt drained of energy.",
            kurdishText: "ھەستم بە نەبوونی وزە دەکرد.",
            onPressedBritish: () => speakdrains16("en-GB"),
            onPressedAmerican: () => speakdrains16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His voice was utterly drained of emotion.",
            kurdishText: "دەنگی تەواو بێ ھەست‌وسۆز بوو.",
            onPressedBritish: () => speakdrains17("en-GB"),
            onPressedAmerican: () => speakdrains17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) ئاوەڕۆیەک کە زێرابی شلە دەگوازێتەوە"),
          SentencesRow(
            englishText: "We had to call in a plumber to unblock the drain.",
            kurdishText:
                "پێویست بوو وەستایەکی بۆری بانگ بکەین بۆ پاککردنەوەی زێرابەکە.",
            onPressedBritish: () => speakdrains18("en-GB"),
            onPressedAmerican: () => speakdrains18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The drains (= the system of pipes) date from the beginning of the century.",
            kurdishText: "ئاوەڕۆکان بۆ سەرەتای سەدەکە دەگەڕێنەوە.",
            onPressedBritish: () => speakdrains19("en-GB"),
            onPressedAmerican: () => speakdrains19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) سەرە مەنھۆڵ"),
          const AlsoEnglishckb(word: "ھەروەھا: grate"),
          SentencesRow(
            englishText:
                "She used a drain strainer to prevent food from going down.",
            kurdishText:
                "پاڵوێنکەیەکی مەنھۆڵی بەکارھێنا بۆ ڕێگری لەوەی خواردن بچێتە خوارەوە.",
            onPressedBritish: () => speakdrains20("en-GB"),
            onPressedAmerican: () => speakdrains20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) شتێک کە پارە، کات، ھتد ـێ زۆر بەکاردێنێت کە دەکرێت بۆ شتێکی بەکاربێت"),
          SentencesRow(
            englishText:
                "Military spending is a huge drain on the country's resources.",
            kurdishText:
                "خەرجی سەربازی بارێکی قورسە لەسەر سەرچاوەکانی وڵاتەکە.",
            onPressedBritish: () => speakdrains21("en-GB"),
            onPressedAmerican: () => speakdrains21("en-US"),
          ),
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
- Verb: drain (derived forms: draining, drains, drained)
1. Flow off gradually (= run out)
"The rain water drains into this big vat";
 
2. Deplete of resources
"The exercise class drains me of energy"
 
3. Empty of liquid; drain the liquid from
"We drained the oil tank"
 
5. Make weak (= enfeeble, debilitate)
"Life in the camp drained him";

- Noun: drain (derived forms: drains) (= drainage)
1. Emptying something accomplished by allowing liquid to run out of it
 
2. (surgery) tube inserted into a body cavity (as during surgery) to remove unwanted material
 
3. A pipe through which liquid is carried away (= drainpipe, waste pipe)
"we had to call a plumber to clear out the blockage in the drain";
 
4. A gradual depletion of energy or resources
"a drain on resources"; "a drain of young talent by emigration"
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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 488;

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

  final String _videoId = 'D_Y18GEjfNY';
  final double _startSeconds = 290;

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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 902;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 1009;

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

  final String _videoId = 'KQWGHE7NTUA';
  final double _startSeconds = 781;

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

  final String _videoId = 'T48_SrFCdaQ';
  final double _startSeconds = 373;

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

  final String _videoId = 'lsbcN9-jU1Y';
  final double _startSeconds = 621;

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