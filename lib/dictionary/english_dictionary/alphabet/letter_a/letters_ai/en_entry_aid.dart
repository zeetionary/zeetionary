import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaid extends StatefulWidget {
  const EnglishEntryaid({super.key});

  @override
  State<EnglishEntryaid> createState() => _EnglishEntryaidState();
}

class _EnglishEntryaidState extends State<EnglishEntryaid> {
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
- Verb: aid (derived forms: aids, aided, aiding)
1. Give assistance; be of service (= help, assist)
 
2. Improve the condition of (= help)
"These pills will aid the patient";

- Noun: aid ((derived forms: aids, aided, aiding))
1. A person or thing that is a resource that helps make something easier or possible to do (= assistance, help)
"visual aids in teaching";
 
2. The activity of contributing to the fulfilment of a need or furtherance of an effort or purpose (= assist, assistance, help)
"rescue party went to their aid";
 
3. Gift of money or other material help to support a person or cause (= economic aid, financial aid, assistance, financial assistance, economic assistance)
 
4. The work of providing treatment for or attending to someone or something (= care, attention, tending)
"no medical aid was required";
 
5. A person who contributes to the fulfilment of a need or furtherance of an effort or purpose (= assistant, helper, help, supporter)
""",
  );
// 188888880002200

  final String keyword = "aid";
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
    await flutterTts.speak("""aid""");
  }

  Future<void> speakaid2522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The British government has now suspended humanitarian aid to the area.");
  }

  Future<void> speakaid38996(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Emergency aid arrived too late for many.");
  }

  Future<void> speakaid35288(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "One of the staff saw he was in difficulty and came to his aid.");
  }

  Future<void> speakaid37844(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Photos make useful teaching aids.");
  }

  Future<void> speakaid35882555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The charity was established to aid hurricane victims.");
  }

  Future<void> speakaid45269(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were accused of aiding him to escape.");
  }

  Future<void> speakaid43748(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("New drugs are now available to aid recovery.");
  }

  Future<void> speakaid35999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Peppermint aids digestion.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XuEfAi0gThY';
    const double startSecondsend = 32;
    const String videoIdone = 'eC3OrjztLJ8';
    const double startSecondsone = 685;
    const String videoIdtwo = 'OliY4rt59Ys';
    const double startSecondstwo = 38;
    const String videoIdthree = '9Jj3YIGXag8';
    const double startSecondsthree = 57;
    const String videoIdfour = '7Ba5Bov8laI';
    const double startSecondsfour = 285;
    const String videoIdfive = 'c12AtNLkT3I';
    const double startSecondsfive = 95;
    // final String _videoId = 'tAvA_cOeeOI';
    // final double _startSeconds = 55;
    // final String _videoId = 'YJQSuUZdcV4';
    // final double _startSeconds = 1679;
    // final String _videoId = 'sHvr-izTZMk';
    // final double _startSeconds = 272;
    // final String _videoId = '6NQaTpTQgDU';
    // final double _startSeconds = 419;

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
                      word: """aid""",
                      // alsoEnglishWord: "also: aid",
                      britshText: """IpaUK: /eɪd/""",
                      americanText: """IpaUS: /eɪd/""",
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
کوردی: یارمەتی، ئاری، ئالی‌کاری، ھاری‌کاری، دەس‌گرتن، دەس‌گیرۆیی، کۆمەک، ھەداری، بەھاناچوون، فریاکەوتن، شت‌ومەک یان کەرەسەی یارمەتی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) خواردن و کەلوپەل کە وەک یارمەتی دابەش دەکرێن"
                            ""),
                    SentencesRow(
                      englishText:
                          "The British government has now suspended humanitarian aid to the area.",
                      kurdishText:
                          "حکومەتی بەریتانیا ھاریکاری مرۆیی بۆ ناوچەکە وەستاندووە.",
                      onPressedBritish: () => speakaid2522("en-GB"),
                      onPressedAmerican: () => speakaid2522("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Emergency aid arrived too late for many.",
                      kurdishText:
                          "یارمەتی فریاگوزاری زۆر درەنگ بۆ زۆر کەس گەشت.",
                      onPressedBritish: () => speakaid38996("en-GB"),
                      onPressedAmerican: () => speakaid38996("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) یارمەتییەک کە پێویستە"""),
                    SentencesRow(
                      englishText:
                          "One of the staff saw he was in difficulty and came to his aid (= helped him).",
                      kurdishText:
                          "یەکێک لە ستافەکە بینی کە لە کێشەدایە و چوو بە ھانای.",
                      onPressedBritish: () => speakaid35288("en-GB"),
                      onPressedAmerican: () => speakaid35288("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) شتێک کە یارمەتیت دەدات"""),
                    SentencesRow(
                      englishText: "Photos make useful teaching aids.",
                      kurdishText: "وێنە یارمەتیدەری باشە لە فێرکردندا.",
                      onPressedBritish: () => speakaid37844("en-GB"),
                      onPressedAmerican: () => speakaid37844("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) یارمەتیتدانی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "The charity was established to aid hurricane victims.",
                      kurdishText:
                          "ڕێکخراوە خێرخوازییەکە دامەزرا بۆ یارمەتیدانی قوربانیانی گێژەلووکەکە.",
                      onPressedBritish: () => speakaid35882555("en-GB"),
                      onPressedAmerican: () => speakaid35882555("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "They were accused of aiding him to escape.",
                      kurdishText: "تۆمەتبارکران بە یارمەتیدانی لە ڕاکردندا.",
                      onPressedBritish: () => speakaid45269("en-GB"),
                      onPressedAmerican: () => speakaid45269("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) یارمەتیتدانی ڕوودانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "New drugs are now available to aid recovery.",
                      kurdishText:
                          "دەرمانە تازەکان ئێستا بەردەستن بۆ یارمەتیدانی چاکبوونەوە.",
                      onPressedBritish: () => speakaid43748("en-GB"),
                      onPressedAmerican: () => speakaid43748("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Peppermint aids digestion.",
                      kurdishText: "نەعنا یارمەتی ھەرسکردن دەدات.",
                      onPressedBritish: () => speakaid35999("en-GB"),
                      onPressedAmerican: () => speakaid35999("en-US"),
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
