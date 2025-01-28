import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinside extends StatefulWidget {
  const EnglishEntryinside({super.key});

  @override
  State<EnglishEntryinside> createState() => _EnglishEntryinsideState();
}

class _EnglishEntryinsideState extends State<EnglishEntryinside> {
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
- Preposition: inside
1. Internal to, not outside; located in the bounds of (- within, in)
"inside the house";

- Adverb: inside
1. Within a building (- indoors)
"in winter we play inside";
 
2. On the inside (- within)
"inside, the car is a mess";
 
3. With respect to private feelings (- inwardly)
"inside, she was raging";
 
4. In reality (- at heart, at bottom, deep down, in spite of appearance)
"she is very kind inside";
 
5. [Brit, informal] In prison (- behind bars [informal])

- Noun: inside (Derived forms: insides)
1. The region that is inside of something (- interior)
 
2. The inner or enclosed surface of something (- interior)

- Adjective: inside
1. Relating to or being on the side closer to the centre or within a defined space
"he reached into his inside jacket pocket"; "inside out"; "an inside pitch is between home plate and the batter"
 
2. Being or applying to the inside of a building
"an inside wall"
 
3. Confined to an exclusive group (- inner, privileged)
"inside information";
 
4. Away from the outer edge
"the inside lane"
""",
  );

  final String keyword = "inside";
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
    await flutterTts.speak("""inside""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Go inside the house.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Inside the box was a gold watch.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You'll feel better with a good meal inside you.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She made a film about what life was like inside the refugee camp.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The job is unlikely to be finished inside (of) a year.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She shook it to make sure there was nothing inside.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He went inside to get his car keys.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We had to move inside when it started to rain.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was sentenced to three years inside.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The inside of the box was blue.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cake is smooth on the inside.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He tried to overtake on the inside.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The French runner is coming up fast on the inside.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He complained of a pain in his insides.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was driving in the inside lane.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The robbery appeared to have been an inside job.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'zmEv7vTOQGE';
    const double startSecondsend = 493;
    const String videoIdone = 'MnExgQ81fhU';
    const double startSecondsone = 7;
    const String videoIdtwo = 'HDntl7yzzVI';
    const double startSecondstwo = 686;
    const String videoIdthree = 'Xtwar56r4Lg';
    const double startSecondsthree = 11;
    const String videoIdfour = 'oFKbvpXJ83w';
    const double startSecondsfour = 6;
    const String videoIdfive = 'MiipO0rq-g0';
    const double startSecondsfive = 97;

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
                      word: """inside""",
                      // alsoEnglishWord: "also: inside",
                      britshText: """IpaUK: /ˌɪnˈsaɪd/""",
                      americanText: """IpaUS: /ˌɪnˈsaɪd/""",
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
کوردی: نێوەوە، ناوەوە، ناو، هوندر، ناوان، ژوورەوە، بەشی ژوورەوە،	(شەقام) بەشی لاپاڵی ڕێگا یا شەقام، هێڵ یا خەتی لاپاڵ،	(پیادەڕەو) پاڵ دیوار،	(ڕاکردن) هێڵی یا ڕێڕەوی نێوەوە،	لە ماڵەوە، لەنێو ماڵەوە، لە ژوورەوە،	ناوسک، پزۆر، هەناو، گەدە و ڕیخۆڵە، لە نێوەوە، لە ژوورەوە، نێوخۆیی،	لە نێوەوە، لە ژوورەوە، لەنێو،	لەنێو زیندان،	لە نێوەوە، لە ژوورەوە، لەنێوی، لەنێو، لە،	کەم‌تر لە، لە ماوەی، تا
"""),
// With short examples define "inside", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ئامراز) لەناو یان بەرەو ناو کەسێک/شتێک"""),
                    SentencesRow(
                      englishText: """Go inside the house.""",
                      kurdishText: """بچۆ ماڵەکەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Inside the box was a gold watch.""",
                      kurdishText: """لەناو سندووقەکە کاتژمێرێکی زێڕی هەبوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You'll feel better with a good meal inside you.""",
                      kurdishText:
                          """هەست بە باشتر دەکەیت کە خواردنێکی باش بخۆیت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She made a film about what life was like inside the refugee camp.""",
                      kurdishText:
                          """فیلمێکی بەرهەمهێنا لەسەر ئەوەی ژیان چۆن بوو لەناو کەمپی ئاوارەکان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ئامراز) لە کەمتر لەو ماوەیەی باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """The job is unlikely to be finished inside (of) a year.""",
                      kurdishText:
                          """کارەکە ئەگەری کەمە لە کەمتر لە یەک ساڵدا تەواو بکرێت.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵکار) بۆ ناو شتێک"""),
                    SentencesRow(
                      englishText:
                          """She shook it to make sure there was nothing inside.""",
                      kurdishText:
                          """ڕایوەشاند بۆ دڵنیایی کردنەوەی ئەوەی هیچی تێدا نییە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He went inside (= indoors) to get his car keys.""",
                      kurdishText: """چووە ماڵەوە بۆ هێنانی کلیلەکانی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We had to move inside when it started to rain.""",
                      kurdishText:
                          """پێویست بوو بچینە ماڵەوە کە دەستی کرد بە باران.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵکار) لە زینداندا"""),
                    SentencesRow(
                      englishText:
                          """He was sentenced to three years inside.""",
                      kurdishText: """سزادرا بە سێ ساڵ زیندانی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) ناو شتێک"""),
                    SentencesRow(
                      englishText: """The inside of the box was blue.""",
                      kurdishText: """ناو سندووقەکە شین بوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The cake is smooth on the inside.""",
                      kurdishText: """کێکە نەرمە لە ناوەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ئەو بەشەی ڕێگا کە نزیکە لە قەراغەوە و ئۆتۆمبێلە هێواشەکان بەکاری دەهێنن"""),
                    SentencesRow(
                      englishText: """He tried to overtake on the inside.""",
                      kurdishText: """هەوڵیدا لای ڕاستەوە تێپەڕاندن بکات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) ئەو بەشەی شەقام یان گۆڕەپانێک کە نزیکترینە لە ناوەڕاستی قەوسێک"""),
                    SentencesRow(
                      englishText:
                          """The French runner is coming up fast on the inside.""",
                      kurdishText:
                          """ڕاکەرە فەرەنسییەکە بە خێرایی لە بەشی ناوەوە دێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) گەدە و ڕیخۆڵەی کەسێک"""),
                    SentencesRow(
                      englishText:
                          """He complained of a pain in his insides.""",
                      kurdishText: """دەیناڵاند بەدەست ئازاری سکی.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) کە بەشی ناوەوەی شتێک پێکدێنێت"""),
                    SentencesRow(
                      englishText:
                          """I was driving in the inside lane (= the part nearest the edge, not the middle of the road).""",
                      kurdishText: """لە سایدی ڕاست شۆفێری دەکرد.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) کە دەزانرێت یان دەکرێت لەلایەن گرووپێک یان دامەزراوەیەک"""),
                    SentencesRow(
                      englishText:
                          """The robbery appeared to have been an inside job.""",
                      kurdishText:
                          """دزییەکە وەها دەرکەوت کە کارێکی ناوخۆیی بێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
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
// end inside