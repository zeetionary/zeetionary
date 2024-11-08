import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalien extends StatefulWidget {
  const EnglishEntryalien({super.key});

  @override
  State<EnglishEntryalien> createState() => _EnglishEntryalienState();
}

class _EnglishEntryalienState extends State<EnglishEntryalien> {
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
- Adjective: alien
1. Not contained in or deriving from the essential nature of something (= foreign)
"an economic theory alien to the spirit of capitalism";
 
2. Being or from or characteristic of another place or part of the world (= exotic)
"alien customs";

- Noun: alien (derived forms: aliens, aliened, aliening)
1. A person who comes from a foreign country; someone who does not owe allegiance to your country (= foreigner, noncitizen, outlander)
 
2. Anyone who does not belong in the environment in which they are found (= stranger, unknown)
 
3. A form of life assumed to exist outside the Earth or its atmosphere (= extraterrestrial being, extraterrestrial, ET)

- Verb: alien (derived forms: aliens, aliened, aliening)
1. Transfer property or ownership (= alienate)
"The will aliened the property to the heirs";
""",
  );
// 188888880002200

  final String keyword = "alien";
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
    await flutterTts.speak("""alien""");
  }

  Future<void> speakalien46588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("During the war, he was imprisoned as an enemy alien.");
  }

  Future<void> speakalien369222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Few movies represent intelligent aliens as physically different from humans.");
  }

  Future<void> speakalien49255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In a world that had suddenly become alien and dangerous, he was her only security.");
  }

  Future<void> speakalien3411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A part of me still feels alien in this country.");
  }

  Future<void> speakalien34177(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The idea is alien to our religion.");
  }

  Future<void> speakalien35288(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("An alien spacecraft crashed into Earth.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JuYYsmQ2ulI';
    const double startSecondsend = 3;
    const String videoIdone = 'HhUdYJg0JOM';
    const double startSecondsone = 57;
    const String videoIdtwo = 'ZITO-3JuTDA';
    const double startSecondstwo = 14;
    const String videoIdthree = 'x3jQJT0tr4o';
    const double startSecondsthree = 108;
    const String videoIdfour = 'FGgXzIqay6M';
    const double startSecondsfour = 11;
    const String videoIdfive = 'uNW642RYINI';
    const double startSecondsfive = 19;
    // final String _videoId = '9brZMuiPRb4';
    // final double _startSeconds = 3;
    // final String _videoId = 'mKmFmL0Wf5M';
    // final double _startSeconds = 2496;
    // final String _videoId = '-znzPts5z1s';
    // final double _startSeconds = 2016;
    // final String _videoId = 'THTDrLYFCEQ';
    // final double _startSeconds = 75;

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
                      word: """alien""",
                      // alsoEnglishWord: "also: alien",
                      britshText: """IpaUK: /ˈeɪliən/""",
                      americanText: """IpaUS: /ˈeɪliən/""",
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
کوردی: ھاووڵاتی بیانی یان بێگانە، بیانی، دەرەکی، بێگانە، ئاوەکی، نامۆ، نەناس، لاوە، غەریب، غەوارە، نائاسایی، پەسندنەکراو، جیاواز، دژ، (سەربە) بوونەوەری جیھانەکانی تر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کەسێک کە خەڵکی ئەو وڵاتە نییە کە تێیدا دەژی یان کاردەکات"
                            ""),
                    SentencesRow(
                      englishText:
                          "During the war, he was imprisoned as an enemy alien.",
                      kurdishText:
                          "لە کاتی جەنگەکەدا وەک ھاوڵاتییەکی دوژمن زیندانی کرا.",
                      onPressedBritish: () => speakalien46588("en-GB"),
                      onPressedAmerican: () => speakalien46588("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بوونەوەری ھەسارەیەک جگە لە زەوی"""),
                    SentencesRow(
                      englishText:
                          "Few movies represent intelligent aliens as physically different from humans.",
                      kurdishText:
                          "کەم فیلم بوونەوەری ئاسمانی لە ڕووی جەستەییەوە جیاواز لە مرۆڤ پیشان دەدەن.",
                      onPressedBritish: () => speakalien369222("en-GB"),
                      onPressedAmerican: () => speakalien369222("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) نامۆ و ترسێنەر، جیاواز لەوەی ئاساییە"""),
                    SentencesRow(
                      englishText:
                          "In a world that had suddenly become alien and dangerous, he was her only security.",
                      kurdishText:
                          "لە جیھانێکدا کە جیاواز و ترسێنەرە، ئەو تەنھا پارێزەریەتی.",
                      onPressedBritish: () => speakalien49255("en-GB"),
                      onPressedAmerican: () => speakalien49255("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) بیانی؛ خەڵکی وڵاتێکی تر"""),
                    SentencesRow(
                      englishText:
                          "A part of me still feels alien in this country.",
                      kurdishText:
                          "بەشێکم ھێشتا ھەست بە بێگانەیی دەکات لەم وڵاتە.",
                      onPressedBritish: () => speakalien3411("en-GB"),
                      onPressedAmerican: () => speakalien3411("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێکی نائاسایی"""),
                    SentencesRow(
                      englishText: "The idea is alien to our religion.",
                      kurdishText: "بیرۆکەکە نامۆیە بە ئاینەکەمان.",
                      onPressedBritish: () => speakalien34177("en-GB"),
                      onPressedAmerican: () => speakalien34177("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ھاوەڵناو) پەیوەندیدار بە بوونەوەری دەرەوەی زەوی"""),
                    SentencesRow(
                      englishText: "An alien spacecraft crashed into Earth.",
                      kurdishText:
                          "کەشتییەکی ئاسمانی بوونەوەری دیکە کێشای بە زەویدا.",
                      onPressedBritish: () => speakalien35288("en-GB"),
                      onPressedAmerican: () => speakalien35288("en-US"),
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


