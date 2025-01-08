import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanimal extends StatefulWidget {
  const EnglishEntryanimal({super.key});

  @override
  State<EnglishEntryanimal> createState() => _EnglishEntryanimalState();
}

class _EnglishEntryanimalState extends State<EnglishEntryanimal> {
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
- Noun: animal (derived forms: animals)
1. A living organism characterized by voluntary movement (= animate being, beast, brute, creature, fauna)
 
2. Someone who treats others inhumanely, or is regarded as wildly violent or uncivilized (= brute)
 
3. Any non-human animal, esp. a land-living mammal (= beast)
 
4. A particular kind of person or thing (= beast)
"he's a strange animal";

- Adjective: animal  
1. Marked by the appetites and passions of the body (= carnal, fleshly, sensual)
"animal instincts";
""",
  );
// 188888880002200

  final String keyword = "animal";
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
    await flutterTts.speak("""animal""");
  }

  Future<void> speakanimal858(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The animal began to sicken and soon died.");
  }

  Future<void> speakanimal0052(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A horse is a large animal.");
  }

  Future<void> speakanimal440(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This product has not been tested on animals.");
  }

  Future<void> speakanimal4608(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Humans are the only animals to have developed speech.");
  }

  Future<void> speakanimal4390(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He's a real animal when he's had too much to drink.");
  }

  Future<void> speakanimal4077(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She knew that Dave wasn't the right man for her but she couldn't deny the animal attraction between them.");
  }

  Future<void> speakanimal914(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As an actor, he has a sort of animal magnetism.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6wAPCumZ1oU';
    const double startSecondsend = 30;
    const String videoIdone = '3gt_G1BjTD4';
    const double startSecondsone = 10;
    const String videoIdtwo = 'W0-qgICcVSw';
    const double startSecondstwo = 6;
    const String videoIdthree = 'Fw4Av_cQdgs';
    const double startSecondsthree = 23;
    const String videoIdfour = 'Tk2Hy7UGRk0';
    const double startSecondsfour = 19;
    const String videoIdfive = '47MNn4bsmSw';
    const double startSecondsfive = 588;
    // final String _videoId = '9ttxmg2nBOQ';
    // final double _startSeconds = 263;
    // final String _videoId = 'N7HFXgyTya0';
    // final double _startSeconds = 14;
    // final String _videoId = 'AZeyHTJfi_E';
    // final double _startSeconds = 61;
    // final String _videoId = 'i7Buzy6p5q4';
    // final double _startSeconds = 8;
    // final String _videoId = 'v4GiajimGnE';
    // final double _startSeconds = 37;
    // final String _videoId = 'BfUoopDpmmY';
    // final double _startSeconds = 83;

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
                      word: """animal""",
                      // alsoEnglishWord: "also: animal",
                      britshText: """IpaUK: /ˈænɪml/""",
                      americanText: """IpaUS: /ˈænɪml/""",
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
کوردی: گیان‌لەبەر، ڕۆح‌لەبەر، ئاژەڵ، گیانەوەر، گیان‌دار، ژین‌دار، جانەوەر، زیندەوەر، بوونەوەر، گیانەوەری چوارپێ، مرۆڤی دڕندە، گیانەوەری، لەشی، جەستەیی، تەنانی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئاژەڵ؛ گیانلەبەرێک کە باڵندە، ماسی، خشۆک، مێروو، یان مرۆڤ نییە"""),
                    SentencesRow(
                      englishText: "The animal began to sicken and soon died.",
                      kurdishText: "ئاژەڵەکە لاوازبوو و بەزووی مرد.",
                      onPressedBritish: () => speakanimal858("en-GB"),
                      onPressedAmerican: () => speakanimal858("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "A horse is a large animal.",
                      kurdishText: "ئەسپ ئاژەڵێکی گەورەیە.",
                      onPressedBritish: () => speakanimal0052("en-GB"),
                      onPressedAmerican: () => speakanimal0052("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھەرشتێکی زیندوو کە مرۆڤ یان ڕووەک نییە"""),
                    SentencesRow(
                      englishText:
                          "This product has not been tested on animals.",
                      kurdishText:
                          "ئەم بەرھەمە ھێشتا لەسەر ئاژەڵ تاقی‌نەکراوەتەوە.",
                      onPressedBritish: () => speakanimal440("en-GB"),
                      onPressedAmerican: () => speakanimal440("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) ھەرشتێکی زیندوو، بە مرۆڤیشەوە"""),
                    SentencesRow(
                      englishText:
                          "Humans are the only animals to have developed speech.",
                      kurdishText:
                          "مرۆڤ تەنھا گیانلەبەرە کە توانای قسەکردنی گەشەپێدابێت.",
                      onPressedBritish: () => speakanimal4608("en-GB"),
                      onPressedAmerican: () => speakanimal4608("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کەسێک کە بە دڕندەیی ڕەفتار دەکات"""),
                    SentencesRow(
                      englishText:
                          "He's a real animal when he's had too much to drink.",
                      kurdishText: "دەبێت بە دڕندەیەکی تەواو کە زۆر دەخواتەوە.",
                      onPressedBritish: () => speakanimal4390("en-GB"),
                      onPressedAmerican: () => speakanimal4390("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵناو) پەیوەندیدار بە حەزی جەستەیی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "She knew that Dave wasn't the right man for her but she couldn't deny the animal attraction between them.",
                      kurdishText:
                          "دەیزانی دەیڤ کەسێکی شیاو نییە بۆی، بەڵام نەیدەتوانی نکۆڵی بکات لە حەزی جەستەییان بۆ یەکدی.",
                      onPressedBritish: () => speakanimal4077("en-GB"),
                      onPressedAmerican: () => speakanimal4077("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "As an actor, he has a sort of animal magnetism.",
                      kurdishText: "وەک ئەکتەرێک، کەسێکی دڵبەرە.",
                      onPressedBritish: () => speakanimal914("en-GB"),
                      onPressedAmerican: () => speakanimal914("en-US"),
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

// end WORD_WEB


