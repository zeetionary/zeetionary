import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadopt extends StatefulWidget {
  const EnglishEntryadopt({super.key});

  @override
  State<EnglishEntryadopt> createState() => _EnglishEntryadoptState();
}

class _EnglishEntryadoptState extends State<EnglishEntryadopt> {
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
- Verb: adopt (derived forms: adopted, adopting, adopts)
1. Choose and follow; as of theories, ideas, policies, strategies or plans (= follow, espouse)
"She adopted the feminist movement";
 
2. Take up and practice as one's own (= borrow, take over, take up)
 
3. Take on titles, offices, duties, responsibilities (= assume, take on, take over)
"When will the new President adopt office?";
 
4. Take on a certain form, attribute, or aspect (= assume, acquire, take on, take)
"he adopted an air of superiority";
 
5. Take into one's family (= take in)
"They adopted two children from Nicaragua";
 
6. Put into dramatic form (= dramatize, dramatise [Brit])
"adopt a book for a screenplay";
 
7. Take up the cause, ideology, practice, method, of someone and use it as one's own (= espouse, embrace, sweep up)
"They adopted the Jewish faith";
""",
  );
// 188888880002200

  final String keyword = "adopt";
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
    await flutterTts.speak("""adopt""");
  }

  Future<void> speakad256471(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The child has now been legally adopted.");
  }

  Future<void> speakad25673(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The police adopted tighter security measures.");
  }

  Future<void> speakado45826(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government adopted a resolution on disarmament.");
  }

  Future<void> speakado7259(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The party adopted its current name in 1965.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'vDkN3kT3-4w';
    const double startSecondsend = 29;
    const String videoIdone = 'OTYOk-4aPU8';
    const double startSecondsone = 703;
    const String videoIdtwo = '3gYcN8bz9EI';
    const double startSecondstwo = 61;
    const String videoIdthree = 'qJnjXtzBvNc';
    const double startSecondsthree = 5;
    const String videoIdfour = 'TK8DDvVydq4';
    const double startSecondsfour = 97;
    const String videoIdfive = 'Xd_NNwNSpks';
    const double startSecondsfive = 71;
    // const String videoId = 'tW5fzvA8ANY';
    // const double startSeconds = 17;

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
                      word: """adopt""",
                      // alsoEnglishWord: "also: adopt",
                      britshText: """IpaUK: /əˈdɒpt/""",
                      americanText: """IpaUS: /əˈdɑːpt/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) ھەڵگتنەوەی منداڵێک و بەخێوکردنی وەک منداڵی خۆت"""),
                    SentencesRow(
                      englishText: "The child has now been legally adopted.",
                      kurdishText:
                          "منداڵەکە لە ئێستادا بە یاسایی ھەڵگیراوەتەوە.",
                      onPressedBritish: () => speakad256471("en-GB"),
                      onPressedAmerican: () => speakad256471("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) دەستکردن بە بەکارھێنانی شێوازێکی مامەڵەکردن یان ڕێبازێک"""),
                    SentencesRow(
                      englishText:
                          "The police adopted tighter security measures.",
                      kurdishText: "پۆلیس ڕێکاری توندتری گرتەبەر.",
                      onPressedBritish: () => speakad25673("en-GB"),
                      onPressedAmerican: () => speakad25673("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) بە فەرمی پەسەندکردنی بڕیارێک"""),
                    SentencesRow(
                      englishText:
                          "The government adopted a resolution on disarmament.",
                      kurdishText: "حکومەت بڕیارنامەی چەکداماڵینی پەسەندکرد.",
                      onPressedBritish: () => speakado45826("en-GB"),
                      onPressedAmerican: () => speakado45826("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) دەستکردن بە بەکارھێنانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The party adopted its current name in 1965.",
                      kurdishText:
                          "پارتەکە ئەم ناوەی ئێستای لە ساڵی ١٩٦٥ ھەڵگرتەوە.",
                      onPressedBritish: () => speakado7259("en-GB"),
                      onPressedAmerican: () => speakado7259("en-US"),
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
