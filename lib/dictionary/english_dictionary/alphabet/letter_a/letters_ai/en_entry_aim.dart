// end aim
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaim extends StatefulWidget {
  const EnglishEntryaim({super.key});

  @override
  State<EnglishEntryaim> createState() => _EnglishEntryaimState();
}

class _EnglishEntryaimState extends State<EnglishEntryaim> {
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
- Verb: aim (derived forms: aimed, aiming, aims)
1. Point or cause to go (blows, weapons, or objects such as photographic equipment) towards (= take, train, take aim, direct)
"Please don't aim at your little brother!";
 
2. Have as a plan or objective (= purpose, purport, propose, intend)
"I aim to arrive at noon";
 
3. Move into a desired direction of discourse (= drive, get)
"What are you aiming at?";
 
4. Specifically design a product, event, or activity for a certain public (= calculate, direct)
 
5. Intend (something) to move towards a certain goal, or direct to a specific place or group of people (= target, place, direct, point)
"He aimed his fists towards his opponent's face";

6. Direct (a remark) toward an intended goal
"She wanted to aim a pun"
 
7. Have an ambitious plan or a lofty goal (= draw a bead on, aspire, shoot for)
"The students in medical schools aim to be doctors";

- Noun: aim (derived forms: aims)
1. An anticipated outcome that is intended or that guides your planned actions (= purpose, intent, intention, design)
"it was created with the conscious aim of answering immediate needs";

2. The goal intended to be attained (and which is believed to be attainable) (= object, objective, target)
"the sole aim of her trip was to see her children";

3. The action of directing something at an object
"he took aim and fired"

4. The direction or path along which something moves or along which it lies (= bearing, heading)
""",
  );
// 188888880002200

  final String keyword = "aim";
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
    await flutterTts.speak("""aim""");
  }

  Future<void> speakaim86555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We should aim for a bigger share of the market.");
  }

  Future<void> speakaim475699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government is aiming at a 50% reduction in unemployment.");
  }

  Future<void> speakaim456933(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("These measures are aimed at preventing violent crime.");
  }

  Future<void> speakaim5283(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My criticism wasn't aimed at you.");
  }

  Future<void> speakaim371595446(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I was aiming at the tree but hit the car by mistake.");
  }

  Future<void> speakaim78562(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His sole aim in life is to enjoy himself.");
  }

  Future<void> speakaim46011635(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her aim was good and she hit the lion with her first shot.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'HB0CZ_5sPPw';
    const double startSecondsend = 714;
    const String videoIdone = 'c2v7mbq6hVs';
    const double startSecondsone = 155;
    const String videoIdtwo = 'zqllxbPWKNI';
    const double startSecondstwo = 1114;
    const String videoIdthree = '_RSojioTtUU';
    const double startSecondsthree = 317;
    const String videoIdfour = 'r5RjuhqQSec';
    const double startSecondsfour = 607;
    const String videoIdfive = 'RgRSW3JvSYo';
    const double startSecondsfive = 159;
    // final String _videoId = 'kVwp-BfarxI';
    // final double _startSeconds = 219;
    // final String _videoId = 'MzSktgpfD84';
    // final double _startSeconds = 885;
    // final String _videoId = '_0RTH57v66I';
    // final double _startSeconds = 616;
    // final String _videoId = 'PbKYAks6044';
    // final double _startSeconds = 1056;

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
                      word: """aim""",
                      // alsoEnglishWord: "also: aim",
                      britshText: """IpaUK: /eɪm/""",
                      americanText: """IpaUS: /eɪm/""",
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
کوردی: دۆز، ئامانج، مەبەست، مەبەس، نیشانەگرتن، سێرەگرتن، سێرەگیری
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) ھەوڵدان بۆ بەدەستھێنانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "We should aim for a bigger share of the market.",
                      kurdishText: "دەبێت ئامانجمان پشکێکی زیاتری بازاڕ بێت.",
                      onPressedBritish: () => speakaim86555("en-GB"),
                      onPressedAmerican: () => speakaim86555("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The government is aiming at a 50% reduction in unemployment.",
                      kurdishText:
                          "حکومەت ئامانجیەتی بە ڕێژەی ٥٠٪ بێکاری کەمبکاتەوە.",
                      onPressedBritish: () => speakaim475699("en-GB"),
                      onPressedAmerican: () => speakaim475699("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) ھەبوونی شتێک وەک ئامانج"""),
                    SentencesRow(
                      englishText:
                          "These measures are aimed at preventing violent crime.",
                      kurdishText:
                          "ئەم ڕێکارانە ئامانجیانە تاوانی توندوتیژی کەمبکەنەوە.",
                      onPressedBritish: () => speakaim456933("en-GB"),
                      onPressedAmerican: () => speakaim456933("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) وتن یان کردنی شتێک بە ئامانجی کارلێککردن"""),
                    SentencesRow(
                      englishText: "My criticism wasn't aimed at you.",
                      kurdishText: "ڕەخنەکانم ڕوو لە تۆ نەبوون.",
                      onPressedBritish: () => speakaim5283("en-GB"),
                      onPressedAmerican: () => speakaim5283("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) ڕووکردنی چەک، کامێرا، بۆکس، یان شتێکی تر لە کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          "I was aiming at the tree but hit the car by mistake.",
                      kurdishText:
                          "ئامانجم لە دارەکە گرتەوە، بەڵام بە ھەڵە لە ئۆتۆمبێلەکەم دا.",
                      onPressedBritish: () => speakaim371595446("en-GB"),
                      onPressedAmerican: () => speakaim371595446("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) ئامانج، شتێک کە ھەوڵی بەدەستھێنانی دەدەیت"""),
                    SentencesRow(
                      englishText: "His sole aim in life is to enjoy himself.",
                      kurdishText:
                          "تەنھا ئامانجی لە ژیان ئەوە بوو خۆشی لە خۆی ببینێت.",
                      onPressedBritish: () => speakaim78562("en-GB"),
                      onPressedAmerican: () => speakaim78562("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) شارەزایی لە ئامانجگرتنەوە بە چەک"""),
                    SentencesRow(
                      englishText:
                          "Her aim was good and she hit the lion with her first shot.",
                      kurdishText:
                          "ئامانجگرتنەکەی باش بوو و بە یەکەم لێدان لە شێرەکەی دا.",
                      onPressedBritish: () => speakaim46011635("en-GB"),
                      onPressedAmerican: () => speakaim46011635("en-US"),
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



