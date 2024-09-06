import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfree extends StatefulWidget {
  const EnglishEntryfree({super.key});

  @override
  State<EnglishEntryfree> createState() => _EnglishEntryfreeState();
}

class _EnglishEntryfreeState extends State<EnglishEntryfree> {
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
- Adjective: free (derived forms: freest, freer)
1. Costing nothing (= complimentary, costless, gratis, gratuitous, courtesy)
"free admission";
 
2. Not limited or hampered; not under compulsion or restraint
"free enterprise"; "a free port"; "a free country"; "I have an hour free"; "free will"; "free of racism"; "feel free to stay as long as you wish"; "a free choice"
 
3. Not occupied or in use
"a free locker"; "a free lane"
 
4. Not fixed in position (= detached)
"he pulled his arm free and ran";
 
5. Not taken up by scheduled activities (= spare)
"a free hour between classes";
 
6. Completely wanting or lacking (= barren, destitute, devoid, innocent, empty)
"writing free of insight";
 
7. Not literal (= loose, liberal)
"a free translation of the poem";
 
8. Not held in servitude
"after the Civil War he was a free man"
 
9. (physics) unconstrained or not chemically bound in a molecule or not fixed and capable of relatively unrestricted motion
"free expansion"; "free oxygen"; "a free electron"

- Verb: free (derived forms: frees, freed, freeing)
1. Grant freedom to; free from confinement (= liberate, release, unloose, unloosen, loose)
 
2. Relieve from (= rid, disembarrass)
"free the house of pests";
 
3. Remove or force out from a position (= dislodge)
"He finally could free the legs of the earthquake victim who was buried in the rubble";
 
4. Grant relief or an exemption from a rule or requirement to (= exempt, relieve)
"She freed me from the exam";
 
5. Make (information) available for publication (= release)
"free the list with the names of the prisoners";
 
6. Release from obligations or duties (= discharge)
 
7. Remove obstruction from (= disengage)
"free a path across the cluttered floor";
 
8. Let off the hook (= absolve)
"I free you from this responsibility";
 
9. Part with a possession or right (= release, relinquish, resign, give up)
 
10. Make (assets) available (= unblock, unfreeze, release)
"free the holdings in the dictator's bank account";
 
11. (chemistry) release (gas or energy) as a result of a chemical reaction or physical decomposition (= release, liberate)

- Noun: free (derived forms: frees)
1. People who are free (= free people)
"the home of the free and the brave";

- Adverb: free
1. Without restraint (= loose)
"cows in India are running free";
""",
  );

  final String keyword = "free";
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
    await flutterTts.speak("""free""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Are you free on Saturday?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We try to keep Sundays free.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""If Janice is free for lunch I'll take her out.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep Friday night free for my party.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is this seat free?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The hospital needs to keep some beds free for emergencies.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There were no free tables, so we had to share.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""None of the library computers were free.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Admission is free.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We offer a free web design service.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Use of the pool is free to members.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can't expect people to work for free.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Entrance is free for students.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Education should be free for everyone.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Membership is free.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Shipping is free for orders over £50.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They get free medical care.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We're giving away 100 free tickets to the final.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The game is available as a free download.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You get all this absolutely free.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I have no ambitions other than to have a happy life and be free.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You are free to leave at any time.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government wants to leave companies free to make their own decisions.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The organization wants to remain free from government control.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We want an independent state free of foreign interference.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Feel free to email me if you have any questions.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""After my divorce I felt free.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You have a completely free choice of topic for your essay.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You are free to express your opinion, of course.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You are free to come and go as you please.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A true democracy needs free speech and a free press.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He called for free and fair elections.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They gave me free access to all the files.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In a free country you should be able to go wherever you want.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He opposes the free flow of goods and people into the country.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We want to be a free and democratic nation.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He walked out of jail a free man.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The hostages were all set free.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""After twelve years in captivity, they were free.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She pleaded with them to let her free.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The researchers set the birds free.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Our livestock is free to roam.
""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She opened the cage and let the bird fly free.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Ensure there is a free flow of air around the machine.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The roads are relatively free today.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Everyone deserves to live free from fear.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It was several weeks before he was completely free of pain.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Our staff have a right to work free from violence or threats.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The text should be totally free of mistakes.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""After six months of treatment he is cancer-free.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Completely pain-free childbirth is a myth.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's managed to stay injury-free this season.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Holidays should be a relaxed, pressure-free time.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I want her time here to be happy and stress-free.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Pull gently on the free end of the rope.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She finally managed to pull herself free.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They tied him up but he managed to get free.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The dog had broken free of its chain.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Children under five travel free.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can download the app for free.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Attach the top and let the ends hang free.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her long hair hung free down her back.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The hijackers agreed to free a further ten hostages.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She led an armed mission that freed 700 slaves.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They succeeded in freeing their friends from prison.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They're launching a campaign to free the three men.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She struggled to free herself.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Three people were freed from the wreckage.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""These exercises help free the body of tension.""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The police are determined to free the town of violent crime.""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The centre aims to free young people from dependency on drugs.""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We freed time each week for a project meeting.""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government has promised to free up more resources for education.""");
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
                      word: """free""",
                      // alsoEnglishWord: "also: free",
                      britshText: """IpaUK: /friː/""",
                      americanText: """IpaUS: /friː/""",
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
کوردی: ئازاد، سەرازا، سەربەست، سەربەخۆ، سەربەستانە، ئازادانە، بەردراو، بەڕەڵا، نەبەسراو، پەت‌نەکراو، بەربەڕەڵا، شل، ڕەھا،	تەرخان، بەخشراو، جەبە(کراو)،	(لە لێکدانا) بێـ، بەتاڵە لە، خاڵی لە،	خۆڕایی، بێ‌پارە، مفت، بەلاش،	کراوە، دانەخراو، ئاواڵە،	بەدەس‌ودڵ، دڵاوا، بەدەھندە،	ڕەوا، ڕێگەدراو، کۆنتڕۆڵ‌نەکراو،	(کورسی) بەتاڵ، نەگیراو، خاڵی،	(کیمیا) لەگەڵ توخمی تر لێک‌نەدراوە،	قسەلەڕوو،	بێکار، بێ‌ئیش، دەس‌بەتاڵ، ئازاد،	بە خۆڕایی، بەلاش، بێ‌مز،	ئازادانە، سەربەستانە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کەسێک کە پلان و ڕێکەتنی تایبەتی نییە"""),
                    SentencesRow(
                      englishText: """Are you free on Saturday?""",
                      kurdishText: """ڕۆژی شەممە دەستبەتاڵیت؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We try to keep Sundays free.""",
                      kurdishText: """ھەوڵ دەدەین بێ‌ئیش بیین.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If Janice is free for lunch I'll take her out.""",
                      kurdishText:
                          """ئەگەر جانیس بێ ئیش بێت بۆ نانی نیوەڕۆ دەیبەمە ژوانێک.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Keep Friday night free for my party.""",
                      kurdishText:
                          """شەوی ھەینی بێ‌ئیش بھێڵنەوە بۆ ئاھەنگەکەم.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە بەکارنایەت"""),
                    SentencesRow(
                      englishText: """Is this seat free?""",
                      kurdishText: """ئەم جێگایە بەتاڵە؟""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hospital needs to keep some beds free for emergencies.""",
                      kurdishText:
                          """نەخۆشخانەکە دەبێت ھەندێک قەرەوێڵە بە بەتاڵی بھێڵێتەوە بۆ دۆخی لەناکاو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There were no free tables, so we had to share.""",
                      kurdishText:
                          """ھیچ مێزێکی بەتاڵ نەبوو بۆیە پێویست بوو یەکێک ھاوبەش بکەین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """None of the library computers were free.""",
                      kurdishText:
                          """ھیچ یەک لە کۆمپیوتەرەکانی کتێبخانەکە بەتاڵ نەبوون (= ھەمووی بەکاردەھات).""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە پارەی تێناچێت"""),
                    SentencesRow(
                      englishText: """Admission is free.""",
                      kurdishText: """چوونەژوورەوە بێبەرامبەرە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We offer a free web design service.""",
                              kurdishText:
                                  """خزمەتگوزاری بێ‌بەرامبەری دیزانی سایت پێشکەش دەکەین.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Use of the pool is free to members.""",
                              kurdishText:
                                  """بەکارھێنانی مەلەوانگەکە بێ‌بەرامبەرە بۆ ئەندامان.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You can't expect people to work for free (= without payment).""",
                              kurdishText:
                                  """پێشبینی ئەوە مەکە خەڵکی بێ‌بەرامبەر کار بکەن.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Entrance is free for students.""",
                              kurdishText:
                                  """چوونەژووڕەوە بێ‌بەرامبەرە بۆ ئەندامان.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Education should be free for everyone.""",
                              kurdishText:
                                  """فێرکردن دەبێت بێ‌بەرامبەر بێت بۆ ھەموان.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Membership is free.""",
                              kurdishText: """بوون بە ئەندام بەلاشە.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Shipping is free for orders over £50.""",
                              kurdishText:
                                  """گەیاندن بێ‌بەرامبەرە بۆ ئۆردەری سەروو ٥٠ پاوەندی.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """They get free medical care.""",
                              kurdishText:
                                  """چاودێریی تەندرووستی بێ‌بەرامبەر وەردەگرن.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We're giving away 100 free tickets to the final.""",
                              kurdishText:
                                  """١٠٠ بلیتی بێ‌بەرامبەر دەبەخشین بۆ یاریی کۆتایی.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The game is available as a free download.""",
                              kurdishText:
                                  """یارییەکە بۆ دابەزاندنی بێ‌بەرامبەر بەردەستە.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You get all this absolutely free.""",
                              kurdishText:
                                  """ھەموو ئەمە بە تەواوی بە بێ‌بەرامبەر وەردەگریت.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) ئازاد؛ کە ئەوە بکەیت کە خۆت دەتەوێت"""),
                    SentencesRow(
                      englishText:
                          """I have no ambitions other than to have a happy life and be free.""",
                      kurdishText:
                          """ھیچ خواستێکم نییە جگە لەوەی کە ژیانێکی دڵخۆشانەم ھەبێت و ئازاد بم.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You are free to leave at any time.""",
                      kurdishText: """ئازادیت لەوەی کەی دەڕۆیت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The government wants to leave companies free to make their own decisions.""",
                              kurdishText:
                                  """حکومەت دەیەوێت کۆمپانیاکان ئازاد بکات لەوەی بڕیاری خۆیان بدەن.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The organization wants to remain free from government control.""",
                              kurdishText:
                                  """دامەزراوەکە دەیەوێت بە ئازادی لە کۆنترۆڵی حکومەت بمێنێتەوە.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We want an independent state free of foreign interference.""",
                              kurdishText:
                                  """وڵاتێکی سەربەخۆمان دەوێت ھیچ دەستێوەردانی دەرەکی نەبێت.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Feel free to email me if you have any questions.""",
                              kurdishText:
                                  """ھەر پرسیارێکت بوو ئازادیت لەوەی ئیمەیڵم بۆ بنێریت.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """After my divorce I felt free.""",
                              kurdishText:
                                  """دوای جیابوونەوەکەم ھەستم بە ئازادی کرد.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You have a completely free choice of topic for your essay.""",
                              kurdishText:
                                  """تەواو ھەڵبژاردنی ئازادت ھەیە بۆ داڕشتنەکەت.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You are free to express your opinion, of course.""",
                              kurdishText:
                                  """بە دڵنیاییەوە ئازادیت لەوەی بۆچوونت دەرببڕیت.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You are free to come and go as you please.""",
                              kurdishText:
                                  """ئازادیت لەوەی بێیت و بچیت بەو شێوەیەک پێت خۆشە.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە لەلایەن کەسەوە کۆنترۆڵ یان سنووردار نەکراوە"""),
                    SentencesRow(
                      englishText:
                          """A true democracy needs free speech and a free press.""",
                      kurdishText:
                          """دیموکراسیی تەواو دەبێت ئازادیی ڕادەربڕین و میدیای ئازادی ھەبێت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He called for free and fair elections.""",
                      kurdishText:
                          """داوای ھەڵبژاردنی ئازاد و دادپەروەرانەی کرد.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They gave me free access to all the files.""",
                      kurdishText:
                          """دەستگەشتنی تەواویان پێدام بە ھەموو فایلەکان.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In a free country you should be able to go wherever you want.""",
                      kurdishText:
                          """لە وڵاتێکی ئازاددا دەبێت بتوانیت بچیتە ھەر کوێیەک کە دەتەوێت.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He opposes the free flow of goods and people into the country.""",
                      kurdishText:
                          """دژ بە لێشاوی ئازادی خەڵک و کاڵایە بۆ ناو وڵاتەکە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We want to be a free and democratic nation.""",
                      kurdishText:
                          """دەمانەوێت وڵاتێکی ئازادی دیموکراسی بیین.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کەسێک کە زیندانی یان کۆیلە نییە"""),
                    SentencesRow(
                      englishText: """He walked out of jail a free man.""",
                      kurdishText: """وەک کەسێکی ئازاد لە زیندان دەرچوو.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The hostages were all set free.""",
                      kurdishText: """بارمتەکان ھەموویان ئازاد کران.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """After twelve years in captivity, they were free.""",
                      kurdishText: """لە دوای ١٢ ساڵ لە دیلی ئازاد بوون.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She pleaded with them to let her free.""",
                      kurdishText: """لێیان پاڕایەوە ئازادی بکەن.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) کە نەبەستراوەتەوە یان لە قەفەز نییە"""),
                    SentencesRow(
                      englishText: """The researchers set the birds free.""",
                      kurdishText: """توێژەران باڵندەکانیان ئازاد کرد.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Our livestock is free to roam.
""",
                      kurdishText: """مەڕووماڵاتەکەمان ئازادن بۆ لەوەڕان.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She opened the cage and let the bird fly free.""",
                      kurdishText:
                          """قەفەزەکەی کردەوە و ھێشتی باڵندەکە بفڕێت بۆ ئازادی.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ھاوەڵناو) کە ڕێگای لێ ناگیردرێت"""),
                    SentencesRow(
                      englishText:
                          """Ensure there is a free flow of air around the machine.""",
                      kurdishText:
                          """دڵنیا بەرەوە جووڵەی ئازادی ھەوا لە ئامێرەکە ھەیە.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The roads are relatively free today.""",
                      kurdishText: """ڕێگاکان ئەمڕۆ کەمێک بەتاڵن.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ھاوەڵناو) کە کاریگەر نییە بە شتێکی خراپ"""),
                    SentencesRow(
                      englishText:
                          """Everyone deserves to live free from fear.""",
                      kurdishText: """ھەموو کەس دەبێت ئازاد لە ترس بژی.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was several weeks before he was completely free of pain.""",
                      kurdishText:
                          """چەند ھەفتەیەکی پێچوو پێش ئەوەی بە تەواوی بێ ئازار بێت.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our staff have a right to work free from violence or threats.""",
                      kurdishText:
                          """ستافەکەمان مافیان ھەیە کە بەبێ توندووتیژی و ھەڕەشە کار بکەن.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The text should be totally free of mistakes.""",
                      kurdishText: """نووسراوەکە دەبێت تەواو بەبێ ھەڵە بێت.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵناو) بەبێ ئەو شتەی باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """After six months of treatment he is cancer-free.""",
                      kurdishText:
                          """دوای شەش مانگ لە چارەسەر لە کۆتاییدا بەبێ شێرپەنجە بوو.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Completely pain-free childbirth is a myth.""",
                      kurdishText: """منداڵبوونی تەواو بێ ئازار ئەفسانەیەکە.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's managed to stay injury-free this season.""",
                      kurdishText:
                          """ئەم وەرزە توانیویەتی بەبێ پێکان بمێنێتەوە.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Holidays should be a relaxed, pressure-free time.""",
                      kurdishText:
                          """ڕۆژانی پشوو دەبێت کاتی ئاسوودەی و بێ فشاری بێت.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I want her time here to be happy and stress-free.""",
                      kurdishText: """دەمەوێت لێرە دڵخۆش و بێ سترێس بێت.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) کە نەبەستراوە بە شتێکەوە"""),
                    SentencesRow(
                      englishText:
                          """Pull gently on the free end of the rope.""",
                      kurdishText: """بە ھێواشی لا کاروەکەی حەبلەکە ڕابکێشە.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She finally managed to pull herself free.""",
                      kurdishText: """لە کۆتاییدا توانی خۆی ئازاد بکات.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They tied him up but he managed to get free.""",
                      kurdishText: """بەستیانەوە بەڵام توانی خۆی بکاتەوە.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The dog had broken free of its chain.""",
                      kurdishText: """سەگەکە خۆی لە زنجیرەکەی ڕزگار کردبوو.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ھاوەڵکار) بێ‌بەرامبەر"""),
                    SentencesRow(
                      englishText: """Children under five travel free.""",
                      kurdishText:
                          """منداڵانی خوار پێنج ساڵ بێ‌بەرامبەر گەشت دەکەن.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You can download the app for free.""",
                      kurdishText: """دەتوانیت ئەپەکە بێ‌بەرامبەر دابەزێنیت.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ھاوەڵکار) کە نەبەستراوەتەوە"""),
                    SentencesRow(
                      englishText:
                          """Attach the top and let the ends hang free.""",
                      kurdishText:
                          """سەرەوەی ببەستەوە بھێڵە کۆتاییەکان بە ئازادی شۆڕببنەوە.""",
                      onPressedBritish: () => speaksentence61("en-GB"),
                      onPressedAmerican: () => speaksentence61("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her long hair hung free down her back.""",
                      kurdishText:
                          """قژە درێژەکەی بە ئازادی بە پشتیدا شۆڕبووبوویەوە.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٤. (کردار) ئازادکردن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: release"),
                    SentencesRow(
                      englishText:
                          """The hijackers agreed to free a further ten hostages.""",
                      kurdishText:
                          """ڕفێنەران ڕازی بوون بارمتەی زیاتر ئازاد بکەن.""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She led an armed mission that freed 700 slaves.""",
                      kurdishText:
                          """سەرپەرشتیی ئەرکێکی سەربازی کرد کە ٧٠٠ کۆیلەی ئازاد کرد.""",
                      onPressedBritish: () => speaksentence64("en-GB"),
                      onPressedAmerican: () => speaksentence64("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They succeeded in freeing their friends from prison.""",
                      kurdishText:
                          """سەرکەوتوو بوون لە ئازادکردنی ھاوڕێکانیان لە زیندان.""",
                      onPressedBritish: () => speaksentence65("en-GB"),
                      onPressedAmerican: () => speaksentence65("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They're launching a campaign to free the three men.""",
                      kurdishText:
                          """کەمپینێک دەست پێدەکەن بۆ ئازادکردنی سێ کەسەکە.""",
                      onPressedBritish: () => speaksentence66("en-GB"),
                      onPressedAmerican: () => speaksentence66("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) ڕزگارکردنی کەسێک کە گیری کردووە لە شتێک یان بەستراوەتەوە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: release"),
                    SentencesRow(
                      englishText: """She struggled to free herself.""",
                      kurdishText: """تەقەڵای بوو کە خۆی ئازاد بکات.""",
                      onPressedBritish: () => speaksentence67("en-GB"),
                      onPressedAmerican: () => speaksentence67("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Three people were freed from the wreckage.""",
                      kurdishText: """سێ کەس لە پاشماوەکە ڕزگار کران  .""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (کردار) نەھێشتنی شتێکی ناخۆشی کەسێک/شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rid"),
                    SentencesRow(
                      englishText:
                          """These exercises help free the body of tension.""",
                      kurdishText:
                          """ئەم ڕاھێنانانە دەکرێت جەستە لە فشار ڕزگار بکەن.""",
                      onPressedBritish: () => speaksentence69("en-GB"),
                      onPressedAmerican: () => speaksentence69("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The police are determined to free the town of violent crime.""",
                      kurdishText:
                          """پۆلیس سوورن لەسەر ڕزگارکردنی شارەکە لە تاوانی تووندووتیژی.""",
                      onPressedBritish: () => speaksentence70("en-GB"),
                      onPressedAmerican: () => speaksentence70("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The centre aims to free young people from dependency on drugs.""",
                      kurdishText:
                          """سەنتەرەکە ئامانجیەتی گەنجان ڕزگار بکات لەوەی پشت بە مادەی ھۆشبەر ببەستن.""",
                      onPressedBritish: () => speaksentence71("en-GB"),
                      onPressedAmerican: () => speaksentence71("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (کردار) ئەوەی شتێک بەردەست بخەیت بۆ مەبەستێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """We freed time each week for a project meeting.""",
                      kurdishText:
                          """ھەر ھەفتەیەک کاتمان بۆ پڕۆژەکە دەھێشتەوە.""",
                      onPressedBritish: () => speaksentence72("en-GB"),
                      onPressedAmerican: () => speaksentence72("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government has promised to free up more resources for education.""",
                      kurdishText:
                          """حکومەت بەڵێنی داوە سەرچاوەی زیاتر بۆ خوێندن تەرخان بکات.""",
                      onPressedBritish: () => speaksentence73("en-GB"),
                      onPressedAmerican: () => speaksentence73("en-US"),
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

const String _videoIdend = 'fg8Cpl5PIRE';
const double _startSecondsend = 0;
const String _videoIdone = 'nE8nQZPfYpY';
const double _startSecondsone = 345;
const String _videoIdtwo = 'hFZFjoX2cGg';
const double _startSecondstwo = 1107;
const String _videoIdthree = '3C0BdIn6Hdo';
const double _startSecondsthree = 465;
const String _videoIdfour = 'tnzz-eFmKaw';
const double _startSecondsfour = 237;
const String _videoIdfive = 'JqDf1X2eIbE';
const double _startSecondsfive = 62;

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