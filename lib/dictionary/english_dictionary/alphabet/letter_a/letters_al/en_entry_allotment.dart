import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallotment extends StatefulWidget {
  const EnglishEntryallotment({super.key});

  @override
  State<EnglishEntryallotment> createState() => _EnglishEntryallotmentState();
}

class _EnglishEntryallotmentState extends State<EnglishEntryallotment> {
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
- Noun: allotment (derived forms: allotments)
1. A share set aside for a specific purpose (= allocation)
 
2. The act of distributing by allotting or apportioning; distribution according to a plan (= apportionment, apportioning, allocation, parceling [US], parcelling, assignation)
"the allotment of seats in the House of Representatives is based on the relative population of each state";
 
3. [Brit] A plot of land rented from the council for growing things (e.g. vegetables)
""",
  );
// 188888880002200

  final String keyword = "allotment";
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
    await flutterTts.speak("""allotment""");
  }

  Future<void> speakallotmen1234(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They eat fresh vegetables from their allotment.");
  }

  Future<void> speakallotment3652(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Water allotments to farmers were cut back in the drought.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'reV8lpBifho';
    const double startSecondsend = 48;
    const String videoIdone = 'v91FZUfEXGo';
    const double startSecondsone = 814;
    const String videoIdtwo = 'mv9afG2Dm9I';
    const double startSecondstwo = 901;
    const String videoIdthree = 'gx6tG2W4pW0';
    const double startSecondsthree = 953;
    const String videoIdfour = 'CONWw5xd-J4';
    const double startSecondsfour = 922;
    const String videoIdfive = 'd8-kGVCzKwA';
    const double startSecondsfive = 461;
    // final String _videoId = 'rtoMhJSgWho';
    // final double _startSeconds = 489;
    // final String _videoId = 'DCgqOFrXeYc';
    // final double _startSeconds = 112;
    // final String _videoId = '0n8pv9L1fko';
    // final double _startSeconds = 332;
    // final String _videoId = 'lB_VOwKiRjE';
    // final double _startSeconds = 56;
    // final String _videoId = 'UkFbkHupjQ0';
    // final double _startSeconds = 6;

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
                      word: """allotment""",
                      // alsoEnglishWord: "also: allotment",
                      britshText: """IpaUK: /əˈlɒtmənt/""",
                      americanText: """IpaUS: /əˈlɑːtmənt/""",
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
کوردی: تەرخان‌دان، تایبەتی‌دان، دابەش‌کردن، دابەشاندن، بەشینەوە، بەش، پشک، پار
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) پارچە زەوییەکی بچووک کە کەسێک بە کرێی دەگرێت بە مەبەستی چاندن لەسەری"
                            ""),
                    SentencesRow(
                      englishText:
                          "They eat fresh vegetables from their allotment.",
                      kurdishText: "میوەی تازەی زەوییەکەی خۆیان دەخۆن.",
                      onPressedBritish: () => speakallotmen1234("en-GB"),
                      onPressedAmerican: () => speakallotmen1234("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ڕێژەیەک لە شتێک کە کەسێک پێی دەدرێت"""),
                    SentencesRow(
                      englishText:
                          "Water allotments to farmers were cut back in the drought.",
                      kurdishText:
                          "پشکی ئاو بە جوتیاران کەمکرایەوە لە وشکەساڵییەکە.",
                      onPressedBritish: () => speakallotment3652("en-GB"),
                      onPressedAmerican: () => speakallotment3652("en-US"),
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
