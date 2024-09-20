import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhead extends StatefulWidget {
  const EnglishEntryhead({super.key});

  @override
  State<EnglishEntryhead> createState() => _EnglishEntryheadState();
}

class _EnglishEntryheadState extends State<EnglishEntryhead> {
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
- Noun: head (Derived forms: heads)
1. The upper part of the human body or the front part of the body in animals; contains the face and brains (- caput [technical], bean [informal], bonce [Brit, informal], noodle [informal], noggin [informal], dome [informal], nob [informal], napper [Brit, informal], skull [informal], nut [informal])
"he stuck his head out the window";
 
2. That which is responsible for one's thoughts, feelings, and conscious brain functions; the seat of the faculty of reason (- mind, brain, loaf [Brit, informal])
"I couldn't get his words out of my head";
 
3. A person who is in charge (- chief, top dog [informal])
"the head of the whole operation";
 
4. A single domestic animal
"200 head of cattle"
 
5. (military) the front of a military formation or procession
"the head of the column advanced boldly"; "they were at the head of the attack"
 
6. The pressure exerted by a fluid
"a head of steam"
 
7. The top of something
"the head of the stairs"; "the head of the page"; "the head of the list"
 
8. The source of water from which a stream arises (- fountainhead, headspring)
"they tracked him back toward the head of the stream";
 
9. (grammar) the word in a grammatical constituent that plays the same grammatical role as the whole constituent (- head word)
 
10. The tip of an abscess (where the pus accumulates)
 
11. The length or height based on the size of a human or animal head
"he is two heads taller than his little sister"; "his horse won by a head"
 
12. A dense cluster of flowers or foliage (- capitulum)
"a head of lettuce";
 
13. The educator who has executive authority for a school (- principal, school principal, head teacher)
"she sent unruly pupils to see the head";
 
14. An individual person
"tickets are £5 per head"
 
15. A user of (usually soft) drugs
"the office was full of secret heads"
 
16. A natural elevation (especially a rocky one that juts out into the sea) (- promontory, headland, foreland)
 
17. A rounded compact mass
"the head of a comet"
 
18. The foam or froth that accumulates at the top when you pour an effervescent liquid into a container
"the beer had a large head of foam"
 
19. The part in the front or nearest the viewer (- forefront)
"he was at the head of the column";
 
20. A difficult juncture (- pass, straits)
"matters came to a head yesterday";
 
21. Forward movement (- headway)
"the ship made little head against the gale";
 
22. A V-shaped mark at one end of an arrow pointer (- point)
"the head of the arrow was due north";
 
23. The subject matter at issue (- question)
"under the head of minor Roman poets";
 
24. A line of text serving to indicate what the passage below it is about (- heading, header)
 
25. The rounded end of a bone that fits into a rounded cavity in another bone to form a joint
"the head of the humerus"
 
26. That part of a skeletal muscle that is away from the bone that it moves
 
27. (computing) a tiny electromagnetic coil and metal pole used to write and read magnetic patterns on a disk (- read/write head)
 
28. (usually plural) the obverse side of a coin that usually bears the representation of a person's head
"call heads or tails!"
 
29. The striking part of a tool
"the head of the hammer"
 
30. (nautical) a toilet on board a boat or ship
 
31. A projection out from one end
"the head of the nail"; "a pinhead is the head of a pin"
 
32. A membrane that is stretched taut over a drum (- drumhead)
 
33. [vulgar] Oral stimulation of the genitals (- oral sex)
"they say he gives good head";
 
34. A headlike protuberance on an organ or structure (- caput [technical])
"the caput humeri is the head of the humerus which fits into a cavity in the scapula";

- Verb: head (Derived forms: heads, heading, headed)
1. To go or travel towards
"where is she heading"; "We were headed for the mountains"
 
2. Be in charge of (- lead)
"Who is heading this project?";
 
3. Travel in front of; go in advance of others (- lead)
"The procession was headed by John";
 
4. Be the first or leading member of (a group) and excel (- head up)
"This student heads the class";
 
5. Determine the direction of travelling (- steer, maneuver [US], manoeuver [non-standard], manoeuvre [Brit, Cdn], direct, point, guide, channelize, channelise [Brit])

6. Take its rise
"These rivers head from a mountain range in the Himalayas"
 
7. Be in the front of or on top of
"The list was headed by the name of the president"
 
8. Form a head, come or grow to a head
"The wheat headed early this year"
 
9. Remove the head of
"head the fish"
""",
  );

  final String keyword = "head";
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
    await flutterTts.speak("""head""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her head was filled with the clamour of voices calling her name.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had a closely shaved head and a small, neat beard.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Try not to clutter your head with trivia.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She cocked her head to one side and looked at me.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""As he fell, his head collided with the table.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He stood up, bashing his head on the ceiling.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My head banged on a rock and everything went black.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had injuries to her head and body.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She bowed her head in shame.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She gave a slight bow of her head in greeting.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """When his head broke the surface he took in deep gulps of air.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I bumped my head on the door frame.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A butt from his head left him momentarily disorientated.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He conked the burglar on the head with a baseball bat.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The assailant struck the victim over the head with a cosh.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He hit his head as he stood up and cursed loudly.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had fallen and cut her head open.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He shook his head in disapproval.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I sometimes wonder what goes on in that head of yours.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I wish you'd use your head.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The thought never entered my head.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I can't work it out in my head—I need a calculator.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She started hearing voices in her head.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Who's been putting such weird ideas into your head?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His head was spinning after only one drink.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a good head taller than her sister.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The favourite won by a short head.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I woke up with a really bad head this morning.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She resigned as head of department.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I've asked the department head for an appointment.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is deputy head of the British Museum.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is only the nominal head of the company.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've been called in to see the Head.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I remember sitting outside the Head's office waiting to be called in.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I called heads and it came down tails.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He hit the head of the nail with the hammer.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They finished the season at the head of their league.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The head of the river is often clear and fresh.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The President sat at the head of the table.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The prince rode at the head of his regiment.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Remove the dead heads to encourage new growth.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He waited for the head to settle before drinking.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The pimple had a small white head.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where are we heading?""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where are you two headed?""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's head back home.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We headed north.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has been appointed to head the research team.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The delegation will be headed by Lord Arthur.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Italy heads the table after two games.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The chapter was headed ‘My Early Life’.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Walsh headed the ball into an empty goal.""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """head""",
                      // alsoEnglishWord: "also: head",
                      britshText: """IpaUK: /hed/""",
                      americanText: """IpaUS: /hed/""",
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
کوردی: سەر، کەلە، کەللە، سەلک، مێشک،	نافەرمی سەرێشە، ژانەسەر،	سەروو، ژوور، بان، لەسەرووی، لەژوور، پێش، لەپێش، نووک،	ئەقڵ، فام، ئاوەز، خەیاڵ‌کردنەوە، بیر، ھزر، تێگەیشتن، توانایی، بەھرە،	بابەت، بارە، باس، مژار، ڕێبەران، سەران،	سەرۆک، بەڕێوەبەر، بەڕێوەبەری خوێندنگا یان دەزگایێ، گەورە، سەرپەرشت، ڕێبەر، سالار، سەردار، سەروەر، سەرگەورە،	کەس، یەکێ، دانە،	(ئاژەڵ) سەر، ژمارە،	پێشی کەشتی، سەر یان پێشەوەی کەشتی، سەرک، لووتکە،	سەردێڕ، بەش، پشک، پارچە،	(ڕووبار) بەشی سەروو، کەف،	(ڤیدیۆ و ھتد) ھێد،	(زمانەوانی) ناوک
"""),
                    const DefinitionKurdish(text: """١. (ناو) سەر"""),
                    SentencesRow(
                      englishText:
                          """He had a closely shaved head and a small, neat beard.""",
                      kurdishText:
                          "قژێکی زۆر بڕدراوی ھەبوو لەگەڵ ڕیشێکی کورت و ڕێک‌وپێک.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She cocked her head to one side and looked at me.""",
                              kurdishText:
                                  "سەری بە لایەکدا بەرزکردەوە و سەیرمی کرد.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """As he fell, his head collided with the table.""",
                              kurdishText: "کە کەوت، سەری کێشای بە مێزەکەدا.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He stood up, bashing his head on the ceiling.""",
                              kurdishText:
                                  "ھەستایە سەرپێ و سەری کێشای بە سەقفەکەدا.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My head banged on a rock and everything went black.""",
                              kurdishText:
                                  "سەرم دای بە بەردێکدا و ھەموو شتێک تاریک بوو.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She had injuries to her head and body.""",
                              kurdishText: "برینی ھەبوو لەسەر سەری و جەستەی.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She bowed her head in shame.""",
                              kurdishText: "لە شەرمدا سەری دەلەقاند.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She gave a slight bow of her head in greeting.""",
                              kurdishText:
                                  "سەری بە کەمی چەماندەوە بۆ سڵاوکردن.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """When his head broke the surface he took in deep gulps of air.""",
                              kurdishText:
                                  "کە سەری دەرکرد لە ئاوەکە ھەناسەی قووڵی ھەڵمژی.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I bumped my head on the door frame.""",
                              kurdishText: "سەرمم کێشا بە چوارچێوەی دەرگاکەدا.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A butt from his head left him momentarily disorientated.""",
                              kurdishText: "کەللەیەک لەسەری بۆ ماوەی گێژی کرد.",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He conked the burglar on the head with a baseball bat.""",
                              kurdishText:
                                  "کێشای بە سەری دزەکەدا بە دارێکی یاری بەیسبۆڵ.",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The assailant struck the victim over the head with a cosh.""",
                              kurdishText:
                                  "ھێرشکارەکە بە تێڵایەک کێشای بە سەری قوربانییەکەدا.",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He hit his head as he stood up and cursed loudly.""",
                              kurdishText:
                                  "کە ھەستا ئێشی بە سەری گەیاند و بە دەنگی بەرز دەستی بە جنێودان کرد.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She had fallen and cut her head open.""",
                              kurdishText: """کەوتبوو و سەری قڵیشاندبوو..""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He shook his head in disapproval.""",
                              kurdishText: "سەری ڕاوەشاند وەک ناڕەزایەتی.",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ناو) بیر و مێشک"""),
                    SentencesRow(
                      englishText:
                          """Try not to clutter your head with trivia.""",
                      kurdishText:
                          "(بەکارھێنانی خوازراوی) ھەوڵ بدە مێشکت بە شتی زیادە سەرقاڵ نەکەیت.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Her head was filled with the clamour of voices calling her name.""",
                              kurdishText:
                                  "مێشکی پڕبوو لە قاڵەقاڵی خەڵکی کە بانگیان دەکرد.",
                              onPressedBritish: () => speaksentence1("en-GB"),
                              onPressedAmerican: () => speaksentence1("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I sometimes wonder what goes on in that head of yours.""",
                              kurdishText:
                                  """ھەندێک جار بیردەکەمەوە چی دەگوزەڕێت لەو سەرەی تۆدا.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I wish you'd use your head (= think carefully before doing or saying something).""",
                              kurdishText:
                                  """خۆزگە دەخوازم مێشکت بەکار بھێنابایە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The thought never entered my head.""",
                              kurdishText:
                                  """بیرکردنەوەکە ھەرگیز نەھات بە ھزرمدا.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I can't work it out in my head—I need a calculator.""",
                              kurdishText:
                                  """ناتوانم لە مێشکمدا بیدۆزمەوە ـ پێویستیم بە ژمێرەرێکە.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She started hearing voices in her head.""",
                              kurdishText:
                                  """دەستی کرد بە بیستنی دەنگ لە مێشکیدا.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Who's been putting such weird ideas into your head?""",
                              kurdishText:
                                  """کێ بیرۆکەی وەھا نامۆی خستووەتە مێشکتەوە.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His head was spinning (= he felt dizzy or confused) after only one drink.""",
                              kurdishText:
                                  """سەری دەسووڕایەوە تەنھا لە دوای یەک خواردنەوە.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەندازەی سەری کەسێک یان ئاژەڵێک کە بۆ پێوان بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """She's a good head taller than her sister.""",
                      kurdishText: """یەک سەری تەواو درێژترە لە خوشکەکەی.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The favourite won by a short head (= a distance slightly less than the length of a horse's head).""",
                      kurdishText:
                          """پاڵێوراوەکە بە جیاوازی کەمتر لە سەری ئەسپەکە بردییەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) سەرێشە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: headache"),
                    SentencesRow(
                      englishText:
                          """I woke up with a really bad head this morning.""",
                      kurdishText:
                          """ئەم بەیانییە بە سەرێشەیەکی خراپەوە خەبەرم بوویەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) کەسێک کە بەرپرسی ژمارەیەک کەس یان دامەزراوەیەکە"""),
                    SentencesRow(
                      englishText: """She resigned as head of department.""",
                      kurdishText: """وەک سەرۆک بەش دەستی لەکار کێشایەوە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I've asked the department head for an appointment.""",
                      kurdishText:
                          """داوای چاوپێکەوتنێکم لە سەرۆک بەش کردووە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He is deputy head of the British Museum.""",
                      kurdishText: """جێگری سەرۆکی مۆزەخانەی بەریتانیایە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He is only the nominal head of the company.""",
                      kurdishText: """تەنھا سەرۆکی ڕووکەشی کۆمپانیاکەیە.""",
                      kurdishNote:
                          """واتا ئەو تەنھا بە ناو سەرۆکی کۆمپانیاکەیە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) بەڕێوبەری قوتابخانە یان کۆلێژێک"""),
                    const AlsoEnglishckb(
                        word:
                            "ھەروەھا: headmaster، headmistress، head teacher"),
                    SentencesRow(
                      englishText: """I've been called in to see the Head.""",
                      kurdishText: """داوام لێکراوە بەڕێوبەر ببینم.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I remember sitting outside the Head's office waiting to be called in.""",
                      kurdishText:
                          """لەبیرمە لە دەرەوەی ئۆفیسی بەڕێوبەر دانیشتبووم چاوەڕێ بووم  بانگ بکرێمە ژوورەوە.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) شێر لە کاتی دراو ھەڵداندا"""),
                    SentencesRow(
                      englishText: """I called heads and it came down tails.""",
                      kurdishText: """شێرم گوت بەڵام خەت دەرچوو.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) سەری شتێکی باریک کە گەورەتر یان فراوانترە لە بەشەکانی دیکەی"""),
                    SentencesRow(
                      englishText:
                          """He hit the head of the nail with the hammer.""",
                      kurdishText: """بە چەکوشەکە کێشای بە سەری بزمارەکەدا.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) بەشی سەرەوەی شتێک"""),
                    SentencesRow(
                      englishText:
                          """They finished the season at the head of their league.""",
                      kurdishText:
                          """وەرزەکەیان تەواو کرد لە سەرەوەی خولەکەدا.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) شوێنی دەستپێکردنی ڕووبارێک"""),
                    SentencesRow(
                      englishText:
                          """The head of the river is often clear and fresh.""",
                      kurdishText:
                          """سەرچاوەی ڕووبارەکە زۆربەی کات ڕوون و پاکە.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ناو) گرنگترین کورسی مێزێک"""),
                    SentencesRow(
                      englishText:
                          """The President sat at the head of the table.""",
                      kurdishText: """سەرۆک لە سەرەوەی مێزەکە دانیشت.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ناو) سەرەتای ڕیزێک لە خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """The prince rode at the head of his regiment.""",
                      kurdishText:
                          """شازادەکە لە پێشەوەی تیپەکەی سوارچاکی دەکرد.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ناو) کۆمەڵێک گەڵا یان گوڵ لە کۆتایی قەدێک"""),
                    SentencesRow(
                      englishText:
                          """Remove the dead heads to encourage new growth.""",
                      kurdishText:
                          """گوڵە وشکبووەکان لێ بکەرەوە بۆ دەستپێکردنی گەشەی تازە.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (ناو) کەفی سەر گڵاسێک بیرە"""),
                    SentencesRow(
                      englishText:
                          """He waited for the head to settle before drinking.""",
                      kurdishText:
                          """چاوەڕێ بوو کەفەکە نەمێنێت پێش ئەوەی بیخواتەوە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (ناو) ئەو بەشەی سەر پێست کە شلەیەکی زەردی تێدایە"""),
                    SentencesRow(
                      englishText: """The pimple had a small white head.""",
                      kurdishText: """زیپکەکە سەرێکی سپی بچوونی ھەبوو.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٦. (کردار) جوڵان بە ئاراستەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText: """Where are we heading?""",
                      kurdishText: """بەرەو کوێ دەچین؟""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Where are you two headed?""",
                      kurdishText: """ئەو دووانەتان بۆ کوێ دەچن؟""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Let's head back home.""",
                      kurdishText: """با بەرەو ماڵەوە بچین.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We headed north.""",
                      kurdishText: """بەرەو باکوور چووین.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٧. (کردار) سەرپەرشتی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """She has been appointed to head the research team.""",
                      kurdishText:
                          """دیاری کراوە سەرپەرشتی تیمی توێژینەوەکە بکات.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The delegation will be headed by Lord Arthur.""",
                      kurdishText:
                          """شاندەکە لەلایەن لۆرد ئارسەر سەرپەرشتی دەکرێت.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٨. (کردار) بوون لە سەرەوەی لیستێک یان پێشەوەی ڕیزێک"""),
                    SentencesRow(
                      englishText: """Italy heads the table after two games.""",
                      kurdishText:
                          """ئیتالیا لە سەرەوەی خشتەکەیە لە دوای دوو یاری.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٩. (کردار) دانانی وشەیەک یان ژمارەیەک وشە لە سەرەوەی پەڕەیەک یان بەشێکی کتێبێک وەک سەردێڕ"""),
                    SentencesRow(
                      englishText:
                          """The chapter was headed ‘My Early Life’.""",
                      kurdishText:
                          """بەشەکە سەردێڕی 'ژیانی سەرەتاییم' ــی پێدرا.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٠. (کردار) لێدان لە تۆپێک بە سەرت"""),
                    SentencesRow(
                      englishText:
                          """Walsh headed the ball into an empty goal.""",
                      kurdishText:
                          """واڵش بە کەلە تۆپەکەی خستە گۆڵە بەتاڵەکەوە.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
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

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 149;
const String _videoIdone = 'hTqtGJwsJVE';
const double _startSecondsone = 715;
const String _videoIdtwo = 'fXLrw7XozC8';
const double _startSecondstwo = 278;
const String _videoIdthree = 'wizgxRBfVTY';
const double _startSecondsthree = 38;
const String _videoIdfour = 'WHi60ToJ8FE';
const double _startSecondsfour = 112;
const String _videoIdfive = 'jQO-OrjpybQ';
const double _startSecondsfive = 22;

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