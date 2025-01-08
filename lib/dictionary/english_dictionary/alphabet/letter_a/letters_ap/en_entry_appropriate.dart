import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappropriate extends StatefulWidget {
  const EnglishEntryappropriate({super.key});

  @override
  State<EnglishEntryappropriate> createState() =>
      _EnglishEntryappropriateState();
}

class _EnglishEntryappropriateState extends State<EnglishEntryappropriate> {
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
- Adjective: appropriate
1. Suitable for a particular person, place or condition etc
"a book not appropriate for children"; "a funeral conducted the appropriate solemnity"; "it seems that an apology is appropriate"
 
2. Meant or adapted for an occasion or use (= suitable, suited)
"a tractor appropriate for heavy duty"; "not an appropriate (or fit) time for flippancy";

- Verb: appropriate (derived forms: appropriated, appropriates, appropriating)
1. Give or assign a resource to a particular person or cause (= allow, earmark, set aside, reserve)
 
2. Take possession of by force, as after an invasion (= capture, seize, conquer)
"The militia appropriated the castle";
""",
  );
// 188888880002200

  final String keyword = "appropriate";
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
    await flutterTts.speak("""appropriate""");
  }

  Future<void> speakappropriate348(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Now that the problem has been identified, appropriate action can be taken.");
  }

  Future<void> speakappropriate351(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is now an appropriate time to make a speech?");
  }

  Future<void> speakappropriate352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This may be an appropriate treatment for many patients.");
  }

  Future<void> speakappropriate355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Some of the opposition party's policies have been appropriated by the government.");
  }

  Future<void> speakappropriate357(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He lost his job when he was found to have appropriated some of the company's money.");
  }

  Future<void> speakappropriate400(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Five million dollars have been appropriated for research into the disease.");
  }

  Future<void> speakappropriate403(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "As the empire expanded, they eagerly appropriated the artistic styles of their sunjects.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4OPfFWq2YRE';
    const double startSecondsend = 731;
    const String videoIdone = 'XPnJZsZ6-Nw';
    const double startSecondsone = 1;
    const String videoIdtwo = 'OlBs32MjVrE';
    const double startSecondstwo = 12;
    const String videoIdthree = 'jdIDSpsYpeA';
    const double startSecondsthree = 1;
    const String videoIdfour = 'h5sCPCn_-uc';
    const double startSecondsfour = 421;
    const String videoIdfive = 'ofphgfOdm_s';
    const double startSecondsfive = 29;
    // final String _videoId = 'CJzj8W-UymA';
    // final double _startSeconds = 1;
    // final String _videoId = '8HEfIJlcFbs';
    // final double _startSeconds = 824;
    // final String _videoId = 'pFEB0chiuJA';
    // final double _startSeconds = 123;
    // final String _videoId = 'q4_a7bZ_G7s';
    // final double _startSeconds = 151;
    // final String _videoId = 'lex6USTugUU';
    // final double _startSeconds = 310;
    // final String _videoId = 'sV6uuMAnJUE';
    // final double _startSeconds = 616;

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
                      word: """appropriate""",
                      // alsoEnglishWord: "also: appropriate",
                      britshText: """IpaUK: /əˈprəʊpriət/""",
                      americanText: """IpaUS: /əˈprəʊpriət/""",
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
کوردی: شیاو، لێ‌وەشاو، گونجاو، لواو، لەبار، دروست، باش، بەڕێ‌وجێ، پێوەندی‌دار
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) گونجاو و درووست بۆ بارودۆخێک"""),
                    SentencesRow(
                      englishText:
                          "Now that the problem has been identified, appropriate action can be taken.",
                      kurdishText:
                          "ئێستا کە کێشەکە ناسێنراوە، ھەنگاوی گونجاو دەبێت بگیردرێتە بەر.",
                      onPressedBritish: () => speakappropriate348("en-GB"),
                      onPressedAmerican: () => speakappropriate348("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Is now an appropriate time to make a speech?",
                      kurdishText:
                          "ئایا ئێستا کاتێکی باشە بۆ پێشکەش‌کردنی وتارێک؟",
                      onPressedBritish: () => speakappropriate351("en-GB"),
                      onPressedAmerican: () => speakappropriate351("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "This may be an appropriate treatment for many patients.",
                      kurdishText:
                          "ئەمە ڕەنگە چارەسەرێکی گونجاو بێت بۆ زۆر نەخۆش.",
                      onPressedBritish: () => speakappropriate352("en-GB"),
                      onPressedAmerican: () => speakappropriate352("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) بەکارھێنانی شتی کەسێکی تر بۆ خۆت"""),
                    SentencesRow(
                      englishText:
                          "Some of the opposition party's policies have been appropriated by the government.",
                      kurdishText:
                          "ھەندێک لە سیاسەتەکانی ئۆپۆزسیۆن لەلایەن حکومەتەوە دزراون.",
                      onPressedBritish: () => speakappropriate355("en-GB"),
                      onPressedAmerican: () => speakappropriate355("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He lost his job when he was found to have appropriated some of the company's money.",
                      kurdishText:
                          "لە کارەکەی دەرکرا لە دوای ئەوەی زانرا ھەندێک لە پارەی کۆمپانیاکەی بۆ خۆی بەکارھێناوە.",
                      onPressedBritish: () => speakappropriate357("en-GB"),
                      onPressedAmerican: () => speakappropriate357("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) بردن یان پێدانی شتێک، بۆ نموونە پارە، بۆ بەکارھێنانی بۆ مەبەستێکی تایبەت"""),
                    SentencesRow(
                      englishText:
                          "Five million dollars have been appropriated for research into the disease.",
                      kurdishText:
                          "پێنج ملیۆن دۆلار تەرخان‌کراوە بۆ توێژینەوە لە نەخۆشییەکە.",
                      onPressedBritish: () => speakappropriate400("en-GB"),
                      onPressedAmerican: () => speakappropriate400("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) بردنی شتێک لە کەلتوورێک و بەکارھێنانی وەک ئەوەی ھی کەلتووری خۆت بێت"""),
                    SentencesRow(
                      englishText:
                          "As the empire expanded, they eagerly appropriated the artistic styles of their sunjects.",
                      kurdishText:
                          "کە ئیمپراتۆریەتییەکە فراوان بوو، ستایلی ھونەریی ژێردەستەکانیان بە پەرۆشییەوە دزی.",
                      onPressedBritish: () => speakappropriate403("en-GB"),
                      onPressedAmerican: () => speakappropriate403("en-US"),
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
