import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvertisement extends StatefulWidget {
  const EnglishEntryadvertisement({super.key});

  @override
  State<EnglishEntryadvertisement> createState() =>
      _EnglishEntryadvertisementState();
}

class _EnglishEntryadvertisementState extends State<EnglishEntryadvertisement> {
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
- Noun: advertisement (derived forms: advertisements)
1. A public promotion of some product or service (= ad [informal], advertizement [US, non-standard], advertising, advertizing [US, non-standard], advert [Brit])
 
2. A specific part of a publication that is sold for public notices or advertising
"The city council placed an advertisement in the local newspaper to inform its residents of the forthcoming roadworks"
""",
  );
// 188888880002200

  final String keyword = "advertisement";
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
    await flutterTts.speak("""advertisement""");
  }

  Future<void> speakadvertis36412(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can place an advertisement on a website.");
  }

  Future<void> speakadver25914(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I'm afraid I'm not a very good advertisement for the diet since I've actually put on weight!");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3hRTUqNTY0Q';
    const double startSecondsend = 1;
    const String videoIdone = '3EH_AijoMW0';
    const double startSecondsone = 12;
    const String videoIdtwo = 'IlU-zDU6aQ0';
    const double startSecondstwo = 2135;
    const String videoIdthree = 'kYZhFGUOIcA';
    const double startSecondsthree = 281;
    const String videoIdfour = 'BBPk0Cdv8gQ';
    const double startSecondsfour = 1508;
    const String videoIdfive = 'Ws_YyegWGKY';
    const double startSecondsfive = 57;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """advertisement""",
                      // alsoEnglishWord: "also: advertisement",
                      britshText: """IpaUK: /ədˈvɜːtɪsmənt/""",
                      americanText: """IpaUS: /ˌædvərˈtaɪzmənt/""",
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
کوردی: بانگەواز، ڕاگەیاندن، جاڕدان، ڕاگەیێنی، ئاگاداری، ئاگایی، دانەزانین، جاڕ، بڵاوک، بڵاونامە، بانگەشە، بڵاوکاری، ھەواڵ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بڵاونامەیەک کە ئاگادارییەک، وێنەیەک، یان ڤیدیۆیەکە کە بانگەشە بۆ شتێک دەکات"
                            ""),
                    SentencesRow(
                      englishText:
                          "You can place an advertisement on a website.",
                      kurdishText: "دەتوانی ڕیکلامەکە بخەیتە سەر وێبسایتێک.",
                      onPressedBritish: () => speakadvertis36412("en-GB"),
                      onPressedAmerican: () => speakadvertis36412("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) نموونەیەک کە لایەنە باشەکانی شتێک پیشان دەدات"""),
                    SentencesRow(
                      englishText:
                          "I'm afraid I'm not a very good advertisement for the diet since I've actually put on weight!",
                      kurdishText:
                          "بەداخەوەم کە من نموونەیەکی باش نیم بۆ ژەمە خۆراکییەکە بەھۆی ئەوەی کێشم زیادی کردووە!",
                      onPressedBritish: () => speakadver25914("en-GB"),
                      onPressedAmerican: () => speakadver25914("en-US"),
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
