// end all right
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallright extends StatefulWidget {
  const EnglishEntryallright({super.key});

  @override
  State<EnglishEntryallright> createState() => _EnglishEntryallrightState();
}

class _EnglishEntryallrightState extends State<EnglishEntryallright> {
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
- Adverb: all right 
1. An expression of agreement normally occurring at the beginning of a sentence (= very well, fine, alright, OK, all righty [non-standard], righty-ho [Brit, informal])
 
2. Without doubt (used to reinforce an assertion) (= alright)
"it's expensive all right";
 
3. In a satisfactory or adequate manner (= okay, O.K., alright, OK)
"held up all right under pressure";

- Adjective: all right 
1. Being satisfactory or in satisfactory condition (= fine, o.k., OK, okay, hunky-dory [informal], cool [informal], alright, jake [N. Amer, Austral, NZ, informal])
"the passengers were shaken up but are all right"; "is everything all right?";
""",
  );
// 188888880002200

  final String keyword = "all right";
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
    await flutterTts.speak("""all right""");
  }

  Future<void> speakallright124(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've got to get up early, all right?");
  }

  Future<void> speakallright123(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("‘Can you do it?’ ‘Oh, all right.’");
  }

  Future<void> speakallright235(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("‘I'm really sorry.’ ‘That's all right, don't worry.’");
  }

  Future<void> speakallright23469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All right class, turn to page 20.");
  }

  Future<void> speakallright5241(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you getting along all right in your new job?");
  }

  Future<void> speakallright3695(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I hope the children are all right.");
  }

  Future<void> speakallright4577(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Your work is all right but I'm sure you could do better.");
  }

  Future<void> speakallright87459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've got to get up early, all right?");
  }

  Future<void> speakallright1056(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Are you sure it's all right for me to leave early?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3YltYCrPZos';
    const double startSecondsend = 59;
    const String videoIdone = 'rPe4yziWiOg';
    const double startSecondsone = 129;
    const String videoIdtwo = 'a_TSR_v07m0';
    const double startSecondstwo = 605;
    const String videoIdthree = '56POcqkKG1E';
    const double startSecondsthree = 34;
    const String videoIdfour = 'ZE7TS2Rituo';
    const double startSecondsfour = 27;
    const String videoIdfive = '9sRQQRiltrE';
    const double startSecondsfive = 13;
    // final String _videoId = 'e09xig209cQ';
    // final double _startSeconds = 356;
    // final String _videoId = 'QaZ93sibpk0';
    // final double _startSeconds = 306;
    // final String _videoId = 'HDntl7yzzVI';
    // final double _startSeconds = 295;
    // final String _videoId = '8HEfIJlcFbs';
    // final double _startSeconds = 435;
    // final String _videoId = '44HXLCsdIk8';
    // final double _startSeconds = 87;
    // final String _videoId = 'k3aAl92_VDE';
    // final double _startSeconds = 121;

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
                      word: """all right""",
                      // alsoEnglishWord: "also: all right",
                      britshText: """IpaUK: /ɔːl ˈraɪt/""",
                      americanText: """IpaUS: /ɔːl ˈraɪt/""",
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
کوردی: قایلکەر، باش، چاک، ڕاست، دروست، بێ‌گومان، حەتمەن، تا ڕادەیێ باش، باشە، بەڵێ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (سەرسوڕمان) بۆ زانینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"
                            ""),
                    SentencesRow(
                      englishText: "We've got to get up early, all right?",
                      kurdishText: "دەبێت زوو لە خەو ھەستین، تێگەشتی؟",
                      onPressedBritish: () => speakallright124("en-GB"),
                      onPressedAmerican: () => speakallright124("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (سەرسوڕمان) بۆ دەربڕینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                    SentencesRow(
                      englishText: "‘Can you do it?’ ‘Oh, all right.’",
                      kurdishText: "دەتوانی بیکەیت؟ ئاھ، بەڵێ.",
                      onPressedBritish: () => speakallright123("en-GB"),
                      onPressedAmerican: () => speakallright123("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (سەرسوڕمان) بۆ پەسەندکردنی سوپاس، یارمەتی، یان چاکە، یان کاتێک کەسێک داوای لێبووردن دەکات"""),
                    SentencesRow(
                      englishText:
                          "‘I'm really sorry.’ ‘That's all right, don't worry.’",
                      kurdishText:
                          "'زۆر داوای لێبووردن دەکەم'، 'کێشە نییە، نیگەران مەبە.",
                      onPressedBritish: () => speakallright235("en-GB"),
                      onPressedAmerican: () => speakallright235("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (سەرسوڕمان) بۆ ڕاکێشانی سەرنج"""),
                    SentencesRow(
                      englishText: "All right class, turn to page 20.",
                      kurdishText: "زۆرباشە خوێندکاران، بیخەنە سەر پەڕەی ٢٠",
                      onPressedBritish: () => speakallright23469("en-GB"),
                      onPressedAmerican: () => speakallright23469("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە کێشەی نییە"""),
                    SentencesRow(
                      englishText:
                          "Are you getting along all right in your new job?",
                      kurdishText: "لە کارە تازەکەت بێ کێشە ھەڵدەکەیت؟",
                      onPressedBritish: () => speakallright5241("en-GB"),
                      onPressedAmerican: () => speakallright5241("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ھاوەڵناو) باش و سەلامەت"""),
                    SentencesRow(
                      englishText: "I hope the children are all right.",
                      kurdishText: "ھیوادارم منداڵەکان سەلامەت بن.",
                      onPressedBritish: () => speakallright3695("en-GB"),
                      onPressedAmerican: () => speakallright3695("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (ھاوەڵناو) شتێک کە خراپ نییە"""),
                    SentencesRow(
                      englishText:
                          "Your work is all right but I'm sure you could do better.",
                      kurdishText:
                          "کارەکەت خراپ نییە بەڵام دڵنیام ئەتتوانی باشتر بیت.",
                      onPressedBritish: () => speakallright4577("en-GB"),
                      onPressedAmerican: () => speakallright4577("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (ھاوەڵناو) شتێک کە ڕێگەپێدراوە"""),
                    SentencesRow(
                      englishText:
                          "Are you sure it's all right for me to leave early?",
                      kurdishText: "دڵنیایت کە ئاسایی دەبێت زوو کار جێبھێڵم.",
                      onPressedBritish: () => speakallright1056("en-GB"),
                      onPressedAmerican: () => speakallright1056("en-US"),
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



