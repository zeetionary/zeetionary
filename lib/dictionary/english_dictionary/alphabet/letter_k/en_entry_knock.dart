import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknock extends StatefulWidget {
  const EnglishEntryknock({super.key});

  @override
  State<EnglishEntryknock> createState() => _EnglishEntryknockState();
}

class _EnglishEntryknockState extends State<EnglishEntryknock> {
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
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
- Verb: knock (Derived forms: knocking, knocked, knocks)
1. Rap with the knuckles
"knock on the door"
 
2. Deliver a sharp blow or push (- strike hard)
"He knocked the glass clear across the room";
 
2. Collide with force or violence (- bump)
"My car knocked into the tree";
 
3. Make light, repeated taps on a surface (- tap, rap, pink)
"he was knocking his fingers on the table impatiently";
 
4. Sound like a car engine that is firing too early (- pink, ping)
"The car knocked when the ignition was too far retarded";
 
5. [informal] Find fault with; express criticism of; point out real or perceived flaws (- criticize, criticise [Brit], pick apart, damn [informal])
"Don't knock the food--it's free";

- Noun: knock (Derived forms: knocks)
1. The sound of knocking (as on a door or in an engine or bearing) (- knocking)
"the knock grew louder";
 
2. Negative criticism (- roast [informal])
 
3. A vigorous blow (- bash [informal], bang, smash, belt [informal], sock [informal])
"the sudden knock floored him";
 
4. A bad experience
"the school of hard knocks"
 
5. The act of hitting vigorously (- belt [informal], rap, whack [informal], whang [informal])
"he gave the table a knock";
""",
  );

  final String keyword = "knock";
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
    await flutterTts.speak("""knock""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He knocked three times and waited.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I knocked on the door and went straight in.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Somebody was knocking on the window.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Dobson walked straight into her office without knocking.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her hand knocked against the glass.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The door's very low—mind you don't knock your head!""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I knocked the nail into the wall.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They had to knock the door down to get in.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had knocked one of the pictures off the wall.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The boys were knocking a ball around in the back yard.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The blow knocked me flat.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She knocked my drink flying.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The explosion knocked her off her feet.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They managed to knock a hole in the wall.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My heart was knocking wildly.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a knock at the door.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I was startled by a loud knock on the car window.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got a nasty knock on the head.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The company has suffered two huge knocks of late.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her confidence took a further knock when she lost her job.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/GcdB5bFwio4?t=604';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/Kou7ur5xt_4?t=86';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/AAGIi62-sAU?t=1092';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/zqllxbPWKNI?t=419';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/h4CyhQqAPpk?t=531';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/qWAagS_MANg?t=1418';
    const double startSecondsfive = 0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """knock""",
                      // alsoEnglishWord: "also: knock",
                      britshText: """IpaUK: /nɒk/""",
                      americanText: """IpaUS: /nɑːk/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
                    const KurdishVocabulary(text: """
کوردی: لێدان، پیاکێشان، تێ‌سرەواندن،	دەنگی درگا، شەقە، زرمەی درگا،	دەنگی پیاکێشان (توند)،	نەهاتی، نەهامەتی، مەینەتی، بەدبەختی، سیاچارەیی،	عەیب‌لێ‌دۆزینەوە، ڕەخنەلێگرتن، ڕەخنەگیری، خراپەوتن
"""),
// With short examples define "knock", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) لێدان لە دەرگا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rap"),
                    SentencesRow(
                      englishText: """He knocked three times and waited.""",
                      kurdishText: """سێ جار لە دەرگای دا و چاوەڕوانی کرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I knocked on the door and went straight in.""",
                      kurdishText:
                          """لە دەرگاکەم دا و ڕاستەوخۆ چوومە ژوورەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Somebody was knocking on the window.""",
                      kurdishText: """کەسێک دەیکێشا بە پەنجەرەکەدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Dobson walked straight into her office without knocking.""",
                      kurdishText:
                          """دۆبسن ڕاستەوخۆ هاتە ئۆفیسەکە بەبێ لەدەرگادان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) لێدان لە شتێک بە توندی، زۆرجار بە ڕێکەوت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her hand knocked against the glass.""",
                      kurdishText: """پەنجەکانی کێشایان بە شووشەکەدا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The door's very low—mind you don't knock your head!""",
                      kurdishText:
                          """دەرگاکە زۆر نزمە ـ ئاگات لێبێت سەرتی پێدا نەکێشی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) لێدان لە شتێک بەشێوەیەک بجووڵێت یان بشکێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I knocked the nail into the wall.""",
                      kurdishText: """بزمارەکەم کوتا بە دیوارەکەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They had to knock the door down to get in.""",
                      kurdishText:
                          """پێویست بوو دەرگاکە بشکێنن بۆ ئەوەی بچنە ژوورەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had knocked one of the pictures off the wall.""",
                      kurdishText:
                          """یەکێک لە وێنەکانی سەر دیوارەکەی خستە خوارەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The boys were knocking (= kicking) a ball around in the back yard.""",
                      kurdishText:
                          """کوڕەکان لە تۆپێکیان دەدا لە حەوشەی پشتەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) ئەوەی ک/شت بخەیتە دۆخێکی دیاریکراو بە لێدانی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The blow knocked me flat.""",
                      kurdishText: """لێدانەکەم خستمی بە زەویدا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She knocked my drink flying.""",
                      kurdishText: """خواردنەوەکەمی نارد بە حەوادا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The explosion knocked her off her feet.""",
                      kurdishText: """تەقینەوەکە لەسەر پێی بەرزی کردەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) درووستکردنی کونێک لە شتێک بە لێدانی بە توندی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They managed to knock a hole in the wall.""",
                      kurdishText: """توانی کونێک بکاتە دیوارەکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) کە دڵت خێرا لێ بدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My heart was knocking wildly.""",
                      kurdishText: """دڵم خێرا ترپەی دەهات.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) دەنگی لێدان لە دەرگا، پەنجەرە، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There was a knock at the door.""",
                      kurdishText: """دەنگی لەدەرگادان هات.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was startled by a loud knock on the car window.""",
                      kurdishText:
                          """ترسام بە زرمەیەکی توند لە پەنجەرەی ئۆتۆمبێلەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) لێدانی توند لە شتێکی سەخت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: bang"),
                    SentencesRow(
                      englishText: """He got a nasty knock on the head.""",
                      kurdishText: """لێدانێکی خراپی لەسەر سەری بەرکەوت.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ئەزموونێکی خراپ کە وادەکات ک.شت متمانەی کەمتر بێت یان کەمتر سەرکەوتوو بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company has suffered two huge knocks of late.""",
                      kurdishText:
                          """کۆمپانیاکە دوو ئەزموونی خراپی هەبوو ئەم دواییە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her confidence took a further knock when she lost her job.""",
                      kurdishText:
                          """باوەڕی بەرکەوتنێکی دیکەی خراپی تووشبوو کە کارەکەی لەدەستدا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB
// end knock