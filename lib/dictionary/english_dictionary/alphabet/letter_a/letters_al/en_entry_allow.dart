import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallow extends StatefulWidget {
  const EnglishEntryallow({super.key});

  @override
  State<EnglishEntryallow> createState() => _EnglishEntryallowState();
}

class _EnglishEntryallowState extends State<EnglishEntryallow> {
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
- Verb: allow (derived forms: allowed, allowing, allows)
1. Make it possible through a specific action or lack of action for something to happen (= let, permit)
"This sealed door won't allow the water to come into the basement";
 
2. Consent to, give permission; permit (= permit, let, countenance)
"I cannot allow you to see your exam";

3. Let have; give the right to; give the opportunity or permission to (= grant, accord, allot)
"Mandela was allowed few visitors in prison";

4. Give or assign a resource to a particular person or cause (= appropriate, earmark, set aside, reserve)
"I will allow this money for your research";
 
5. Make a possibility or provide opportunity for; permit to be attainable or cause to remain (= leave, allow for, provide)
"The evidence allows only one conclusion"; "allow for mistakes";
 
6. Allow or plan for a certain possibility; concede the truth or validity of something (= take into account, bear in mind)
"I allow for this possibility";
 
7. Afford possibility (= admit)
"This short story allows of several different interpretations";
 
8. Allow the other (baseball) team to score (= give up)
"allow a run";

9. Grant as a discount or in exchange
"The camera store owner allowed me 50 dollars on my old camera"
 
10. Allow the presence of or allow (an activity) without opposing or prohibiting (= permit, tolerate)
"We don't allow dogs here";
""",
  );
// 188888880002200

  final String keyword = "allow";
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
    await flutterTts.speak("""allow""");
  }

  Future<void> speakallow3255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His parents won't allow him to stay out late.");
  }

  Future<void> speakallow535(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The law allowed companies to dismiss workers without any reason.");
  }

  Future<void> speakallow369(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You're allowed an hour to complete the test.");
  }

  Future<void> speakallow4721(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They weren't allowed into the country.");
  }

  Future<void> speakallow36541(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The system allows people the opportunity to browse a wide selection of books.");
  }

  Future<void> speakallow2341(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She was very helpful when my mother was ill—I'll allow you that.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6LFzk1afiD8';
    const double startSecondsend = 18;
    const String videoIdone = 'ldVDM-v5uz0';
    const double startSecondsone = 157;
    const String videoIdtwo = 'BLqk7uaENAY';
    const double startSecondstwo = 1033;
    const String videoIdthree = 'Z3WwoklJHxU';
    const double startSecondsthree = 1;
    const String videoIdfour = 'mHEMumaE70U';
    const double startSecondsfour = 43;
    const String videoIdfive = 'PRYmx7Lk9F0';
    const double startSecondsfive = 137;
    // final String _videoId = 'HVvYTpW5ctE';
    // final double _startSeconds = 1;
    // final String _videoId = 'Ox7VNblx7uo';
    // final double _startSeconds = 141;
    // final String _videoId = 'HMACjk5AXJg';
    // final double _startSeconds = 72;
    // final String _videoId = 'xVQxvthAcLU';
    // final double _startSeconds = 308;
    // final String _videoId = 'IEp31mUaxfg';
    // final double _startSeconds = 345;
    // final String _videoId = 'inpok4MKVLM';
    // final double _startSeconds = 134;

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
                      word: """allow""",
                      // alsoEnglishWord: "also: allow",
                      britshText: """IpaUK: /əˈlaʊ/""",
                      americanText: """IpaUS: /əˈlaʊ/""",
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
١. (کردار) ڕێگەدان بە ڕوودانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "His parents won't allow him to stay out late.",
                      kurdishText:
                          "دایک و باوکی ڕێگەی پێ نادەن تا درەنگ لە دەرەوە بمێنێتەوە.",
                      onPressedBritish: () => speakallow3255("en-GB"),
                      onPressedAmerican: () => speakallow3255("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The law allowed companies to dismiss workers without any reason.",
                      kurdishText:
                          "یاساکە ڕێگە بە کۆمپانیاکان دەدات کرێکاران بەبێ ھیچ ھۆکارێک دەربکەن.",
                      onPressedBritish: () => speakallow535("en-GB"),
                      onPressedAmerican: () => speakallow535("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) ڕێگەدان بە کەسێک شتێکی ھەبێت"""),
                    SentencesRow(
                      englishText:
                          "You're allowed an hour to complete the test.",
                      kurdishText:
                          "یەک کاتژمێر کاتت ھەیە بۆ وەڵامدانەوەی تاقیکردنەوەکە.",
                      onPressedBritish: () => speakallow369("en-GB"),
                      onPressedAmerican: () => speakallow369("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) ڕێگەدان بە کەسێک بچێتە شوێنێک یان جێی بھێڵێت"""),
                    SentencesRow(
                      englishText: "They weren't allowed into the country.",
                      kurdishText: "ڕێگەیان پێنەدرا بچنە ناو وڵاتەکە.",
                      onPressedBritish: () => speakallow4721("en-GB"),
                      onPressedAmerican: () => speakallow4721("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) گونجاندنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The system allows people the opportunity to browse a wide selection of books.",
                      kurdishText:
                          "سیستەمەکە ھەلی ئەوە دەگونجێنێت کە خەڵکی لەناو ژمارەیەکی زۆر جیاوازی پەرتووکدا بگەڕێن.",
                      onPressedBritish: () => speakallow36541("en-GB"),
                      onPressedAmerican: () => speakallow36541("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) پەسەندکردن یان داننان بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "She was very helpful when my mother was ill—I'll allow you that.",
                      kurdishText:
                          "زۆر یارمەتیدەر بوو کە دایکم نەخۆش بوو، دان بەوەدا دەنێم.",
                      onPressedBritish: () => speakallow2341("en-GB"),
                      onPressedAmerican: () => speakallow2341("en-US"),
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

