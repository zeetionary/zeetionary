// end agile
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagile extends StatefulWidget {
  const EnglishEntryagile({super.key});

  @override
  State<EnglishEntryagile> createState() => _EnglishEntryagileState();
}

class _EnglishEntryagileState extends State<EnglishEntryagile> {
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
- Adjective: agile
1. Moving quickly and lightly (= nimble, quick, spry)
"sleek and agile as a gymnast";
 
2. Mentally quick (= nimble)
"an agile mind";

3. Describes a method of project management (esp. software development), having short flexible work phases with regular adaption of plans as required to complete the work
""",
  );
// 188888880002200

  final String keyword = "agile";
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
    await flutterTts.speak("""agile""");
  }

  Future<void> speakagile15621(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Monkeys are very agile climbers.");
  }

  Future<void> speakagi1778(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("For a man of 80, he has a remarkably agile mind.");
  }

  Future<void> speakagil56663(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They used agile methods to complete difficult tasks.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'iVaFVa7HYj4';
    const double startSecondsend = 192;
    const String videoIdone = 'SO4NdawxAac';
    const double startSecondsone = 10;
    const String videoIdtwo = '-zDct5d2smY';
    const double startSecondstwo = 4;
    const String videoIdthree = 'H6GdK-dChtY';
    const double startSecondsthree = 1;
    const String videoIdfour = '-ZtDsf65d0I';
    const double startSecondsfour = 15;
    const String videoIdfive = 'UxMpn92vGXs';
    const double startSecondsfive = 160;
    // final String _videoId = 'pDIzBNF5Eg4';
    // final double _startSeconds = 16;

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
                      word: """agile""",
                      // alsoEnglishWord: "also: agile",
                      britshText: """IpaUK: /ˈædʒaɪl/""",
                      americanText: """IpaUS: /ˈædʒl/""",
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
کوردی: چالاک، گورج، ھەڵسووڕ، چاپک، مەزبووت، گورج‌وگۆڵ، توندوتۆڵ، زرنگ، زیرەک، زووبیرکەرەوە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) ھەبوونی توانای خێرا و ئاسان جوڵان"
                            ""),
                    SentencesRow(
                      englishText: "Monkeys are very agile climbers.",
                      kurdishText: "مەیموون پیاھەڵگژی گورجە.",
                      onPressedBritish: () => speakagile15621("en-GB"),
                      onPressedAmerican: () => speakagile15621("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی توانای بیرکردنەوە بەخێرایی و زیرەکانە"""),
                    SentencesRow(
                      englishText:
                          "For a man of 80, he has a remarkably agile mind.",
                      kurdishText:
                          "لەگەڵ ئەوەی ٨٠ ساڵە، ھێشتا بیر و ھۆشێکی زرنگی ھەیە.",
                      onPressedBritish: () => speakagi1778("en-GB"),
                      onPressedAmerican: () => speakagi1778("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) جۆرێکی کارکردن کە تێیدا کارێک بەش بەش لەگەڵ ناوبڕ لانێوانیاندا بۆ ھەڵسەنگاندن"""),
                    SentencesRow(
                      englishText:
                          "They used agile methods to complete difficult tasks.",
                      kurdishText: "لە کۆمپانیاکە کارەکانیان بەش بەش دەکرد.",
                      onPressedBritish: () => speakagil56663("en-GB"),
                      onPressedAmerican: () => speakagil56663("en-US"),
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
