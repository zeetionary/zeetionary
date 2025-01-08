import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappear extends StatefulWidget {
  const EnglishEntryappear({super.key});

  @override
  State<EnglishEntryappear> createState() => _EnglishEntryappearState();
}

class _EnglishEntryappearState extends State<EnglishEntryappear> {
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
- Verb: appear (derived forms: appears, appearing, appeared)
1. Give a certain impression of being something or having a certain aspect (= look, seem)
"This appears to be a very difficult problem"; "They appeared like people who had not eaten or slept for a long time";
 
2. Come into sight or view
"He suddenly appeared at the wedding"; "A new star appeared on the horizon"
 
3. Be issued or published (= come out)
"Did your latest book appear yet?";
 
4. (of a proposition) seem to be true, probable, or apparent (= seem)
"It appears that the weather in California is very bad";
 
5. Come into being or existence, or appear on the scene (= come along)
"Homo sapiens appeared millions of years ago";
 
6. (dramaturgy) appear as a character on stage or appear in a play, etc.
"Gielgud appears briefly in this movie"; "She appeared in 'Hamlet' on the London stage"
 
7. Present oneself formally, as before a (judicial) authority
"He had to appear in court last month"; "She appeared on several charges of theft"
""",
  );
// 188888880002200

  final String keyword = "appear";
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
    await flutterTts.speak("""appear""");
  }

  Future<void> speakappear1030(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Smoke appeared on the horizon.");
  }

  Future<void> speakappear1032(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Symptoms usually start appearing within two to three days.");
  }

  Future<void> speakappear1034(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Scientists are unsure when the virus first appeared.");
  }

  Future<void> speakappear1037(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She didn't appear at all surprised at the news.");
  }

  Future<void> speakappear1038(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Everything appeared normal at first.");
  }

  Future<void> speakappear1041(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It was too late to prevent the story from appearing in the national newspapers.");
  }

  Future<void> speakappear1043(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has appeared in over 60 movies.");
  }

  Future<void> speakappear1045(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A man appeared at the door and asked to see her.");
  }

  Future<void> speakappear1047(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your name will appear at the front of the book.");
  }

  Future<void> speakappear1050(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A man will appear in court today charged with the murder.");
  }

  Future<void> speakappear1052(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("James Gilbert is the lawyer appearing for the defendant.");
  }

  Future<void> speakappear819(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His new book will be appearing in the spring.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-HyHZsa79LU';
    const double startSecondsend = 442;
    const String videoIdone = 'tsxmyL7TUJg';
    const double startSecondsone = 677;
    const String videoIdtwo = 'QLq6GEiHqR8';
    const double startSecondstwo = 2023;
    const String videoIdthree = 'Mx8JkGHaGUI';
    const double startSecondsthree = 2173;
    const String videoIdfour = 'raSeaAeryWE';
    const double startSecondsfour = 1580;
    const String videoIdfive = 'DfSnHyIryeY';
    const double startSecondsfive = 73;
    // final String _videoId = 'DiTaYglOlnY';
    // final double _startSeconds = 351;
    // final String _videoId = 'x6btmJSRueE';
    // final double _startSeconds = 4;
    // final String _videoId = '3RkhZgRNC1k';
    // final double _startSeconds = 246;
    // final String _videoId = '1Gxrwh4zGPg';
    // final double _startSeconds = 1369;
    // final String _videoId = '1j_k5WCFShQ';
    // final double _startSeconds = 771;
    // final String _videoId = 'DxL2HoqLbyA';
    // final double _startSeconds = 1530;

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
                      word: """appear""",
                      // alsoEnglishWord: "also: appear",
                      britshText: """IpaUK: /əˈpɪə(r)/""",
                      americanText: """IpaUS: /əˈpɪr/""",
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
١. (کردار) دەست‌کردن بە دەرکەوتن"""),
                    SentencesRow(
                      englishText: "Smoke appeared on the horizon.",
                      kurdishText: "دووکەڵ لە ئاسۆدا دەرکەوت.",
                      onPressedBritish: () => speakappear1030("en-GB"),
                      onPressedAmerican: () => speakappear1030("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Symptoms usually start appearing within two to three days.",
                      kurdishText:
                          "نیشانەکانی نەخۆشییەکە زۆرجار دەردەکەون لە ماوەی دوو ڕۆژدا.",
                      onPressedBritish: () => speakappear1032("en-GB"),
                      onPressedAmerican: () => speakappear1032("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) درووست‌بوون، پێزانین، یان بەکارھێنان بۆ یەکەم جار"""),
                    SentencesRow(
                      englishText:
                          "Scientists are unsure when the virus first appeared.",
                      kurdishText:
                          "زاناکان دڵنیانین ڤایرۆسەکە بۆ یەکەم جار لە کوێوە دەرکەوت.",
                      onPressedBritish: () => speakappear1034("en-GB"),
                      onPressedAmerican: () => speakappear1034("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کاری لێکدەر) دەرکەوتن"""),
                    SentencesRow(
                      englishText:
                          "She didn't appear at all surprised at the news.",
                      kurdishText: "ھیچ سەرسام دیار نەبوو بە ھەواڵەکە.",
                      onPressedBritish: () => speakappear1037("en-GB"),
                      onPressedAmerican: () => speakappear1037("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Everything appeared normal at first.",
                      kurdishText: "ھەموو شتێک ئاسایی دەرکەوت لە سەرەتادا.",
                      onPressedBritish: () => speakappear1038("en-GB"),
                      onPressedAmerican: () => speakappear1038("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) بڵاوکردنەوە یان پەخشکردنی کتێبێک، وتارێک، یان پڕۆگرامێک"""),
                    SentencesRow(
                      englishText:
                          "His new book will be appearing in the spring.",
                      kurdishText: "کتێبە تازەکەی لە بەھاردا بڵاودەبێتەوە.",
                      onPressedBritish: () => speakappear819("en-GB"),
                      onPressedAmerican: () => speakappear819("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) دەرکەوتن لە فیلمێک، شانۆیەک، یان پڕۆگرامێکی تەلەفیزیۆنی"""),
                    SentencesRow(
                      englishText: "He has appeared in over 60 movies.",
                      kurdishText: "لە زیاتر لە ٦٠ فیلمدا دەرکەوتووە.",
                      onPressedBritish: () => speakappear1043("en-GB"),
                      onPressedAmerican: () => speakappear1043("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) گەشتنە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          "A man appeared at the door and asked to see her.",
                      kurdishText:
                          "پیاوێک گەشتە بەر دەرگاکە و داوای بینینی کرد.",
                      onPressedBritish: () => speakappear1045("en-GB"),
                      onPressedAmerican: () => speakappear1045("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) نووسراو یان ناوھێنراو لە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          "Your name will appear at the front of the book.",
                      kurdishText: "ناوت لە بەرگی کتێبەکە دەنووسرێت.",
                      onPressedBritish: () => speakappear1047("en-GB"),
                      onPressedAmerican: () => speakappear1047("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (کردار) ئامادەبوون لە دادگا بۆ پێدانی بەڵگە یان وەڵامدانەوەی تۆمەت"""),
                    SentencesRow(
                      englishText:
                          "A man will appear in court today charged with the murder.",
                      kurdishText:
                          "پیاوێک ئەمڕۆ لە دادگا ئامادە دەبێت کە تۆمەتی کوشتنی لەسەرە.",
                      onPressedBritish: () => speakappear1050("en-GB"),
                      onPressedAmerican: () => speakappear1050("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٩. (کردار) ئامادەبوون لە دادگا وەک پارێزەری کەسێک"""),
                    SentencesRow(
                      englishText:
                          "James Gilbert is the lawyer appearing for the defendant.",
                      kurdishText: "جەیمس گیلبێرت پارێزەری بەرگریکارەکە دەبێت.",
                      onPressedBritish: () => speakappear1052("en-GB"),
                      onPressedAmerican: () => speakappear1052("en-US"),
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
