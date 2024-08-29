import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryday extends StatefulWidget {
  const EnglishEntryday({super.key});

  @override
  State<EnglishEntryday> createState() => _EnglishEntrydayState();
}

class _EnglishEntrydayState extends State<EnglishEntryday> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: day (derived forms: days)
1. Time for Earth to make a complete rotation on its axis (= twenty-four hours, twenty-four hour period, 24-hour interval, solar day, mean solar day)
"two days later they left"; "they put on two performances every day"; "there are 30,000 passengers per day";
 
2. A point or period in time
"it should arrive any day now"; "after that day she never trusted him again"; "those were the days"; "these days it is not unusual"
 
3. A day assigned to a particular purpose or observance
"Mother's Day"
 
4. The time after sunrise and before sunset while it is light outside (= daytime, daylight)
"the dawn turned night into day";
 
5. The recurring hours when you are not sleeping (especially those when you are working)
"my day began early this morning"; "it was a busy day on the stock exchange"; "she called it a day and went to bed"
 
6. An era of existence or influence
"in the day of the dinosaurs"; "in the days of the Roman Empire"; "in the days of sailing ships"; "he was a successful pianist in his day"
 
7. The period of time taken by a particular planet (e.g. Mars) to make a complete rotation on its axis
"how long is a day on Jupiter?"
 
8. The time for one complete rotation of the earth relative to a particular star, about 4 minutes shorter than a mean solar day (= sidereal day)
 
9. A period of opportunity
"he deserves his day in court"; "every dog has his day"

