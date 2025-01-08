import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantique extends StatefulWidget {
  const EnglishEntryantique({super.key});

  @override
  State<EnglishEntryantique> createState() => _EnglishEntryantiqueState();
}

class _EnglishEntryantiqueState extends State<EnglishEntryantique> {
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
- Adjective: antique 
1. Made in or typical of earlier times and valued for its age
"the beautiful antique French furniture"
 
2. Out of fashion (= démodé, ex, old-fashioned, old-hat [informal], outmoded, passé, passée, vieux jeu, rinky-dink [N. Amer, informal])
"a suit of rather antique appearance"; "antique attire";
 
3. Belonging to or lasting from times long ago (= age-old)
"the antique fear that days would dwindle away to complete darkness";

- Noun: antique (derived forms: antiques)
1. Any piece of furniture or decorative object or the like produced in a former period and valuable because of its beauty or rarity
 
2. [informal] An elderly man or woman (= old-timer [informal], oldtimer [informal], gaffer [informal], old geezer [informal])

- Verb: antique (derived forms: antiquing, antiques, antiqued)
1. Shop for antiques
"We went antiquing on Saturday"
 
2. Give an antique appearance to (= antiquate)
"antique furniture";
""",
  );
// 188888880002200

  final String keyword = "antique";
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
    await flutterTts.speak("""antique""");
  }

  Future<void> speakantique1138(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Some antique jewelry sparkles and shines.");
  }

  Future<void> speakantique1140(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Priceless antiques were destroyed in the fire.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'nsKnDJEj_Ec';
    const double startSecondsend = 84;
    const String videoIdone = '2FISJ9xR5Ds';
    const double startSecondsone = 8;
    const String videoIdtwo = 'u84hGZGQiFM';
    const double startSecondstwo = 112;
    const String videoIdthree = '-VR3ff0ZOHQ';
    const double startSecondsthree = 171;
    const String videoIdfour = 'KiOV6Ne3EN0';
    const double startSecondsfour = 1;
    const String videoIdfive = 'SeDzw6fDZh8';
    const double startSecondsfive = 27;
    // final String _videoId = 'iZkSRRObB78';
    // final double _startSeconds = 112;
    // final String _videoId = '61T-9Z3EX3k';
    // final double _startSeconds = 1;
    // final String _videoId = 'M1ymAUiUxLc';
    // final double _startSeconds = 1;
    // final String _videoId = 'kgAWBjDhAGM';
    // final double _startSeconds = 32;
    // final String _videoId = 'ODat-W-qTJQ';
    // final double _startSeconds = 17;
    // final String _videoId = '6P2pWFUEHaQ';
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
                      word: """antique""",
                      // alsoEnglishWord: "also: antique",
                      britshText: """IpaUK: /ænˈtiːk/""",
                      americanText: """IpaUS: /ænˈtiːk/""",
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
کوردی: ئەنتیکە، کۆن، باستانی، زوویینە، لەمێژینە، شوێنەواری کۆن، ئاسەواری دێرینە
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) شتی کۆن و گران‌بەھا"""),
                    SentencesRow(
                      englishText:
                          "Priceless antiques were destroyed in the fire.",
                      kurdishText:
                          "پارچە ئەنتیکی گران‌بەھا لە ئاگرەکەدا لەناوچوون.",
                      onPressedBritish: () => speakantique1140("en-GB"),
                      onPressedAmerican: () => speakantique1140("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) کۆن و گران‌بەھا"""),
                    SentencesRow(
                      englishText: "Some antique jewelry sparkles and shines.",
                      kurdishText:
                          "ھەندێک خشڵی ئەنتیکە ھێشتا بریسکە و درەوشانەوەیان ھەیە.",
                      onPressedBritish: () => speakantique1138("en-GB"),
                      onPressedAmerican: () => speakantique1138("en-US"),
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
