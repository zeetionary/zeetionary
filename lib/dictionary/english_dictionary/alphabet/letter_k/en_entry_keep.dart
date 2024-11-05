import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykeep extends StatefulWidget {
  const EnglishEntrykeep({super.key});

  @override
  State<EnglishEntrykeep> createState() => _EnglishEntrykeepState();
}

class _EnglishEntrykeepState extends State<EnglishEntrykeep> {
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
- Verb: keep (Derived forms: keeps, keeping, kept)
1. Retain possession of (- hold on)
"Can I keep my old stuffed animals?"; "She kept her maiden name after she married";
 
2. Cause to continue in a certain state, position, or activity (- maintain, hold)
"The students keep me on my toes";
 
3. Resume or proceed in a certain state, condition, or activity (- continue, go on, proceed, go along)
"Keep on working!"; "Keep smiling";
 
4. Stop (someone or something) from doing something or being in a certain state (- prevent)
"His snoring kept me from falling asleep"; "Keep the child from eating the marbles";
 
5. Conform one's action or practice to (- observe)
"she never keeps her promises"; "We kept to the original conditions of the contract"; "keep appointments";
 
6. Stick to correctly or closely (- observe, maintain)
"The pianist kept time with the metronome"; "keep count"; "I cannot keep track of all my employees";
 
7. Look after; be the keeper of; have charge of
"He keeps the shop when I am gone"
 
8. Maintain by writing regular records (- maintain)
"keep a diary"; "keep notes";
 
9. Supply with room and board
"He is keeping three women in the guest cottage"; "keep boarders"
 
10. Allow to remain in a place or position or maintain a property or feature (- retain, continue, keep on)
"The family's fortune waned and they could not keep their household staff"; "Our grant has run out and we cannot keep you on"; "We kept the work going as long as we could"; "She keeps on a lawyer";
 
11. Supply with necessities and support (- sustain, maintain)
"There's little to earn and many to keep";
 
12. Fail to spoil or rot (- stay fresh)
"These potatoes keep for a long time";
 
13. Behave as expected during holidays or rites (- observe, celebrate)
"Keep the commandments";
 
14. Maintain in safety from injury, harm, or danger (- preserve)
"May God keep you";
 
15. To rear
"She keeps a few chickens in the yard"; "he keeps bees"
 
16. Retain rights to (- keep open, hold open, save)
"keep my job for me while I give birth"; "keep open the possibility of a merger";
 
17. Normally leave or store
"Where do you keep your gardening tools?"
 
18. Have as a supply
"I always keep batteries in the freezer"; "keep food for a week in the pantry"; "She keeps a sixpack and a week's worth of supplies in the refrigerator"
 
19. Have and look after for use and service (- maintain)
"She keeps an apartment in Paris for her shopping trips"; "I keep a car in the countryside";
 
20. Hold and prevent from leaving
"The student was kept after school"
 
21. Prevent the action or expression of (- restrain, keep back, hold back)
"keep your cool";
 
22. Prevent (food) from rotting (- preserve)
"keep potatoes fresh";

- Noun: keep (Derived forms: keeps)
1. The financial means whereby one lives (- support, livelihood, living, bread and butter, sustenance)
"each child was expected to pay for their keep";
 
2. The main tower within the walls of a medieval castle or fortress (- donjon, dungeon)
 
3. A cell in a jail or prison (- hold)
""",
  );

  final String keyword = "keep";
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
    await flutterTts.speak("""keep""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He kept all her letters.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She handed the waiter a hundred dollar bill and told him to keep the change.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Always keep a backup of the file.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep your passport in a safe place.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where do you keep the sugar?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The documents are all kept under lock and key.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Please keep a seat for me.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The man in the shop said he'd keep it for me until Friday.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We huddled together to keep warm.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I could not keep silent any longer.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep left along the wall.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The doctors worked miracles to keep him alive.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Winning the contract means they can now keep the factory open.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She kept the children amused for hours.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He kept his coat on.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't keep us in suspense—what happened next?""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm very sorry to keep you waiting.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep close to me.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sit down and keep calm!""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep smiling!""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Why does everyone keep saying that?""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Things just keep getting worse.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't keep on interrupting me!""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can you keep a secret?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She kept her past secret from us all.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She kept her promise to visit them.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Mary kept her word and Henry was never informed.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She kept a diary for over twenty years.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We keep a record of all complaints that we receive.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep a note of where each item can be found.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My grandmother kept chickens in her back yard.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Residents are not allowed to keep pets.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her father kept a grocer's shop.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He scarcely earns enough to keep himself and his family.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He kept himself by giving private lessons.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You're an hour late—what kept you?""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I won't keep you long. I've just got a couple of quick questions.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How is your mother keeping?""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We're all keeping well.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Milk and cream should keep quite well in a fridge.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Finish off the banana—it won't keep.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""May the Lord bless you and keep you.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His only thought was to keep the boy from harm.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It's about time you got a job to earn your keep.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He made his way up a flight of steep stairs and into the main keep of the castle.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/hWRH7OWKMwI?t=332';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/q8jLyotMMVE?t=2449';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/IyN025OadaE?t=21';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/Kb2WClrbrAc';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/jtoq3S48Pgk?t=913';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/oPxs9gu_JZs?t=12';
    const double startSecondsfive = 0;

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
                      word: """keep""",
                      // alsoEnglishWord: "also: keep",
                      britshText: """IpaUK: /kiːp/""",
                      americanText: """IpaUS: /kiːp/""",
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
کوردی: 
"""),
// With short examples define "keep", please follow LX instructions
                    const DefinitionKurdish(text: """١. (کردار) پاراستن"""),
                    SentencesRow(
                      englishText: """He kept all her letters.""",
                      kurdishText: """تەواوی نامەکانیی پاراست.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She handed the waiter a hundred dollar bill and told him to keep the change.""",
                      kurdishText:
                          """پارەیەکی ١٠٠ دا بە گارسۆنەکە و پێی گوت باقییەکەی هەڵبگرە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Always keep a backup of the file.""",
                      kurdishText: """هەمیشە کۆپیەکی یەدەگی فایلەکە هەڵبگرە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) دانان یان هەڵگرتنی شتێک لە شوێنێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Keep your passport in a safe place.""",
                      kurdishText:
                          """پاسپۆرتەکەت لە شوێنێکی سەلامەت هەڵبگرە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Where do you keep the sugar?""",
                      kurdishText: """شەکرەکە لە کوێ دەدەنێیت؟""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The documents are all kept under lock and key.""",
                      kurdishText:
                          """بەڵگەنامەکان هەموویان لە قاسە و کلیلدا هەڵدەگیران.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) هەبوونی شتێک بۆ کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Please keep a seat for me.""",
                      kurdishText: """تکایە جێگایەکم بۆ بگرە.""",
                      englishNote: """Also: Please keep me a seat.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The man in the shop said he'd keep it for me until Friday.""",
                      kurdishText:
                          """پیاوەکە لە فرۆشگاکە گوتی بۆم دادەنێت تاوەکو هەینی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) باوەشمان کرد بە یەکدیدا بۆ مانەوە بە گەرمی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We huddled together to keep warm.""",
                      kurdishText:
                          """باوەشمان کرد بە یەکدا بۆ مانەوە بە گەرمی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I could not keep silent any longer.""",
                      kurdishText: """نەمدەتوانی چی دیکە بێدەنگ بم.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Keep left along the wall.""",
                      kurdishText: """بە درێژایی دیوارەکە بە لای چەپدا بچۆ.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The doctors worked miracles to keep him alive.""",
                      kurdishText:
                          """پزیشکەکان معجیزەیان ئەنجامدا بۆ هێشتنەوەی بە زیندوویی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Winning the contract means they can now keep the factory open.""",
                      kurdishText:
                          """بردنەوەی گرێبەستەکە واتای ئەوەیە ئێستا دەتوانن کارگەکە بە کراوەیی بهێڵنەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She kept the children amused for hours.""",
                      kurdishText:
                          """بۆ چەندین کاتژمێر منداڵەکانی بە دڵخۆشی هێشتەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He kept his coat on.""",
                      kurdishText: """قەمسەڵەکەیی لەبەریدا هێشتەوە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Don't keep us in suspense—what happened next?""",
                      kurdishText:
                          """لە چاوەڕوانیدا مەمانهێڵەوە ـ دواتر چی ڕوویدا؟""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm very sorry to keep you waiting.""",
                      kurdishText: """زۆر بەداخەوەم کە وامکرد چاوەڕێ بکەیت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Keep close to me.""",
                      kurdishText: """لە نزیکم بمێنەرەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sit down and keep calm!""",
                      kurdishText: """دابنیشە و ئارام بمێنەرەوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) بەردەوام بوون لە کردنی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Keep smiling!""",
                      kurdishText: """بزە بکە!""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Why does everyone keep saying that?""",
                      kurdishText: """بۆچی هەموان بەردەوام ئەوە دەڵێن؟""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Things just keep getting worse.""",
                      kurdishText: """شتەکان بەردەوام دەبن لە خراپبوون.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Don't keep on interrupting me!""",
                      kurdishText: """بەردەوام مەمپچڕێنە!""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) زانینی شتێک و ئەوەی بە کەس نەڵێیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can you keep a secret?""",
                      kurdishText: """دەتوانیت نهێنی بپارێزیت؟""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She kept her past secret from us all.""",
                      kurdishText: """ڕابردووی بە نهێنی هێشتەوە لە هەموومان.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) کردنی ئەوەی کە بەڵێنت داوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She kept her promise to visit them.""",
                      kurdishText: """بەڵێنەکەی پاراست بەوەی سەردانیان بکات.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Mary kept her word and Henry was never informed.""",
                      kurdishText:
                          """ماری بەڵێنەکەی پاراست و هێنری هەرگیز پێی نەگوترا.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) نووسینی شتێک وەک تۆمار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She kept a diary for over twenty years.""",
                      kurdishText: """یادنامەیەکی بۆ بیست ساڵ نووسی.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We keep a record of all complaints that we receive.""",
                      kurdishText:
                          """هەموو ئەو ناڕەزاییانە دەنووسین کە پێمان دەگەن.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Keep a note of where each item can be found.""",
                      kurdishText: """ئەوە بنووسە کە هەر شتێک لە کوێیە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) هەبوونی ئاژەڵ و بەخێوکردنی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My grandmother kept chickens in her back yard.""",
                      kurdishText: """داپیرەم مریشکی هەبوو لە حەوشەی پشتەوە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Residents are not allowed to keep pets.""",
                      kurdishText:
                          """هاوڵاتییەکان ڕێگایان پێنادرێت ئاژەڵی ماڵییان هەبێت.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) هەبوونی فرۆشگا یان چێشتخانەیەک و بەڕێوەبردنی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her father kept a grocer's shop.""",
                      kurdishText: """باوکی فرۆشگایەکی سەوزەفرۆشی هەبوو.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) دابینکردنی ئەوەی کە پێویستە بۆ کەسێک تاوەکو بژی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He scarcely earns enough to keep himself and his family.""",
                      kurdishText:
                          """بە ئەستەم بەشی پێویست قازانج دەکات بۆ ژیاندنی خۆی و خێزانەکەی.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He kept himself by giving private lessons.""",
                      kurdishText: """خۆی دەژیاند بە گوتنەوەی وانەی تایبەت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) دواخستنی کەسێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: hold up"),
                    SentencesRow(
                      englishText: """You're an hour late—what kept you?""",
                      kurdishText:
                          """یەک کاتژمێر دواکەوتوویت ـ چی دوایخستیت؟""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I won't keep you long. I've just got a couple of quick questions.""",
                      kurdishText:
                          """دواتناخەم بۆ زۆر. ژمارەیەک پرسیاری خێرام هەن.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) بۆ باسکردن یان پرسین لە تەندرووستی کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How is your mother keeping?""",
                      kurdishText: """تەندرووستی دایکت چۆنە؟""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We're all keeping well.""",
                      kurdishText: """هەموومان تەندرووستیمان باشە.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (کردار) مانەوە لە دۆخێکی باش"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Milk and cream should keep quite well in a fridge.""",
                      kurdishText:
                          """شیر و کرێم دەکرێت زۆر باش لە بەفرگر بمێننەوە.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Finish off the banana—it won't keep.""",
                      kurdishText: """مۆزەکە تەواو بکە ـ باش نامێنێتەوە.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (کردار) پاراستنی کەسێک لە شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """May the Lord bless you and keep you (= used in prayers in the Christian Church).""",
                      kurdishText: """خودا ڕەحمت پێبکات و بتپارێزێت.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His only thought was to keep the boy from harm.""",
                      kurdishText:
                          """تەنها بیرکردنەوەی ئەوە بوو کوڕەکە لە مەترسی بپارێزێت.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (ناو) خواردن، جلوبەرگ، و هەموو ئەو شتانەی کە کەسێک پێویستییەتی بۆ ژیان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's about time you got a job to earn your keep.""",
                      kurdishText:
                          """لەسەر کات وەستاوە کە کارێک بدۆزیتەوە کە بژێوی خۆت پەیدا بکەیت.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """١٧. (ناو) تاوەرێکی گەورەی بەهێز کە وەک بەشێکی قەڵایەکی کۆن درووستکراوە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """He made his way up a flight of steep stairs and into the main keep of the castle.""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""",
                    //   onPressedBritish: () => speaksentence45("en-GB"),
                    //   onPressedAmerican: () => speaksentence45("en-US"),
                    // ),
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
// end keep