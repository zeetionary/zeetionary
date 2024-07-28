import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycolour extends StatelessWidget {
  // blank divider
  EnglishEntrycolour({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcolour(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("colour");
  }

  Future<void> speakcolours1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your favourite colour?");
  }

  Future<void> speakcolours2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She always wears dark colours.");
  }

  Future<void> speakcolours3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her hair is a reddish-brown colour.");
  }

  Future<void> speakcolours4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The stage lights changed colour from red to blue.");
  }

  Future<void> speakcolours5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dark colours suit you best.");
  }

  Future<void> speakcolours6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you dream in colour?");
  }

  Future<void> speakcolours7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Is the film in colour or black and white?");
  }

  Future<void> speakcolours8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Discrimination on the grounds of race, religion or colour was outlawed.");
  }

  Future<void> speakcolours9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can we seriously believe people who claim not to see colour?");
  }

  Future<void> speakcolours10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fresh air brought colour to their cheeks.");
  }

  Future<void> speakcolours11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Colour flooded her face when she thought of what had happened.");
  }

  Future<void> speakcolours12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This colour runs, so wash the shirt separately.");
  }

  Future<void> speakcolours13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The old town is full of colour and attractions.");
  }

  Future<void> speakcolours14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These flowers certainly give the room a bit of colour.");
  }

  Future<void> speakcolours15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Red and white are the team colours.");
  }

  Future<void> speakcolours16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are people of different political colours on the committee.");
  }

  Future<void> speakcolours17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children love to draw and colour.");
  }

  Future<void> speakcolours18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How long have you been colouring your hair?");
  }

  Future<void> speakcolours19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He drew a monster and coloured it green.");
  }

  Future<void> speakcolours20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone in the room stared at Gerry, and he coloured slightly.");
  }

  Future<void> speakcolours21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She coloured at his remarks.");
  }

  Future<void> speakcolours22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This incident coloured her whole life.");
  }

  Future<void> speakcolours23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't let your judgement be coloured by personal feelings.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "colour"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌlə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcolour("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌlər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcolour("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ڕەنگ،	ڕەنگی پێست،	سووری و گەشاوەیی سەروچاو، ئاڵا،	ڕواڵەت، ڕووکار،	دڵڕفێنی، ورووژان، سەرنج‌ڕاکێشی،	نژاد، ڕەگەز،	تین‌وگوڕ، کەف‌کوڵ 
