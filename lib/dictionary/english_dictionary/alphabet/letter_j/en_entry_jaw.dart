import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjaw extends StatefulWidget {
  const EnglishEntryjaw({super.key});

  @override
  State<EnglishEntryjaw> createState() => _EnglishEntryjawState();
}

class _EnglishEntryjawState extends State<EnglishEntryjaw> {
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
- Noun: jaw (Derived forms: jaws)
1. The part of the skull of a vertebrate that frames the mouth and holds the teeth
 
2. The bones of the skull that frame the mouth and serve to open it; the bones that hold the teeth
 
3. Holding device consisting of one or both of the opposing parts of a tool that close to hold an object

- Verb: jaw (Derived forms: jawing, jaws, jawed)
Usage: informal
1. Talk socially without exchanging too much information (- chew the fat [informal], shoot the breeze [N. Amer, informal], chat, confabulate, confab [informal], chitchat [informal], chit-chat [informal], chatter, chaffer, natter [informal], gossip, claver [UK, dialect], visit [N. Amer, informal], chew the rag [informal], gas [informal], gab [informal])
"the men were sitting in the cafe and jawing";
 
2. Talk incessantly and tiresomely (- yack [informal], yack away [informal], rattle on [informal], yap away [informal], yak [informal])
 
3. Bite repeatedly with the teeth, typically to grind food before swallowing it (- chew, masticate, manducate)
"He jawed his bubble gum";
 
4.Censure severely or angrily (- call on the carpet [US, informal], take to task, rebuke, rag [informal], trounce, lecture, reprimand, dress down [informal], call down [informal], scold, chide, berate, bawl out [informal], remonstrate, chew out [N. Amer, informal], chew up [N. Amer, informal], have words, lambaste, lambast, ream [N. Amer, informal], wig [Brit, informal])
""",
  );

  final String keyword = "jaw";
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
    await flutterTts.speak("""jaw""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She worked her lower jaw back and forth.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He gave me a punch in the jaw.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has a strong/square jaw.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She dropped her jaw in astonishment.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The alligator's jaws snapped shut.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A shark can crush a boat with its massive jaws.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was jawing away to his girlfriend for hours on the phone.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/LBSFeJ1WLv4?t=44';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/Fa13JKGG0ds?t=470';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/pTysrwci0pU?t=186';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/OZ_xhkg32nk?t=749';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/fn--IVarumw?t=604';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/10FiSsim_a4?t=413';
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
                      word: """jaw""",
                      // alsoEnglishWord: "also: jaw",
                      britshText: """IpaUK: /dʒɔː/""",
                      americanText: """IpaUS: /dʒɔː/""",
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
کوردی: شەویلکە، کاژێر، چەناگە،	زۆربڵەیی، چەنەدرێژی، چەقەسرۆیی
"""),
// With short examples define "jaw", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) هەر یەک لەو دوو ماسولکەیەی خوارەوەی دەم کە کە ددانیان تێدایە و دەجووڵێن کە قسە دەکەیت"""),
                    SentencesRow(
                      englishText:
                          """She worked her lower jaw back and forth.""",
                      kurdishText: """شەویلگەی خوارەوەیی بەر و دوا پێدەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) چەناگەی خوارەوە"""),
                    SentencesRow(
                      englishText: """He gave me a punch in the jaw.""",
                      kurdishText: """مشتێکی کێشا بە شەویلگەمدا.""",
                      englishNote: """UK: He gave me a punch on the jaw.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He has a strong/square jaw.""",
                      kurdishText: """شەویلگەیەکی بەهێز/چوارگۆشەیی هەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She dropped her jaw in astonishment.""",
                      kurdishText: """لە سەرسامیدا چەناگەی شۆڕبوویەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) دەم و ددانی کەسێک یان ئاژەڵێک"""),
                    SentencesRow(
                      englishText: """The alligator's jaws snapped shut.""",
                      kurdishText: """دەم و ددانی تیمساحەکە داخرا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A shark can crush a boat with its massive jaws.""",
                      kurdishText:
                          """قرش دەتوانێت بەلەم تێکبشکێنێت بە دەم و ددانە گەورەکەی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) قسەکردن بۆ ماوەیەکی زۆر"""),
                    SentencesRow(
                      englishText:
                          """He was jawing away to his girlfriend for hours on the phone.""",
                      kurdishText:
                          """بۆ چەندین کاتژمێر بە تەلەفۆن چەنەی دەدا لەگەڵ دۆستە کچەکەی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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
// end jaw