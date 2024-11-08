import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalzheimersdisease extends StatefulWidget {
  const EnglishEntryalzheimersdisease({super.key});

  @override
  State<EnglishEntryalzheimersdisease> createState() =>
      _EnglishEntryalzheimersdiseaseState();
}

class _EnglishEntryalzheimersdiseaseState
    extends State<EnglishEntryalzheimersdisease> {
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
- Noun: Alzheimer's disease
1. A progressive form of presenile dementia that is similar to senile dementia except that it usually starts in the 40s or 50s; first symptoms are impaired memory which is followed by impaired thought and speech and finally complete helplessness (= Alzheimer's, Alzheimers)
""",
  );
// 188888880002200

  final String keyword = "Alzheimer's disease";
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
    await flutterTts.speak("""Alzheimer's disease""");
  }

  Future<void> speakalzheimersdisease6555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The most common form of dementia is Alzheimer's disease.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3i_GcNxc4UY';
    const double startSecondsend = 40;
    const String videoIdone = 'Sq7uVZ_0D3U';
    const double startSecondsone = 1;
    const String videoIdtwo = 'nGN3J4JgV7Q';
    const double startSecondstwo = 29;
    const String videoIdthree = '6NcT0YmdTso';
    const double startSecondsthree = 1;
    const String videoIdfour = 'Y-bfodmHsP8';
    const double startSecondsfour = 107;
    const String videoIdfive = '9I5gUwZ5CMk';
    const double startSecondsfive = 8;
    // final String _videoId = '2H60C8_NF-0';
    // final double _startSeconds = 58;
    // final String _videoId = 'HdYdYeNAYpU';
    // final double _startSeconds = 5;
    // final String _videoId = 'THvQvftca_s';
    // final double _startSeconds = 1;
    // final String _videoId = 'MoY0cdFsaqs';
    // final double _startSeconds = 180;

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
                      word: """Alzheimer's disease""",
                      // alsoEnglishWord: "also: Alzheimer's disease",
                      britshText:
                          """IpaUK: /ˈæltshaɪməz dɪziːz/, /ˈɔːltshaɪməz dɪziːz/""",
                      americanText: """IpaUS: /ˈɑːltshaɪmərz dɪziːz/""",
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
کوردی: نەخۆشی ئالزایمێر، ئەلزەھایمەر، نەخۆشی لەبیرچوونەوە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) نەخۆشییەک کە زۆرجار بەساڵاچووان تووشی دەبن کە دەبێتەھۆی لەبیرچوونەوە و لەدەستدانی توانای قسەکردن"
                            ""),
                    SentencesRow(
                      englishText:
                          "The most common form of dementia is Alzheimer's disease.",
                      kurdishText: "باوترین جۆری خەڵەفاوی نەخۆشی ئالزایمێرە.",
                      onPressedBritish: () =>
                          speakalzheimersdisease6555("en-GB"),
                      onPressedAmerican: () =>
                          speakalzheimersdisease6555("en-US"),
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