- Noun: Day
1. United States writer best known for his autobiographical works (1874-1935) (= Clarence Day, Clarence Shepard Day Jr.)
""",
  );

  final String keyword = "day";
  List<Map<String, dynamic>> filteredSentences = [];

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

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""day""");
  }

  Future<void> speakdays1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I go to the gym every day.");
  }

  Future<void> speakdays2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We spent five days in Paris.");
  }

  Future<void> speakdays3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I saw Tom three days ago.");
  }

  Future<void> speakdays4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're going away in a few days.");
  }

  Future<void> speakdays5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house should be ready in a few days' time.");
  }

  Future<void> speakdays6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The situation has been deteriorating for the past few days.");
  }

  Future<void> speakdays7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("On that day Rosa Parks did something that changed history.");
  }

  Future<void> speakdays8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I saw her again the next day.");
  }

  Future<void> speakdays9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He resigned the following day.");
  }

  Future<void> speakdays10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What a beautiful day!");
  }

  Future<void> speakdays11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sun was shining all day.");
  }

  Future<void> speakdays12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I could sit and watch the river all day long.");
  }

  Future<void> speakdays13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He works at night and sleeps during the day.");
  }

  Future<void> speakdays14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Memories of happy days on the hills never fade.");
  }

  Future<void> speakdays15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have a nice day!");
  }

  Future<void> speakdays16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Did you have a good day?");
  }

  Future<void> speakdays17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's been a long day.");
  }

  Future<void> speakdays18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She didn't do a full day's work.");
  }

  Future<void> speakdays19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was the biggest star in Hollywood in those days.");
  }

  Future<void> speakdays20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Much has changed since the days of my youth.");
  }

  Future<void> speakdays21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("That was in the bad old days of rampant inflation.");
  }

  Future<void> speakdays22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Dickens gives us a vivid picture of poverty in Queen Victoria's day.");
  }

  Future<void> speakdays23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have many happy memories from my student days.");
  }

  Future<void> speakdays24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She cared for him for the rest of his days.");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """day""",
                      // alsoEnglishWord: "also: day",
                      britshText: """IpaUK: /deɪ/""",
                      americanText: """IpaUS: /deɪ/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const TabBar(
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
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: ڕۆژ، شەووڕۆژ، ماوەی ٢٤ کات‌ژمێر،	ڕۆژی کارکردن، سەردەم، ڕۆژگار، زەمانە، سەروبەند، قۆناخ
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) ڕۆژێک؛ ماوەیەک کە ٢٤ کاتژمێرە"),
                    SentencesRow(
                      englishText: "I go to the gym every day.",
                      kurdishText: "ھەموو ڕۆژ دەچم بۆ جیم.", // day
                      onPressedBritish: () => speakdays1("en-GB"),
                      onPressedAmerican: () => speakdays1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "We spent five days in Paris.",
                      kurdishText: "پێنج ڕۆژمان لە پاریس بەسەربرد.",
                      onPressedBritish: () => speakdays2("en-GB"),
                      onPressedAmerican: () => speakdays2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: "I saw Tom three days ago.",
                              kurdishText: "سێ ڕۆژ پێش ئێستا تۆمم بینی.",
                              onPressedBritish: () => speakdays3("en-GB"),
                              onPressedAmerican: () => speakdays3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: "We're going away in a few days.",
                              kurdishText: "بۆ پێنج ڕۆژ لێرە نابین.",
                              onPressedBritish: () => speakdays4("en-GB"),
                              onPressedAmerican: () => speakdays4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  "The house should be ready in a few days' time.",
                              kurdishText:
                                  "خانووەکە دەبێت لە ماوەی چەند ڕۆژێکی کەمدا ئامادە بێت.",
                              onPressedBritish: () => speakdays5("en-GB"),
                              onPressedAmerican: () => speakdays5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  "The situation has been deteriorating for the past few days.",
                              kurdishText:
                                  "دۆخەکە لە ماوەی چەند ڕۆژی داھاتوودا خراپتر بووە.",
                              onPressedBritish: () => speakdays6("en-GB"),
                              onPressedAmerican: () => speakdays6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  "On that day Rosa Parks did something that changed history.",
                              kurdishText:
                                  "لەو ڕۆژەدا ڕۆزا پارکس شتێکی کرد کە مێژووی گۆڕی.",
                              onPressedBritish: () => speakdays7("en-GB"),
                              onPressedAmerican: () => speakdays7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: "I saw her again the next day.",
                              kurdishText: "ڕۆژی دواتر دیمەوە.",
                              onPressedBritish: () => speakdays8("en-GB"),
                              onPressedAmerican: () => speakdays8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: "He resigned the following day.",
                              kurdishText: "ڕۆژی دواتر دەستی لەکارکێشایەوە.",
                              onPressedBritish: () => speakdays9("en-GB"),
                              onPressedAmerican: () => speakdays9("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: "٢. (ناو) ڕۆژ؛ ئەو ماوەیەی ڕۆژێک کە تاریک نییە"),
                    SentencesRow(
                      englishText: "What a beautiful day!",
                      kurdishText: "چی ڕۆژێکی جوانە!",
                      onPressedBritish: () => speakdays10("en-GB"),
                      onPressedAmerican: () => speakdays10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The sun was shining all day.",
                      kurdishText: "خۆر تەواوی ڕۆژەکە دەگەشایەوە.",
                      onPressedBritish: () => speakdays11("en-GB"),
                      onPressedAmerican: () => speakdays11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "I could sit and watch the river all day long.",
                      kurdishText:
                          "دەمتوانی تەواوی ڕۆژەکە دابنیشم و سەیری ڕووبارەکە بکەم.",
                      onPressedBritish: () => speakdays12("en-GB"),
                      onPressedAmerican: () => speakdays12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "He works at night and sleeps during the day.",
                      kurdishText: "لە شەودا کار دەکات و بە ڕۆژ دەخەوێت.",
                      onPressedBritish: () => speakdays13("en-GB"),
                      onPressedAmerican: () => speakdays13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Memories of happy days on the hills never fade.",
                      kurdishText:
                          "یادەوەرییەکانی ڕۆژە خۆشەکان لەسەر گردەکان ھەرگیز کاڵ نابنەوە.",
                      onPressedBritish: () => speakdays14("en-GB"),
                      onPressedAmerican: () => speakdays14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            "٣. (ناو) ئەو کاتانەی ڕۆژ کە چالاکیت و کار دەکەیت"),
                    SentencesRow(
                      englishText: "Have a nice day!",
                      kurdishText: "ڕۆژێکی خۆش.",
                      onPressedBritish: () => speakdays15("en-GB"),
                      onPressedAmerican: () => speakdays15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Did you have a good day?",
                      kurdishText: "ڕۆژێکی خۆشت ھەبوو؟",
                      onPressedBritish: () => speakdays16("en-GB"),
                      onPressedAmerican: () => speakdays16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "It's been a long day (= I've been very busy).",
                      kurdishText: "ڕۆژێکی درێژ بووە.",
                      onPressedBritish: () => speakdays17("en-GB"),
                      onPressedAmerican: () => speakdays17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "She didn't do a full day's work.",
                      kurdishText: "کاری ڕۆژێکی تەواوی نەکرد.",
                      onPressedBritish: () => speakdays18("en-GB"),
                      onPressedAmerican: () => speakdays18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: "٤. (ناو) ماوەیەکی دیاریکراوی کاتێک یان مێژوو"),
                    SentencesRow(
                      englishText:
                          "He was the biggest star in Hollywood in those days.",
                      kurdishText: "لەو ماوەدا گەورەترین ئەستێرەی ھۆڵیوود بوو.",
                      onPressedBritish: () => speakdays19("en-GB"),
                      onPressedAmerican: () => speakdays19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Much has changed since the days of my youth.",
                      kurdishText: "زۆر شت گۆڕاوە لە سەردەمانی گەنجییەتیمەوە.",
                      onPressedBritish: () => speakdays20("en-GB"),
                      onPressedAmerican: () => speakdays20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "That was in the bad old days of rampant inflation.",
                      kurdishText:
                          "ئەوە لە ماوەی خراپی ھەڵاوسانی ئابووری بەرز بوو.",
                      onPressedBritish: () => speakdays21("en-GB"),
                      onPressedAmerican: () => speakdays21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Dickens gives us a vivid picture of poverty in Queen Victoria's day.",
                      kurdishText:
                          "دیکنز وێنایەکی ڕوونی ھەژاریمان پێدەدات لە سەردەمی شاژن ڤیکتۆریادا پێدەدات.",
                      onPressedBritish: () => speakdays22("en-GB"),
                      onPressedAmerican: () => speakdays22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: "٥. (ناو) ماوەیەکی دیاریکراوی ژیانی کەسێک"),
                    SentencesRow(
                      englishText:
                          "I have many happy memories from my student days.",
                      kurdishText:
                          "یادەوەری زۆری خۆشم ھەیە لە ماوەی خوێندکاریمدا.",
                      onPressedBritish: () => speakdays23("en-GB"),
                      onPressedAmerican: () => speakdays23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "She cared for him for the rest of his days (= the rest of his life).",
                      kurdishText: "بۆ ماوەی کۆتایی ژیانی ئاگای لێیبوو.",
                      onPressedBritish: () => speakdays24("en-GB"),
                      onPressedAmerican: () => speakdays24("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'HvNdJ2RCReg';
  final double _startSeconds = 16;

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

  final String _videoId = 'NWE3vyCaK44';
  final double _startSeconds = 25;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 56;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 144;

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

  final String _videoId = '_wNsZEqpKUA';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'r8E1Hq5tktg';
  final double _startSeconds = 143;

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

  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 50;

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
