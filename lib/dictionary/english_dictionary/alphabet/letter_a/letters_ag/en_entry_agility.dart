// end agility
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagility extends StatefulWidget {
  const EnglishEntryagility({super.key});

  @override
  State<EnglishEntryagility> createState() => _EnglishEntryagilityState();
}

class _EnglishEntryagilityState extends State<EnglishEntryagility> {
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
- Noun: agility (derived forms: agilities)
1. The gracefulness of a person or animal that is quick and nimble (= legerity, lightness, lightsomeness, nimbleness)
"leaped up with surprising agility";
""",
  );
// 188888880002200

  final String keyword = "agility";
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
    await flutterTts.speak("""agility""");
  }

  Future<void> speakagility1562(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has the agility of a mountain goat.");
  }

  Future<void> speakagilit48966(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We underestimate the agility of a child's mind.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JEVJaUsDAvw';
    const double startSecondsend = 74;
    const String videoIdone = 'ko3rCOeFu-o';
    const double startSecondsone = 195;
    const String videoIdtwo = 'Ge2zgGnlV-0';
    const double startSecondstwo = 18;
    const String videoIdthree = 'gxFtEyTkKvI';
    const double startSecondsthree = 9;
    const String videoIdfour = 'LsZq6_wZAHM';
    const double startSecondsfour = 45;
    const String videoIdfive = '5mqY7VnhVGs';
    const double startSecondsfive = 8;
    // final String _videoId = 'F6ejGzsYQFI';
    // final double _startSeconds = 4;
    // final String _videoId = 'AN10gGJD36I';
    // final double _startSeconds = 7;

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
                      word: """agility""",
                      // alsoEnglishWord: "also: agility",
                      britshText: """IpaUK: /əˈdʒɪləti/""",
                      americanText: """IpaUS: /əˈdʒɪləti/""",
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
کوردی: چالاکی، گورجی، پڕجم‌وجوڵی، توندوتۆڵی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ھەبوونی توانای جوڵاندنی جەستە بەخێرایی و ئاسانی"
                            ""),
                    SentencesRow(
                      englishText: "He has the agility of a mountain goat.",
                      kurdishText: "گورجوگۆڵی بزنێکی شاخاوی ھەیە.",
                      onPressedBritish: () => speakagility1562("en-GB"),
                      onPressedAmerican: () => speakagility1562("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھەبوونی توانای بیرکردنەوە بەڕوونی و خێرایی"""),
                    SentencesRow(
                      englishText:
                          "We underestimate the agility of a child's mind.",
                      kurdishText: "بیروھۆشی منداڵ بە کەم سەیر دەکەین.",
                      onPressedBritish: () => speakagilit48966("en-GB"),
                      onPressedAmerican: () => speakagilit48966("en-US"),
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


