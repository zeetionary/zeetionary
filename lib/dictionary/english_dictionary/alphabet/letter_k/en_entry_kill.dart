import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykill extends StatefulWidget {
  const EnglishEntrykill({super.key});

  @override
  State<EnglishEntrykill> createState() => _EnglishEntrykillState();
}

class _EnglishEntrykillState extends State<EnglishEntrykill> {
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
- Verb: kill (Derived forms: kills, killing, killed)
1. Cause to die; put to death, usually intentionally or knowingly
"This man killed several people when he tried to rob a bank"; "The farmer killed a pig for the holidays"
 
2. Be fatal
"cigarettes kill"; "drunken driving kills"
 
3. Be the source of great pain for
"These new shoes are killing me!"
 
4. Deprive of life
"AIDS has killed thousands in Africa"
 
5. Cause the death of, without intention
"She was killed in the collision of three cars"
 
6. Mark for deletion, rub off, or erase (- obliterate, wipe out)
"kill these lines in the President's speech";
 
7. Tire out completely
"The daily stress of her work is killing her"
 
8. Cause to cease operating
"kill the engine"
 
9. Destroy a vitally essential quality of or in
"Eating artichokes kills the taste of all other foods"
 
10. End or extinguish by forceful means (- stamp out)
"kill poverty!";
 
11. Thwart the passage of (- shoot down, defeat, vote down, vote out)
"kill a motion";
 
12. [informal] Overwhelm with hilarity, pleasure, or admiration
"The comedian was so funny, he was killing me!"
 
13. [informal] Drink down entirely (- toss off [informal], pop [informal], bolt down [informal], belt down [informal], pour down, down [informal], drink down)
"She killed a bottle of brandy that night";
 
14. (sport) hit with so much force as to make a return impossible, in racket games
"She killed the ball"
 
15. (sport) hit with great force
"He killed the ball"

- Noun: kill (Derived forms: kills)
1. The act of terminating a life (- killing, putting to death)
 
2. The destruction of an enemy plane, ship, tank or missile
"the pilot reported two kills during the mission"
 
3. The body of an animal, or bodies of animals, killed by a person or another animal
 
4. Something that has been killed
"the lion chased the leopard off its kill"
""",
  );

  final String keyword = "kill";
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
    await flutterTts.speak("""kill""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cancer kills thousands of people every year.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Tiredness while driving can kill.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Dozens of civilians were killed or injured in the attack.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was nearly killed by a car bomb.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Both members of the crew were killed instantly when the missile hit their aircraft.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Three soldiers were killed in action yesterday.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She tried to kill me!""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The terrorists threatened to kill the hostages.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I bought a spray to kill the weeds.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He tried to kill himself with sleeping pills.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She claims that social media kills relationships.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The defeat last night killed the team's chances of qualifying.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She killed the engine and climbed out.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The only way to kill the process is to reboot the computer.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My feet are killing me.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Stop it! You're killing me!""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A cat often plays with a mouse before the kill.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plane prepared to move in for the kill.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The lion made a quick kill.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/Cxqca4RQd_M?t=448';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/4J0xFUyz1nw?t=368';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/DO9U_XxN-Kc?t=81';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/AAGIi62-sAU?t=1520';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/MGO4_8YRKro?t=556';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/MnExgQ81fhU?t=386';
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
                      word: """kill""",
                      // alsoEnglishWord: "also: kill",
                      britshText: """IpaUK: /kɪl/""",
                      americanText: """IpaUS: /kɪl/""",
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
کوردی: 
"""),
// With short examples define "kill", please follow LX instructions
                    const DefinitionKurdish(text: """١. (کردار) کوشتن"""),
                    SentencesRow(
                      englishText:
                          """Cancer kills thousands of people every year.""",
                      kurdishText:
                          """شێرپەنجە هەموو ساڵێک هەزاران کەس دەکوژێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Tiredness while driving can kill.""",
                      kurdishText:
                          """ماندوویەتی لەکاتی شۆفێری دەکرێت بگات بە کوشتن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Dozens of civilians were killed or injured in the attack.""",
                      kurdishText:
                          """هەزاران هاوڵاتی مەدەنی کوژران یان بریندار بوون لە هێرشەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was nearly killed by a car bomb.""",
                      kurdishText: """خەریک بوو بمرێت بە بۆمبێکی ئۆتۆمبێل.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Both members of the crew were killed instantly when the missile hit their aircraft.""",
                      kurdishText:
                          """هەردوو ئەندامی تاقمەکە دەستبەجێ کوژران کە مووشەکەکە دای لە فڕۆکەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Three soldiers were killed in action (= while fighting) yesterday.""",
                      kurdishText: """سەربازان دوێنێ لەکاتی ئەرکدا کوژران.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She tried to kill me!""",
                      kurdishText: """هەوڵی دا بمکوژێت.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The terrorists threatened to kill the hostages.""",
                      kurdishText:
                          """تیرۆریستەکان هەڕەشەی ئەوەیان بارمتەکان بکوژن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My mother will kill me (= be very angry with me) when she finds out.""",
                      kurdishText: """(خوازراوی) دایکم دەمکوژێت کە بزانێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He tried to kill himself with sleeping pills.""",
                      kurdishText: """هەوڵی دا بە حەبی خەو خۆی بکوژێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) وەستاندن یان لەناوبردنی شتێک، یان وای لێ بکەیت کەمتر باش بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She claims that social media kills relationships.""",
                      kurdishText:
                          """بانگەشەی ئەوە دەکات تۆڕە کۆمەڵایەتییەکان پەیوەندییەکان دەکوژێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The defeat last night killed the team's chances of qualifying.""",
                      kurdishText:
                          """شکستەکەی شەوی ڕابردوو شانسی تیمەکەی بۆ شایستەبوون کۆتایی پێهێنا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) کوژاندنەوەی لایت یان بزوێنەرێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She killed the engine and climbed out.""",
                      kurdishText: """بزوێنەرەکەی کوژاندەوە و هاتە دەرەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The only way to kill the process is to reboot the computer.""",
                      kurdishText:
                          """تەنها ڕێگا بۆ کۆتایی هێنان بە پڕۆسەکە دووبارە هەڵکردنەوەی کۆمپیوتەرەکەیە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) بوون بە هۆکاری ئازار بۆ کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My feet are killing me.""",
                      kurdishText: """پێیەکانم خەریکە دەمکوژن.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) واکردنی ئەوەی کەسێک زۆر پێبکەنێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Stop it! You're killing me!""",
                      kurdishText: """بەسی کە! دەمکوژیت!""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) کوشتن، بە تایبەتی کە ئاژەڵێک دەکوژرێت یان ڕاو دەکرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A cat often plays with a mouse before the kill.""",
                      kurdishText:
                          """پشیلە زۆرجار یاری لەگەڵ مشک دەکات پێش کوشتنی.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The plane prepared to move in for the kill.""",
                      kurdishText:
                          """فڕۆکەکە ئامادەکاری بۆ چوون کرد بۆ کوشتنەکە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The lion made a quick kill.""",
                      kurdishText: """شێرەکە ڕاوێکی خێرای ئەنجام دا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
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
// end kill