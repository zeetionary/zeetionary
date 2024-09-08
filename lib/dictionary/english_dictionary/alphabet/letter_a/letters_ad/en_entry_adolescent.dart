import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadolescent extends StatefulWidget {
  const EnglishEntryadolescent({super.key});

  @override
  State<EnglishEntryadolescent> createState() => _EnglishEntryadolescentState();
}

class _EnglishEntryadolescentState extends State<EnglishEntryadolescent> {
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
- Adjective: adolescent (derived forms: adolescents)
1. Being of the age 13 through 19 (teen, teenage, teenaged)
"the adolescent years";
 
2. Displaying or suggesting a lack of maturity (= jejune, juvenile, puerile)
"adolescent insecurity";
 
3. In the state of development between puberty and maturity
"adolescent boys and girls"
 
4. Relating to or peculiar to or suggestive of an adolescent
"adolescent problems"

- Noun: adolescent 
1. A juvenile between the onset of puberty and maturity (= (= stripling, teenager, teen))
""",
  );
// 188888880002200

  final String keyword = "adolescent";
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
    await flutterTts.speak("""adolescent""");
  }

  Future<void> speakadol12589(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Stop acting like an adolescent!");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'uaW3CNNKImE';
    const double startSecondsend = 35;
    const String videoIdone = '4__PVuD6VtA';
    const double startSecondsone = 424;
    const String videoIdtwo = 'pLJyDN3XPe0';
    const double startSecondstwo = 53;
    const String videoIdthree = 'rY3kkhy9HmM';
    const double startSecondsthree = 7;
    const String videoIdfour = 'ddiOJLuu2mo';
    const double startSecondsfour = 119;
    const String videoIdfive = 'sHvr-izTZMk';
    const double startSecondsfive = 170;
    // const String videoId = 'DWbxIFC0Q2o';
    // const double startSeconds = 203;
    // const String videoId = 'hdqOCE9A9ak';
    // const double startSeconds = 222222222222222;

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
                      word: """adolescent""",
                      // alsoEnglishWord: "also: adolescent",
                      britshText: """IpaUK: /ˌædəˈlesnt/""",
                      americanText: """IpaUS: /ˌædəˈlesnt/""",
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
کوردی: نیمچەجەحێڵ، مێرمناڵ، مێرمنداڵ، تازەلاو، نۆجوان، ھەرزەکار، بزەڵە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) کەسێکی ھەرزەکار" ""),
                    SentencesRow(
                      englishText: "Stop acting like an adolescent!",
                      kurdishText: "وازبێنە لە ڕەفتارکردن وەک ھەرزەکارێک!",
                      onPressedBritish: () => speakadol12589("en-GB"),
                      onPressedAmerican: () => speakadol12589("en-US"),
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
