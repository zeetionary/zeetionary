import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappeal extends StatefulWidget {
  const EnglishEntryappeal({super.key});

  @override
  State<EnglishEntryappeal> createState() => _EnglishEntryappealState();
}

class _EnglishEntryappealState extends State<EnglishEntryappeal> {
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
- Noun: appeal (derived forms: appealing, appealed, appeals)
1. Earnest or urgent request (= entreaty, prayer, suppliance)
"an appeal for help";
 
2. Attractiveness that interests, pleases or stimulates (= appealingness, charm)
"his smile was part of his appeal to her";
 
3. (law) a legal proceeding in which the appellant resorts to a higher court for the purpose of obtaining a review of a lower court decision and a reversal of the lower court's judgment or the granting of a new trial
"their appeal was denied in the superior court"
 
4. Request for a sum of money (= solicitation, collection, ingathering)
"an appeal to raise money for starving children";
 
5. Act of turning to for assistance (= recourse, resort, refuge)
"an appeal to his uncle was his last resort";
 
6. (cricket) the act, by the fielding side, of asking an umpire for a decision of whether a batsman is out or not

- Verb: appeal (derived forms: appealing, appealed, appeals)
1. Take a court case to a higher court for review
"He was found guilty but appealed immediately"
 
2. Request earnestly (something from somebody); ask for aid or protection (= invoke)
"appeal to somebody for help";
 
3. Be attractive to (= attract)
"The idea of a vacation appeals to me";
 
4. Challenge (a decision)
"She appealed the verdict"
 
5. Cite as an authority; resort to (= invoke)
"I appealed to the law of 1900";
""",
  );
// 188888880002200

  final String keyword = "appeal";
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
    await flutterTts.speak("""appeal""");
  }

  Future<void> speakappeal932(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He made an emotional appeal to voters.");
  }

  Future<void> speakappeal939(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The police made an appeal to the public to remain calm.");
  }

  Future<void> speakappeal946(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was beginning to understand the appeal of living in the countryside.");
  }

  Future<void> speakappeal950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The court dismissed his appeal against the verdict.");
  }

  Future<void> speakappeal953(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government appealed to the British people for help.");
  }

  Future<void> speakappeal956(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His movies appeal to a broad audience.");
  }

  Future<void> speakappeal958(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(" The company is appealing against the ruling.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'IOuFE-6Awos';
    const double startSecondsend = 162;
    const String videoIdone = 'lex6USTugUU';
    const double startSecondsone = 378;
    const String videoIdtwo = 'YRhqMWUH2Ig';
    const double startSecondstwo = 1092;
    const String videoIdthree = 'WUjVPIEtJd0';
    const double startSecondsthree = 256;
    const String videoIdfour = 'eo62AEDwTKY';
    const double startSecondsfour = 308;
    const String videoIdfive = '9yjZpBq1XBE';
    const double startSecondsfive = 5053;
    // final String _videoId = 'T4gRYEjiyzQ';
    // final double _startSeconds = 810;
    // final String _videoId = 'mrkAmmMakMg';
    // final double _startSeconds = 22;
    // final String _videoId = 'MVu8QbxafJE';
    // final double _startSeconds = 387;
    // final String _videoId = 'dy2GCkJiR8E';
    // final double _startSeconds = 131;
    // final String _videoId = 'SG1vNoErfQw';
    // final double _startSeconds = 429;
    // final String _videoId = '9-wFM3nrKAI';
    // final double _startSeconds = 255;

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
                      word: """appeal""",
                      // alsoEnglishWord: "also: appeal",
                      britshText: """IpaUK: /əˈpiːl/""",
                      americanText: """IpaUS: /əˈpiːl/""",
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
کوردی: داخوازی، خۆستەک، داوا، پاڕانەوە، لاڵانەوە، لاڤاھی، پەنابردنەبەر، داوێن‌گیری، ھانابردنەبەر، پیاچوونەوە، ڕاست‌کردنەوە، دڵڕفێنی، سەرنج‌ڕاکێشی، ڕاکێشان
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پاڕانەوە؛ داوایەکی پڕ بەدڵ بۆ پارە، زانیاری، یان یارمەتی کە بەخێرایی پێویستە"""),
                    SentencesRow(
                      englishText: "He made an emotional appeal to voters.",
                      kurdishText:
                          "پاڕانەوەیەکی ھەست‌بزوێنی ئاراستەی دەنگدەران کرد.",
                      onPressedBritish: () => speakappeal932("en-GB"),
                      onPressedAmerican: () => speakappeal932("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The police made an appeal to the public to remain calm.",
                      kurdishText: "پۆلیس تکای لە خەڵکی کرد بە ھێمنی بمێننەوە.",
                      onPressedBritish: () => speakappeal939("en-GB"),
                      onPressedAmerican: () => speakappeal939("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) خاسیەتێک کە وادەکای کەسێک/شتێک سەرنجڕاکێش یان سەرسوڕھێنەر بێت"""),
                    SentencesRow(
                      englishText:
                          "He was beginning to understand the appeal of living in the countryside.",
                      kurdishText:
                          "خەریک‌بوو دەستی‌ دەکرد بە تێگەشتن لە دڵڕفێنی ژیان لە لادێ.",
                      onPressedBritish: () => speakappeal946("en-GB"),
                      onPressedAmerican: () => speakappeal946("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) داوایەکی فەرمی لە دادگا یان لای دەسەڵاتدارێک بۆ گۆڕینی بڕیارێک"""),
                    SentencesRow(
                      englishText:
                          "The court dismissed his appeal against the verdict.",
                      kurdishText:
                          "دادگا داوای پێداچوونەوەکەیی دژ بە بڕیارەکە ڕەتکردەوە.",
                      onPressedBritish: () => speakappeal950("en-GB"),
                      onPressedAmerican: () => speakappeal950("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) داواکردنی شتێک پڕبەدڵ بۆ داواکردنی شتێک کە بەپەلە پێویستە"""),
                    SentencesRow(
                      englishText:
                          "The government appealed to the British people for help.",
                      kurdishText:
                          "حکومەت تکای لە خەڵکی بەریتانیا کرد بۆ یارمەتی.",
                      onPressedBritish: () => speakappeal953("en-GB"),
                      onPressedAmerican: () => speakappeal953("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) سەرنج‌ڕاکێشان، یان بوون بە ھۆی سەرسوڕھێنەری"""),
                    SentencesRow(
                      englishText: "His movies appeal to a broad audience.",
                      kurdishText:
                          "فیلمەکانی سەرنجی بیسەری بەرفراوان ڕادەکێشن.",
                      onPressedBritish: () => speakappeal956("en-GB"),
                      onPressedAmerican: () => speakappeal956("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) داواکردن لە دادگا یان کەسێکی بەدەسەڵات بۆ گۆڕینی بڕیارێک"""),
                    SentencesRow(
                      englishText:
                          " The company is appealing against the ruling.",
                      kurdishText:
                          "کۆمپانیاکە داوای پێداچوونەوە بە بڕیارەکە دەکات.",
                      onPressedBritish: () => speakappeal958("en-GB"),
                      onPressedAmerican: () => speakappeal958("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