"""),
                          const DefinitionKurdish(text: "١. (ناو) ڕەنگ"),
                          SentencesRow(
                            englishText: "What's your favourite colour?",
                            kurdishText: "ڕەنگی دڵخوازت چییە؟", // colour",
                            onPressedBritish: () => speakcolours1("en-GB"),
                            onPressedAmerican: () => speakcolours1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She always wears dark colours.",
                            kurdishText: "ھەمیشە ڕەنگی تاریک لەبەر دەکات؟",
                            onPressedBritish: () => speakcolours2("en-GB"),
                            onPressedAmerican: () => speakcolours2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Her hair is a reddish-brown colour.",
                                    kurdishText: "قژی ڕەنگێکی قاوەیی سوورباوە.",
                                    onPressedBritish: () =>
                                        speakcolours3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcolours3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The stage lights changed colour from red to blue.",
                                    kurdishText:
                                        "لایتەکانی ئەم ستەیجە ڕەنگیان گۆڕی لە سوورەوە بۆ شین.",
                                    onPressedBritish: () =>
                                        speakcolours4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcolours4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Dark colours suit you best.",
                                    kurdishText:
                                        "ڕەنگە تاریکەکانت زیاترین لێدێت.",
                                    onPressedBritish: () =>
                                        speakcolours5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcolours5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بە ھەموو ڕەنگەکانەوە نەک تەنھا ڕەش و سپی"),
                          SentencesRow(
                            englishText: "Do you dream in colour?",
                            kurdishText: "خەون بە ڕەنگینی دەبینیت؟",
                            onPressedBritish: () => speakcolours6("en-GB"),
                            onPressedAmerican: () => speakcolours6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Is the film in colour or black and white?",
                            kurdishText: "فیلمەکە ڕەنگاوڕەنگە یان ڕەش و سپییە؟",
                            onPressedBritish: () => speakcolours7("en-GB"),
                            onPressedAmerican: () => speakcolours7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ڕەنگی پێستی کەسێک وەک ئاماژە بە ڕەگەزی کەسێک"),
                          SentencesRow(
                            englishText:
                                "Discrimination on the grounds of race, religion or colour was outlawed.",
                            kurdishText:
                                "جیاکاری لەسەر بنەمای ڕەگەز، ئایین، یان ڕەنگی پێست بە نایاسایی کرا.",
                            onPressedBritish: () => speakcolours8("en-GB"),
                            onPressedAmerican: () => speakcolours8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Can we seriously believe people who claim not to see colour?",
                            kurdishText:
                                "بە جدی دەتوانین باوەڕ بەو کەسانە بکەین کە ڕەنگی پێست گرنگ نییە لایان؟",
                            onPressedBritish: () => speakcolours9("en-GB"),
                            onPressedAmerican: () => speakcolours9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕەنگێکی سوور یان پەمەیی لەسەر ڕووخساری کەسێک، بەتایبەتی کە ئەوە پیشان دەدات کە تەندرووستە یان شەرمەزارە"),
                          SentencesRow(
                            englishText:
                                "The fresh air brought colour to their cheeks.",
                            kurdishText: "ھەوا پاکەکە گەشانەوەی دا بە گۆنایان.",
                            onPressedBritish: () => speakcolours10("en-GB"),
                            onPressedAmerican: () => speakcolours10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Colour flooded her face when she thought of what had happened.",
                            kurdishText: "سوور ھەڵگەڕا کە زانی چی ڕوویداوە.",
                            onPressedBritish: () => speakcolours11("en-GB"),
                            onPressedAmerican: () => speakcolours11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) مادەیەک کە ڕەنگ دەبەخشێت بە شتێک"),
                          SentencesRow(
                            englishText:
                                "This colour runs, so wash the shirt separately.",
                            kurdishText:
                                "ئەم ڕەنگە ئەدرێتەوە، بۆیە درێسەکە بە جیا بشۆ.",
                            onPressedBritish: () => speakcolours12("en-GB"),
                            onPressedAmerican: () => speakcolours12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) وردەکاری یان خاسیەتی سەرنجڕاکێش و بەچێژ"),
                          SentencesRow(
                            englishText:
                                "The old town is full of colour and attractions.",
                            kurdishText:
                                "شارۆکەکە کۆنەکە پڕ لە دڵڕفێنەری و سەرنجڕاکێشییە.",
                            onPressedBritish: () => speakcolours13("en-GB"),
                            onPressedAmerican: () => speakcolours13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These flowers certainly give the room a bit of colour.",
                            kurdishText:
                                "ئەم گوڵانە بەدڵنیاییەوە چێژێک دەدەن بە ژوورەکە.",
                            onPressedBritish: () => speakcolours14("en-GB"),
                            onPressedAmerican: () => speakcolours14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ئەو ڕەنگانەی کە لەسەر ئاڵا، جل، ھتد بەکاردێن"),
                          SentencesRow(
                            englishText: "Red and white are the team colours.",
                            kurdishText: "سوور و سپی ڕەنگەکانی تیمەکەن.",
                            onPressedBritish: () => speakcolours15("en-GB"),
                            onPressedAmerican: () => speakcolours15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There are people of different political colours on the committee.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) خەڵکی لە ڕەنگە جیاوازەکانی سیاسەتەوە لە لیژنەکەن.",
                            onPressedBritish: () => speakcolours16("en-GB"),
                            onPressedAmerican: () => speakcolours16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) ڕەنگکردن بە بۆیە، پێنووس، ھتد"),
                          SentencesRow(
                            englishText:
                                "The children love to draw and colour.",
                            kurdishText:
                                "منداڵەکان حەزیان بە وێنەکێشان و ڕەنگکردن ھەیە.",
                            onPressedBritish: () => speakcolours17("en-GB"),
                            onPressedAmerican: () => speakcolours17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "How long have you been colouring (= dyeing) your hair?",
                            kurdishText: "چەند دەبێت قژت بۆیە دەکەیت.",
                            onPressedBritish: () => speakcolours18("en-GB"),
                            onPressedAmerican: () => speakcolours18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He drew a monster and coloured it green.",
                            kurdishText: "دڕندەیەکی کێشا و ڕەنگی سەوزی کرد.",
                            onPressedBritish: () => speakcolours19("en-GB"),
                            onPressedAmerican: () => speakcolours19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) سوورھەڵگەڕان بەھۆی شەرمەزارییەوە"),
                          SentencesRow(
                            englishText:
                                "Everyone in the room stared at Gerry, and he coloured slightly.",
                            kurdishText:
                                "ھەموان لە ژوورەکەدا لە گێرییان دەڕوانی، و کەمێک سوورھەڵگەڕا.",
                            onPressedBritish: () => speakcolours20("en-GB"),
                            onPressedAmerican: () => speakcolours20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She coloured at his remarks.",
                            kurdishText: "سوورھەڵگەڕا بە لێدوانەکانی.",
                            onPressedBritish: () => speakcolours21("en-GB"),
                            onPressedAmerican: () => speakcolours21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) کاریگەری دانان لەسەر کەسێک، بەتایبەتی بە نەرێنی"),
                          SentencesRow(
                            englishText:
                                "This incident coloured her whole life.",
                            kurdishText:
                                "ئەم ڕووداوە کاریگەری لە تەواوی ژیانی کرد.",
                            onPressedBritish: () => speakcolours22("en-GB"),
                            onPressedAmerican: () => speakcolours22("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Don't let your judgement be coloured by personal feelings.",
                            kurdishText:
                                "مەھێڵە بڕیارەکانی کاریگەر بن بە ھەستی کەسیت.",
                            onPressedBritish: () => speakcolours23("en-GB"),
                            onPressedAmerican: () => speakcolours23("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
                        YoutubeEmbeddedend(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  // Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: colour (derived forms: colours)
Usage: Brit, Cdn (US: color)
1. A visual attribute of things that results from the light they emit, transmit or reflect (= color [US], coloring [US], colouring [Brit, Cdn])
"a white colour is made up of many different wavelengths of light";
 
2. Interest and variety and intensity (= color [US], vividness)
"the Puritan Period was lacking in colour";
 
3. The timbre of a musical sound (= color [US], coloration, colouration [Brit, Cdn])
"the recording fails to capture the true colour of the original music";
 
4. An outward or token appearance or form that is deliberately misleading (= semblance, gloss, color [US])
"the situation soon took on a different colour"; "he hoped his claims would have a colour of authenticity";
 
5. Any material used for its colour (= coloring material [US], colouring material [Brit, Cdn], color [US])
"she used a different colour for the trim";
 
6. (physics) the characteristic of quarks that determines their role in the strong interaction (= color [US])
"each flavour of quarks comes in three colours";
 
7. The appearance of objects (or light sources) described in terms of a person's perception of their hue and lightness (or brightness) and saturation (= color [US])

- Verb: colour (derived forms: colouring, colours, coloured)
Usage: Brit, Cdn (US: color)
1. Add colour to (= color [US], colorize [US], colorise [Brit], colourise [Brit], colourize [Brit, Cdn], color in [US], colour in [Brit, Cdn])
"The child coloured the drawings"; "Fall coloured the trees"; "The child coloured in the drawings";
 
2. Affect as in thought or feeling (= tinge, color [US], distort)
"My personal feelings colour my judgment in this case"; "The sadness coloured his life";
 
3. Modify or bias (= color [US])
"His political ideas colour his lectures";
 
4. Decorate with colours (= color [US], emblazon)
"colour the walls with paint in warm tones";
 
5. Give a deceptive explanation or excuse for (= color [US], gloss)
"colour a lie";
 
6. Change colour, often in an undesired manner (= discolor [US], discolour [Brit, Cdn], color [US])
"The shirts coloured";

- Adjective: colour 
Usage: Brit, Cdn (US: color)
1. (photography) having or capable of producing colours (= color [US])
"colour film"; "he rented a colour television"; "marvellous colour illustrations";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'ntyKOEZ4hK4';
  final double _startSeconds = 12;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'E2_kRmS6y8A';
  final double _startSeconds = 1356;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 206;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'mcZdTvOqmvI';
  final double _startSeconds = 184;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'Y_N0AxCzVLg';
  final double _startSeconds = 807;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'oiLdWXLXDeA';
  final double _startSeconds = 977;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'HL_0OL7vZ44';
  final double _startSeconds = 219;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB