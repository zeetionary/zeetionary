import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaesthetic extends StatefulWidget {
  const EnglishEntryaesthetic({super.key});

  @override
  State<EnglishEntryaesthetic> createState() => _EnglishEntryaestheticState();
}

class _EnglishEntryaestheticState extends State<EnglishEntryaesthetic> {
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
- Adjective: aesthetic 
1. Relating to or dealing with beauty (= esthetic [US])
"aesthetic values";
 
2. Aesthetically pleasing (= esthetic [US], artistic)
"an aesthetic flower arrangement";
 
3. Concerning or characterized by an appreciation of beauty or good taste (= esthetic [US], aesthetical, esthetical [US])
"an aesthetic person"; "aesthetic feeling"; "the illustrations made the book an aesthetic success"; "the aesthetic faculties";

- Noun: aesthetic (derived forms: aesthetics)
1. (philosophy) a philosophical theory as to what is beautiful (= esthetic [US])
"he despised the aesthetic of minimalism";
""",
  );
// 188888880002200

  final String keyword = "aesthetic";
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
    await flutterTts.speak("""aesthetic""");
  }

  Future<void> speakaesth6588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The works of art are judged on purely aesthetic grounds.");
  }

  Future<void> speakaest67451(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their furniture was more aesthetic than functional.");
  }

  Future<void> speakaest52887(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The students debated the aesthetic of the poems.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-YWblbbMsFs';
    const double startSecondsend = 179;
    const String videoIdone = 'V6yZi-Wrv8s';
    const double startSecondsone = 59;
    const String videoIdtwo = 'lfeYMl9ycFo';
    const double startSecondstwo = 20;
    const String videoIdthree = 'fL4BXfaSXMU';
    const double startSecondsthree = 15;
    const String videoIdfour = 'EbxHATiIfUQ';
    const double startSecondsfour = 10;
    const String videoIdfive = 'e3oHZ8YchsE';
    const double startSecondsfive = 226;
    // const String videoId = '1WHMENFzCEw';
    // const double startSeconds = 232;
    // const String videoId = 'MJYK8x6krqI';
    // const double startSeconds = 17;
    // const String videoId = 'AqvBmfpalQA';
    // const double startSeconds = 8;
    // const String videoId = 'Qdccz0_wfpk';
    // const double startSeconds = 121;

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
                      word: """aesthetic""",
                      // alsoEnglishWord: "also: aesthetic",
                      britshText: """IpaUK: /iːsˈθetɪk/, /esˈθetɪk/""",
                      americanText: """IpaUS: /esˈθetɪk/""",
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
کوردی: جوانی‌ناسی‌یانە، ئیستێتیک، ھونەرمەندانە، ھونەری، ھونەرناس
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) پەیوەندیدار بە جوانی ھونەر"""),
                    SentencesRow(
                      englishText:
                          "The works of art are judged on purely aesthetic grounds.",
                      kurdishText:
                          "کارە ھونەرییەکان تەنھا لە لایەنی ھونەرییەوە بڕیاریان لەسەر دەدرێت.",
                      onPressedBritish: () => speakaesth6588("en-GB"),
                      onPressedAmerican: () => speakaesth6588("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) درووستکراو بەشێوەیەکی ھونەری کە جوانە بۆ سەیرکردن"""),
                    SentencesRow(
                      englishText:
                          "Their furniture was more aesthetic than functional.",
                      kurdishText:
                          "شتومەکەکانیان زیاتر بۆ جوانکاری بوو وەک ئەوەی بۆ پێویستی بووبن.",
                      onPressedBritish: () => speakaest67451("en-GB"),
                      onPressedAmerican: () => speakaest67451("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) جوانکاری و بیرۆکەکانی ناو کارێکی ھونەری یان ئەدەبی"""),
                    SentencesRow(
                      englishText:
                          "The students debated the aesthetic of the poems.",
                      kurdishText:
                          "خوێندکاران گەنگەشەی لایەنی جوانکاری (ڕەوانبێژی) لە شیعرەکانیان کرد.",
                      onPressedBritish: () => speakaest52887("en-GB"),
                      onPressedAmerican: () => speakaest52887("en-US"),
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
