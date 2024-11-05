import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknob extends StatefulWidget {
  const EnglishEntryknob({super.key});

  @override
  State<EnglishEntryknob> createState() => _EnglishEntryknobState();
}

class _EnglishEntryknobState extends State<EnglishEntryknob> {
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
- Noun: knob (Derived forms: knobs)
1. A circular rounded projection or protuberance (- boss)
 
2. A round handle
 
3. Any thickened enlargement (- node, thickening)
 
4. An ornament in the shape of a ball on the hilt of a sword or dagger (- pommel)
 
5. [Brit, vulgar] Obscene term for penis
 
6. (geography) a prominent rounded hill

- Verb: knob (Derived forms: knobbed, knobbing, knobs)
Usage: Brit, vulgar
1. Have sexual intercourse (- sleep together, love, make love, sleep with, have sex, know [archaic], do it [informal], be intimate, have intercourse, lie with [archaic], bed [informal], get it on [informal])
""",
  );

  final String keyword = "knob";
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
    await flutterTts.speak("""knob""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I've tried fiddling with the knobs, but nothing seems to happen.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I tried the knob, and this time the door opened.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The bird's bill is orange with a black knob at its base.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/KkF5e-mAObo?t=19';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/iqhK6QGehtQ?t=161';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/PmlRbfSavbI?t=523';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/3PX2d3Zwutg?t=900';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/pE5h2kk0NTI?t=28';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/Axg27gwEqCE?t=240';
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
                      word: """knob""",
                      // alsoEnglishWord: "also: knob",
                      britshText: """IpaUK: /nɒb/""",
                      americanText: """IpaUS: /nɑːb/""",
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
کوردی: دەسک، قوڵف، قوڵفە، دەزگرە، دەزگیرە، قوتکە،	(ڕادیۆ، تەلەفزیۆن و هتد) پێچ، دوگمە، قرتە، جەڕ، جگ، عەقرەبە،	گرێ، قۆرت، گرچک، قوتایی، قوتکە، زەقایی، نێرک،	تۆپەڵ، گزمولە، گونک، خڕکە،	(زۆرتر لە ئەمریکا) تەپۆڵکە، تەپ (خڕ بێ)،	(زمانی ڕەمەکی) شەرمی پیاو، کیر، دەزگا
"""),
// With short examples define "knob", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) سویچێکی خڕ لەسەر ڕادیۆیەک کە بەکاردێت بۆ کوژاندنەوە یان کردنەوە"""),
                    SentencesRow(
                      englishText:
                          """I've tried fiddling with the knobs, but nothing seems to happen.""",
                      kurdishText:
                          """هەوڵمداوە یاری بە دوگمەکان بکەم بەڵام هیچ وادیار نییە ڕووبدات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) دەسکێکی خڕ لەسەر دەرگایەک یان چەکمەجەیەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I tried the knob, and this time the door opened.""",
                      kurdishText:
                          """دەستم لە دەسکەکە دا و ئەم جارە دەرگاکە کرایەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شێوەیەکی خڕ لەسەر ڕوو یان کۆتایی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The bird's bill is orange with a black knob at its base.""",
                      kurdishText:
                          """دەنووکی باڵندەکە خڕە و تۆپەڵێکی ڕەش لە خواریەتی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end knob