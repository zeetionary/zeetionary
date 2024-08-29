import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfire extends StatefulWidget {
  const EnglishEntryfire({super.key});

  @override
  State<EnglishEntryfire> createState() => _EnglishEntryfireState();
}

class _EnglishEntryfireState extends State<EnglishEntryfire> {
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
- Noun: fire (derived forms: fires)
1. The process of combustion of flammable materials; produces heat, light, and (often) smoke (= flame, flaming)
"fire was one of our ancestors' first discoveries";
 
2. The event of something burning (often destructive)
"they lost everything in the fire"
 
3. The act of firing weapons or artillery at an enemy (= firing)
"hold your fire until you can see the whites of their eyes"; "they retreated in the face of withering enemy fire";
 
4. A fireplace in which a relatively small fire is burning
"they sat by the fire and talked"
 
5. Feelings of great warmth and intensity (= ardor [US], ardour [Brit, Cdn], fervor [US], fervour [Brit, Cdn], fervency, fervidness)
 
6. Fuel that is burning and is used as a means for cooking
"put the kettle on the fire"; "barbecue over an open fire"
 
7. A severe trial
"he went through fire and damnation"
 
8. Intense adverse criticism (= attack, flak [informal], flack, blast [informal], stick [Brit, informal])
"Clinton directed his fire at the Republican Party"; "he published an unexpected fire on my work";
 
9. A shell, bullet, etc. fired from a gun or other ranged weapon
 
10. [archaic] Once thought to be one of four elements composing the universe (Empedocles), associated with the humour bile

- Verb: fire (derived forms: firing, fires, fired)
1. Start firing a weapon (= open fire)
 
2. Cause to go off (= discharge)
"fire a bullet"; "fire a gun";
 
3. (cooking) bake in a kiln so as to harden
"fire pottery"
 
4. Terminate the employment of; discharge from an office or position (= displace, give notice, can [N. Amer, informal], dismiss, give the axe [informal], send away, sack, force out, give the sack, terminate)
"The boss fired his secretary today";
 
5. Go off or discharge (= discharge, go off)
"The gun fired";
 
6. Drive out or away by or as if by fire
"The soldiers were fired"; "Surrender fires the cold scepticism"
 
7. Call forth (emotions, feelings, and responses) (= arouse, elicit, enkindle [literary], kindle, evoke, raise, provoke)
 
8. Destroy by fire (= burn, burn down)
 
9. Provide as a source of energy or heat (= fuel)
"Oil fires the furnace";
 
10. (physiology) generate an electrical impulse
"the neurons fired fast"
 
11. Become ignited (= flame up)
"The furnace wouldn't fire";
 
12. Start or maintain a fire in (= light, ignite)
"fire the furnace";
""",
  );

  final String keyword = "fire";
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
    await flutterTts.speak("""fire""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Most animals are afraid of fire.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""When did people start to cook with fire?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The sky was filled with fire and smoke.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The sun is a ball of fire.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Several youths had set fire to the police car.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The car was on fire.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A candle had set the curtains on fire.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Forest fires raged all over Australia.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Five people died in a house fire.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fires were breaking out everywhere.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A fire had started in the kitchen.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was accused of deliberately starting a fire.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fire can spread very quickly.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The warehouse was destroyed by fire.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They cook on an open fire.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sam had lit a fire to welcome us home.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Come and get warm by the fire.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We sat round the fire and told stories.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cat was curled up near the fire.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Put some more wood on the fire.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The fire was beginning to die down.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Shall I put the fire on?""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She used a match to light the gas fire.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is the fire still on?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The gunmen opened fire on the police.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was hit by enemy fire.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The men were under heavy fire.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He ordered his men to hold their fire.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Protesters exchanged fire with the guards.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I’ll give you covering fire while you try to escape.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She directed her fire against the new education policy.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The health minister has come under fire from all sides.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The EU came under fire from the US over its biotech policy.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her eyes were full of fire.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Something of the old fire had returned to their rivalry.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The officer ordered his men to fire.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Soldiers fired on the crowd.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fired into the air.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We heard the sound of guns firing.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had to fire him for dishonesty.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was responsible for hiring and firing staff.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The talk had fired her with enthusiasm for the project.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The stories fired his imagination.""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """fire""",
                      // alsoEnglishWord: "also: fire",
                      britshText: """IpaUK: /ˈfaɪə(r)/""",
                      americanText: """IpaUS: /ˈfaɪər/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const TabBar(
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
                    const DividerDefinition(),
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
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: ئاگر، ئاور،	ئاورگرتن، سووتان، سووتمان، ئاوری ماڵ‌وێران‌کەر، گرتن، ئاورتێ‌بەربوون،	(سەربازی) خستن، تەقاندن،	کوورە،	تین‌وگوڕ، داگیرسان، بەپەرۆشی، خرۆش، تامەزرۆیی
"""),
                    const DefinitionKurdish(text: """١. (ناو) ئاگر"""),
                    SentencesRow(
                      englishText: """Most animals are afraid of fire.""",
                      kurdishText: """زۆر ئاژەڵ لە ئاگر دەترسن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When did people start to cook with fire?""",
                      kurdishText:
                          """کەی خەڵکی دەستیان کرد بە چێشت لێنان بە ئاگر؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The sky was filled with fire and smoke.""",
                      kurdishText: """ئاسمان پڕ لە ئاگر و دووکەڵ بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The sun is a ball of fire.""",
                      kurdishText: """خۆر تۆپەڵە ئاگرێکە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئاگر کە لە کۆنترۆڵ دەرچووە و خانوو، دار، ھتد دەسووتێنن"""),
                    SentencesRow(
                      englishText:
                          """Several youths had set fire to the police car (= had made it start burning).""",
                      kurdishText:
                          """ژمارەیەک گەنج ئاگریان لە ئۆتۆمبێلی پۆلیس بەردابوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car was on fire.""",
                      kurdishText: """ئۆتۆمبێلەکە لە ئاگردا بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """A candle had set the curtains on fire.""",
                              kurdishText:
                                  """مۆمێک ئاگری لە پەردەکان بەر دابوو.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Forest fires raged all over Australia.""",
                              kurdishText:
                                  """ئاگری دارستان لە ھەموو ئوسترالیا کەوتبوونەوە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Five people died in a house fire.""",
                              kurdishText:
                                  """پێنج کەس لە ئاگری خانوویەکدا مردن.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Fires were breaking out everywhere.""",
                              kurdishText:
                                  """ئاگر لە ھەموو شوێنێک دەکەوتنەوە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A fire had started in the kitchen.""",
                              kurdishText:
                                  """ئاگرێک لە چێشتخانەکە کەوتبووەوە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was accused of deliberately starting a fire.""",
                              kurdishText:
                                  """تاوانبار کرا بەوەی بە ئەنقەست ئاگرێکی کردبووەوە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Fire can spread very quickly.""",
                              kurdishText: """ئاگر دەکرێت خێرا بڵاوببێتەوە.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The warehouse was destroyed by fire.""",
                              kurdishText: """کۆگاکە بە ئاگر لەناوچوو.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) چینێک لە سووتەمەنی کە خواردن لێنان یان گەرمکردنەوە بەکاردێت"""),
                    SentencesRow(
                      englishText: """They cook on an open fire.""",
                      kurdishText: """لەسەر ئاگرێکی کراوە چێشت لێدەنێت.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sam had lit a fire to welcome us home.""",
                      kurdishText:
                          """سام ئاگرێکی کردبووەوە بۆ پێشوازی گەڕانەوەمان.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Come and get warm by the fire.""",
                      kurdishText: """وەرە و لای ئاگرەکە دابنیشە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We sat round the fire and told stories.""",
                      kurdishText:
                          """لە دەوری ئاگرەکە دانیشتین و چیرۆکمان گێڕایەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The cat was curled up near the fire.""",
                      kurdishText:
                          """پشیلە لە تەنیشت ئاگرەکە خۆی گرمۆڵە کردبوو..""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Put some more wood on the fire.""",
                      kurdishText: """ھەندێک داری تر بخە سەر ئاگرەکە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The fire was beginning to die down.""",
                      kurdishText: """ئاگرەکە بەرەو کزبوون دەچوو.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) شتێک بۆ گەرمکردنەوەی ژوورێک"""),
                    SentencesRow(
                      englishText: """Shall I put the fire on?""",
                      kurdishText: """گەرمکەرەوەکە بکەمەوە؟""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She used a match to light the gas fire.""",
                      kurdishText:
                          """شقارتەیەکی بەکارھێنا بۆ کردنەوەی گازەکە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Is the fire still on?""",
                      kurdishText: """گەرمکەرەوەکە ھێشتا لە کارە؟""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) تەقەی چەکێک"""),
                    SentencesRow(
                      englishText:
                          """The gunmen opened fire on (= started shooting at) the police.""",
                      kurdishText: """چەکدارەکان تەقەیان کرد لە پۆلیس.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """He was hit by enemy fire.""",
                              kurdishText: """بە فیشەکی دوژمن لێیدرا.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The men were under heavy fire (= being shot at many times).""",
                              kurdishText:
                                  """پیاوەکان لەژێر گوللەبارانی سەخت بوون.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He ordered his men to hold their fire (= not to shoot).""",
                              kurdishText:
                                  """فەرمانی بە پیاوەکانی کرد تەقە نەکەن.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Protesters exchanged fire with the guards (= they shot at each other).""",
                              kurdishText:
                                  """خۆپیشاندەران تەقەیان لە پاسەوانەکان کرد.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I’ll give you covering fire while you try to escape.""",
                              kurdishText:
                                  """من تەقە دەکەم بۆ پاراستنت کە ھەوڵ دەدەیت ڕابکەیت.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) ڕەخنەی توند"""),
                    SentencesRow(
                      englishText:
                          """She directed her fire against the new education policy.""",
                      kurdishText:
                          """ڕەخنەی خۆی ڕووکرد لە سیاسەتە تازەکەی پەروەردە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The health minister has come under fire from all sides.""",
                      kurdishText:
                          """وەزیری تەندرووستی لە ھەموو لایەکەوە ڕووبەڕووی ڕەخنە بووەتەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The EU came under fire from the US over its biotech policy.""",
                      kurdishText:
                          """یەکێتیی ئەرووپا ڕووبەڕووی ڕەخنەی ئەمریکا بەھۆی سیاسەتی بۆ زیندەتەکنەلۆژیا.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) ھەستی زۆر بەھێز، بەتایبەتی تووڕەیی یان تامەزرۆیی"""),
                    SentencesRow(
                      englishText: """Her eyes were full of fire.""",
                      kurdishText: """چاوەکانی پڕ لە تووڕەیی بوون.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Something of the old fire had returned to their rivalry.""",
                      kurdishText:
                          """ھەندێک لە ڕقی کۆنیان گەڕابوویەوە بۆ ڕکابەرییەکەیان.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) تەقەکردن بە چەک"""),
                    SentencesRow(
                      englishText: """The officer ordered his men to fire.""",
                      kurdishText:
                          """ئەفسەرەکە فەرمانی بە پیاوەکانی کرد تەقە بکەن.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Soldiers fired on the crowd.""",
                      kurdishText:
                          """سەربازەکان تەقەیان بەسەر خەڵکەکەدا کرد.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He fired into the air.""",
                      kurdishText: """تەقەی کرد بە ئاسماندا.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) ئەوەی چەکێک بتەقێندرێت"""),
                    SentencesRow(
                      englishText: """We heard the sound of guns firing.""",
                      kurdishText: """گوێمان لە چەکێک بوو دەتەقی.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) دەرکردن لە کار"""),
                    SentencesRow(
                      englishText: """We had to fire him for dishonesty.""",
                      kurdishText: """پێویست بوو دەری بکەین بۆ فێڵبازی.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was responsible for hiring and firing staff.""",
                      kurdishText: """بەرپرسی وەرگرتن و دەرکردن بوو.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) واکردن لە کەسێک زۆر تامەزرۆ بێت لەسەر شتێک یان حەزی لێ بکات"""),
                    SentencesRow(
                      englishText:
                          """The talk had fired her with enthusiasm for the project.""",
                      kurdishText:
                          """گفتوگۆکە پڕی کردبوو لە تامەزرۆیی بۆ کارەکە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The stories fired his imagination.""",
                      kurdishText: """چیرۆکەکان خەیاڵییان جۆش دا.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
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
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
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
      ),
    );
  }
}

const String _videoIdend = 'fvoCzunex3I';
const double _startSecondsend = 29;
const String _videoIdone = 'kXShLPXfWZA';
const double _startSecondsone = 120;
const String _videoIdtwo = 'MGO4_8YRKro';
const double _startSecondstwo = 235;
const String _videoIdthree = 'Rl2_axBNkrw';
const double _startSecondsthree = 0;
const String _videoIdfour = 'WgxO7vhlF7A';
const double _startSecondsfour = 5;
const String _videoIdfive = 'nBG2q70V7Cw';
const double _startSecondsfive = 27;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB