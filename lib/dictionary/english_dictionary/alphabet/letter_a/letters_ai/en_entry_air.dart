// end air
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryair extends StatefulWidget {
  const EnglishEntryair({super.key});

  @override
  State<EnglishEntryair> createState() => _EnglishEntryairState();
}

class _EnglishEntryairState extends State<EnglishEntryair> {
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
Noun: air (derived forms: airs)
1. A mixture of gases (especially oxygen) required for breathing; the stuff that the wind consists of
"air pollution"; "a smell of chemicals in the air"; "open a window and let in some air"; "I need some fresh air"
 
2. The region above the ground
"her hand stopped in mid air"; "he threw the ball into the air"
 
3. A distinctive but intangible quality surrounding a person or thing (= aura, atmosphere)
"an air of mystery"; "the house had a neglected air";
 
4. A slight wind (usually refreshing) (= breeze, zephyr, gentle wind)
"as he waited he could feel the air on his neck";
 
5. The mass of air surrounding the Earth (= atmosphere)
"it was exposed to the air";
 
6. A succession of notes forming a distinctive sequence (= tune, melody, strain, melodic line, line, melodic phrase)
"she was humming an air from Beethoven";
 
7. Medium for radio and television broadcasting (= airwave)
"the program was on the air from 9 til midnight";

8. Travel via aircraft (= air travel, aviation)
"air travel involves too much waiting in airports"; "if you've time to spare go by air";
 
9. [archaic] Once thought to be one of four elements composing the universe (Empedocles), associated with the humour blood

- Verb: air (derived forms: aired, airs, airing)
1. Expose to fresh air (= air out, aerate)
"air your old sneakers";
 
2. (broadcast medium) be broadcast
"This show will air Saturdays at 2 P.M."
 
3. (broadcast medium) broadcast over the airwaves, as in radio or television (= send, broadcast, beam, transmit)
"We cannot air this X-rated song";

4. Make public (= publicize, publicise [Brit], bare)
"She aired her opinions on welfare";

5. Expose to warm or heated air, so as to dry
"Air linen"
 
6. Let in fresh air to replace the current air (= vent, ventilate, air out)
"air the old winter clothes"; "air out the smoke-filled rooms";
""",
  );
// 188888880002200

  final String keyword = "air";
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
    await flutterTts.speak("""air""");
  }

  Future<void> speakair11524(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's go out for some fresh air.");
  }

  Future<void> speakair42112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was gasping for air as she ran out of the burning house.");
  }

  Future<void> speakair2133(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Wave your hands in the air!");
  }

  Future<void> speakair4144(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I kicked the ball high into the air.");
  }

  Future<void> speakair45666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We watched as the helicopter took to the air.");
  }

  Future<void> speakair3544(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was an air of complete confidence about her.");
  }

  Future<void> speakair58999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Air the sheets well.");
  }

  Future<void> speakair49258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Leave the window open to air the room.");
  }

  Future<void> speakair96354(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The issues were openly aired and discussed by the group.");
  }

  Future<void> speakair74952(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The program aired last week.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'k7YVxLLIuGM';
    const double startSecondsend = 108;
    const String videoIdone = 'y0mfNWKBQp0';
    const double startSecondsone = 11;
    const String videoIdtwo = '_-mBeYC2KGc';
    const double startSecondstwo = 7;
    const String videoIdthree = 'lZgp3WLQjoE';
    const double startSecondsthree = 986;
    const String videoIdfour = 'DPZzrlFCD_I';
    const double startSecondsfour = 138;
    const String videoIdfive = 'DTvS9lvRxZ8';
    const double startSecondsfive = 234;
    // final String _videoId = 'tK-tq3OfPF8';
    // final double _startSeconds = 928;
    // final String _videoId = 'e09xig209cQ';
    // final double _startSeconds = 20;
    // final String _videoId = 'EPmZolscz2M';
    // final double _startSeconds = 540;
    // final String _videoId = '1SO0uvexcew';
    // final double _startSeconds = 71;

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
                      word: """air""",
                      // alsoEnglishWord: "also: air",
                      britshText: """IpaUK: /eə(r)/""",
                      americanText: """IpaUS: /er/""",
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
کوردی: ھەوا، دەم‌وچاو، ڕوو، سەکوت، شێوە، ڕواڵەت، کەش و ھەوا، کەش، شنەبا، سریوە، ھەوا، بەند، سۆزە، ئاواز، خۆنواندن، خۆنیشان‌دان
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ھەوا؛ ئەو گازانەی کە لە بەرگەھەوای زەویدا ھەن"""),
                    SentencesRow(
                      englishText: "Let's go out for some fresh air.",
                      kurdishText: "با بچین ھەندێک ھەوای پاک ھەڵمژین.",
                      onPressedBritish: () => speakair11524("en-GB"),
                      onPressedAmerican: () => speakair11524("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "She was gasping for air as she ran out of the burning house.",
                      kurdishText:
                          "ھەناسەبڕکێی بوو بۆ ھەوا کە لە خانووە سووتاوەکەوە ڕایکردە دەرەوە.",
                      onPressedBritish: () => speakair42112("en-GB"),
                      onPressedAmerican: () => speakair42112("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بۆشایی؛ بۆشایی نێوان زەوی و ئاسمان"""),
                    SentencesRow(
                      englishText: "Wave your hands in the air!",
                      kurdishText: "دەست ڕاوەشێنە لە ھەوادا!",
                      onPressedBritish: () => speakair2133("en-GB"),
                      onPressedAmerican: () => speakair2133("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "I kicked the ball high into the air.",
                      kurdishText: "بەرز لە تۆپەکەم ھەڵدا بە ئاسماندا.",
                      onPressedBritish: () => speakair4144("en-GB"),
                      onPressedAmerican: () => speakair4144("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) ئاسمان کە فڕۆکە تێیدا دەفڕێت"""),
                    SentencesRow(
                      englishText:
                          "We watched as the helicopter took to the air.",
                      kurdishText: "سەیرمان کرد کە ھەلیکۆپتەرەکە فڕییە ئاسمان.",
                      onPressedBritish: () => speakair45666("en-GB"),
                      onPressedAmerican: () => speakair45666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ڕواڵەت؛ شێوازی دەرکەوتنی شتێک یان کەسێک"""),
                    SentencesRow(
                      englishText:
                          "There was an air of complete confidence about her.",
                      kurdishText: "ڕواڵەتێکی تەواو خۆباوەڕی تێدا بوو.",
                      onPressedBritish: () => speakair3544("en-GB"),
                      onPressedAmerican: () => speakair3544("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) وشککردنەوەی جل"""),
                    SentencesRow(
                      englishText: "Air the sheets well.",
                      kurdishText: "پێخەفەکان باش وشک بکەوە.",
                      onPressedBritish: () => speakair58999("en-GB"),
                      onPressedAmerican: () => speakair58999("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) ڕێگەدان بە ھەوا بۆ ناو ژوورێک"""),
                    SentencesRow(
                      englishText: "Leave the window open to air the room.",
                      kurdishText:
                          "پەنجەرەکە بە کراوەیی بھێڵەوە بۆ ئەوەی ھەوای پاک بێتە ژوورەکەوە.",
                      onPressedBritish: () => speakair49258("en-GB"),
                      onPressedAmerican: () => speakair49258("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) دەربڕینی بیروڕا"""),
                    SentencesRow(
                      englishText:
                          "The issues were openly aired and discussed by the group.",
                      kurdishText:
                          "بابەتەکان بە ڕاشکاوی دەربڕدران و گەنگەشە کران لەلایەن گرووپەکەوە.",
                      onPressedBritish: () => speakair96354("en-GB"),
                      onPressedAmerican: () => speakair96354("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (کردار) پەخشکردنی پڕۆگرامی تەلەفیزیۆنی یان ڕادیۆیی"""),
                    SentencesRow(
                      englishText: "The program aired last week.",
                      kurdishText: "پڕۆگرامەکە ھەفتەی ڕابردوو پێشکەشکرا.",
                      onPressedBritish: () => speakair74952("en-GB"),
                      onPressedAmerican: () => speakair74952("en-US"),
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
