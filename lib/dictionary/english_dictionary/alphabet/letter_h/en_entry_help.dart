import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhelp extends StatefulWidget {
  const EnglishEntryhelp({super.key});

  @override
  State<EnglishEntryhelp> createState() => _EnglishEntryhelpState();
}

class _EnglishEntryhelpState extends State<EnglishEntryhelp> {
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
- Verb: help (Derived forms: helping, helps, helped)
1. Give assistance; be of service (- assist, aid)
"Everyone helped out during the earthquake"; "Can you help me carry this table?"; "She never helps around the house";
 
2. Improve the condition of (- aid)
"These pills will help the patient";
 
3. Be of use (- facilitate)
"This will help to prevent accidents";
 
4. Abstain from doing; always used with a negative (- help oneself)
"I can't help myself--I have to smoke"; "She could not help watching the sad spectacle";
 
5. Give a portion of food or drink (- serve)
"I served him three times, and after that he helped himself";
 
6. Contribute to the furtherance of
"This money will help the development of literacy in developing countries"
 
7. Take or use (- avail)
"She helped herself to some of the office supplies";
 
8. Improve; change for the better
"New slipcovers will help the old living room furniture"

- Noun: help (Derived forms: helps)
1. The activity of contributing to the fulfilment of a need or furtherance of an effort or purpose (- aid, assist, assistance)
"offered his help in unloading";
 
2. A person who contributes to the fulfilment of a need or furtherance of an effort or purpose (- assistant, helper, supporter, aid)
"they hired additional help to finish the work";
 
3. A person or thing that is a resource that helps make something easier or possible to do (- aid, assistance)
 
4. A means of serving (- avail, service)
"there's no help for it";
""",
  );

  final String keyword = "help";
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
    await flutterTts.speak("""help""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What can I do to help?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There are lots of people there who can actually help you.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is there anybody who can help me?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""‘Would you really help?’ he said with an appealing look.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The articles found in the car helped the police to identify the body.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He persuaded a small band of volunteers to help.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her two sons helped bear the coffin.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I begrudge every second I spent trying to help him.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She never lifts a finger to help. She's bone idle.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's trying to help her brother, who's become a boozer.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Spending a year working in the city helped to broaden his horizons.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You can sign up to help them test the alpha build of the game.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Call yourself a friend? So why won't you help me, then?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can you help me with this box?""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The support of our families has helped enormously.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It helped being able to talk about it.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The money raised will help towards the cost of organizing the championships.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The student received a bursary to help cover the costs of tuition and books.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He buses tables to help finance his tuition.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Television helps to relieve the boredom of the long winter evenings.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The movie helped boost her screen career.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The rear-view mirror helps to reduce blind spots on both sides of the car.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """More police officers out on the beat may help to cut crime.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She helped him to his feet.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I helped her across the road.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She helped the man out of the car.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""If you want another drink, just help yourself.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I help you to some more salad?""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He'd been helping himself to the money in the cash register.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Thank you for all your help.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The offer of help came too late.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you need any help with that?""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I know that this is a bad time to ask for help.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't be afraid to ask for help.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'd appreciate some help.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The government appealed to the British people for help.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She called out to her father for help.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She called out to her father for help.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""With help from a parent, a child can do simple cooking.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Quick, get help!""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I heard a cry for help.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He ran to get help.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I opened the window and called for help.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I decided to seek legal help.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The organization offers practical help in dealing with paperwork.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The charity provides emergency help for refugees.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The online help is very good.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The map wasn't much help.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Was the information I gave you any help?""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Just shouting at him isn't going to be a lot of help.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was more of a hindrance than a help.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your advice was a big help.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's been a big help to her father.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5400""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5500""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5600""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5700""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5800""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5900""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_6000""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6100""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6200""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6300""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6400""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6500""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6600""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6700""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6800""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6900""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_7000""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7100""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7200""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7300""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7400""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7500""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7600""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7700""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7800""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7900""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_8000""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8100""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8200""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8300""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8400""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8500""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8600""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8700""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8800""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8900""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_9000""");
  }

  Future<void> speaksentence91(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9100""");
  }

  Future<void> speaksentence92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9200""");
  }

  Future<void> speaksentence93(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9300""");
  }

  Future<void> speaksentence94(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9400""");
  }

  Future<void> speaksentence95(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9500""");
  }

  Future<void> speaksentence96(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9600""");
  }

  Future<void> speaksentence97(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9700""");
  }

  Future<void> speaksentence98(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9800""");
  }

  Future<void> speaksentence99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9900""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence__10000""");
  }

  Future<void> speaksentence101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10100""");
  }

  Future<void> speaksentence102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10200""");
  }

  Future<void> speaksentence103(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10300""");
  }

  Future<void> speaksentence104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10400""");
  }

  Future<void> speaksentence105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10500""");
  }

  Future<void> speaksentence106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10600""");
  }

  Future<void> speaksentence107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10700""");
  }

  Future<void> speaksentence108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10800""");
  }

  Future<void> speaksentence109(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10900""");
  }

  Future<void> speaksentence110(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11000""");
  }

  Future<void> speaksentence111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11100""");
  }

  Future<void> speaksentence112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11200""");
  }

  Future<void> speaksentence113(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11300""");
  }

  Future<void> speaksentence114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11400""");
  }

  Future<void> speaksentence115(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11500""");
  }

  Future<void> speaksentence116(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11600""");
  }

  Future<void> speaksentence117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11700""");
  }

  Future<void> speaksentence118(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11800""");
  }

  Future<void> speaksentence119(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11900""");
  }

  Future<void> speaksentence120(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_12000""");
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
                      word: """help""",
                      // alsoEnglishWord: "also: help",
                      britshText: """IpaUK: /help/""",
                      americanText: """IpaUS: /help/""",
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
کوردی: ارمەتی، یاریە، کۆمەک، ئاری، دەس‌یاری، یاریدە، ئالیکاری، هەداری، دەسگرتن، بەهاناوەبوون،	چارە، چارەسەری،	بەردەس، کارکەر، کڵفەت،	بەکرێ‌گیراو، مزەوەر
"""),
// With short examples define "help", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) یارمەتیدانی کەسێک"""),
                    SentencesRow(
                      englishText: """What can I do to help?""",
                      kurdishText: """چی دەتوانم بکەم بۆ یارمەتیدان؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """There are lots of people there who can actually help you.""",
                              kurdishText:
                                  "ژمارەیەکی زۆر خەڵک ھەن لەوێ کە بەڕاستی دەتوانن یارمەتیت بدەن.",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Is there anybody who can help me?""",
                              kurdishText: "کەس ھەیە بتوانێ یارمەتیم بدا؟",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """‘Would you really help?’ he said with an appealing look.""",
                              kurdishText:
                                  "بە ڕووخسارێکی داوێن‌گیرانە وتی 'بەڕاست یارمەتیم دەدەیت؟'.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The articles found in the car helped the police to identify the body.""",
                              kurdishText:
                                  "ئەو شتانەی لە ئۆتۆمبێلەکەدا دۆزرانەوە یارمەتی پۆلیسی دا لە ناسینەوەی تەرمەکە.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He persuaded a small band of volunteers to help.""",
                              kurdishText:
                                  "دەستەیەکی بچوول لە خۆبەخشانی ڕازیکرد کە یارمەتی بدەن.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her two sons helped bear the coffin.""",
                              kurdishText:
                                  "دوو کوڕەکەی تابووتەکەیان ھەڵگرتبوو.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I begrudge every second I spent trying to help him.""",
                              kurdishText:
                                  "ڕقم لە ھەر چرکەیەک دەبێتەوە کە بەسەری دەبەم بە ھەوڵدان بۆ یارمەتیدانی.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She never lifts a finger to help. She's bone idle.""",
                              kurdishText:
                                  "ھەرگیز پەنجەشی بەرزناکاتەوە بۆ یارمەتیدان. زۆر کنگ‌گرانە.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She's trying to help her brother, who's become a boozer.""",
                              kurdishText:
                                  "ھەوڵ دەدات یارمەتی براکەی بدات کە بووە بە ئارەق‌خۆرێک.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Spending a year working in the city helped to broaden his horizons.""",
                              kurdishText:
                                  "بەسەربردنی ساڵیک لە شار بە کارکردنەوە تێگەشتنی فراوان کرد.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You can sign up to help them test the alpha build of the game.""",
                              kurdishText:
                                  "دەتوانی داوای بەژداری بکەیت بۆ یارمەتیدان لە تاقیکردنەوەی وەشانی سەرەتایی یارییەکە.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Call yourself a friend? So why won't you help me, then?""",
                              kurdishText:
                                  "خۆت بە ھاوڕێ دادەنێیت؟ دەی کەوایە بۆ یارمەتیم نادەیت؟",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Can you help me with this box?""",
                              kurdishText:
                                  "دەتوانیت لە ھەڵگرتنی ئەم سنووقە یارمەتیم بدەیت؟",
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
                            """٢. (کردار) باشترکردنی دۆخێک؛ ئاسانترکردنی ڕوودانی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The support of our families has helped enormously.""",
                      kurdishText:
                          """پشتیوانی خێزانمان بە ئاستێکی زۆر یارمەتیدەربوونە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It helped being able to talk about it.""",
                      kurdishText:
                          """ئەوەی بتوانی قسەی لەسەر بکەیت یارمەتیدەر بوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The money raised will help towards (= partly pay for) the cost of organizing the championships.""",
                      kurdishText:
                          """ئەو پارەیەی کۆکراوەتەوە یارمەتیدەر دەبێت لە تێچووی ڕێکخستنی پاڵەوانێتییەکان.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The student received a bursary to help cover the costs of tuition and books.""",
                      kurdishText:
                          "خوێندکارەکە بڕە پارەیەکی وەرگرت بۆ یارمەتیدانی لە دابینکردنی خەرجی تێچوو و کتێبەکانی.",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He buses tables to help finance his tuition.""",
                      kurdishText:
                          "مێز پاکدەکاتەوە بۆ یارمەتیدانی لە خەرجی خوێندنەکەی.",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Television helps to relieve the boredom of the long winter evenings.""",
                      kurdishText:
                          "تەلەفیزیۆن دەکرێت یارمەتیدەر بێت لە سووککردنی بێزاربوون لە شەوانی درێژی زستان.",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The movie helped boost her screen career.""",
                      kurdishText:
                          "فیلمەکە کارکردنی لە سینەمادا بەرەو پێش برد.",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The rear-view mirror helps to reduce blind spots on both sides of the car.""",
                      kurdishText:
                          "ئاوێنەی پێشەوە یارمەتیدەرە بۆ کەمکردنەوەی ناوچەی کوێر لە ھەردوو لای ئۆتۆمبێلێکەوە.",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """More police officers out on the beat may help to cut crime.""",
                      kurdishText:
                          "پۆلیسی زیاتر لە نۆبەداریدا بن ئەگەری ھەیە تاوان کەمبکاتەوە.",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ڕێگادان بە کەسێک شتێک بکات بەوەی بەوەی ڕێگا بدەیت پاڵت پێوە بدات، ڕێنمایی بکەیت، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She helped him to his feet.""",
                      kurdishText: """هەڵیساندە سەر پێی.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I helped her across the road.""",
                      kurdishText: """بە پەڕینەوەی ڕێگاکەدا یارمەتییم دا.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She helped the man out of the car.""",
                      kurdishText:
                          """یارمەتیی پیاوەکەی دا لە ئۆتۆمبێەکە بێتە دەرەوە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) پێدانی خواردن و خواردنەوە بە خۆت یان کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If you want another drink, just help yourself.""",
                      kurdishText: """ئەگەر خواردنەوەت دەوێت، خۆت بیبە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can I help you to some more salad?""",
                      kurdishText: """هەندێک زەڵاتەی دیکەت پێ بدەم؟""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) بردنی شتێک بەبێ مۆڵەت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: steal"),
                    SentencesRow(
                      englishText:
                          """He'd been helping himself to the money in the cash register.""",
                      kurdishText: """پارەی بۆ خۆی دەدزی لە سندووقی پارەکە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) یارمەتیدانی کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Thank you for all your help.""",
                      kurdishText: """سوپاس بۆ یارمەتیت.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The offer of help came too late.""",
                      kurdishText: """پێشنیاری یارمەتی زۆر درەنگ گەشت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you need any help with that?""",
                      kurdishText: """پێویستیت بە هیچ یارمەتی هەیە لەوەدا؟""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I know that this is a bad time to ask for help.""",
                      kurdishText:
                          "ئەزانم کاتێکی نەگونجاوە بۆ داواکردنی یارمەتی.",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Don't be afraid to ask for help.""",
                      kurdishText: "مەترسە لە داواکردن بۆ یارمەتی.",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'd appreciate some help.""",
                      kurdishText: "پێزانینم دەبێ بۆ ھەندێک یارمەتی.",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government appealed to the British people for help.""",
                      kurdishText:
                          "حکومەت تکای لە خەڵکی بەریتانیا کرد بۆ یارمەتی.",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She called out to her father for help.""",
                      kurdishText: "ھاواری بۆباوکی کرد بۆ یارمەتی.",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She called out to her father for help.""",
                      kurdishText: """دەتوانم هیچ یارمەتیت بدەم؟""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """With help from a parent, a child can do simple cooking.""",
                      kurdishText:
                          """بە یارمەتیی دایباب، منداڵ دەتوانێت هەندێک خواردنی سادە لێبنێت.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) یارمەتیدانی کەسێک کە لە مەترسییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Quick, get help!""",
                      kurdishText: """زوو، یارمەتی وەربگرە!""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I heard a cry for help.""",
                      kurdishText: """گوێم لە هاوار بۆ یارمەتی بوو.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He ran to get help.""",
                      kurdishText: """ڕایکرد بۆ هێنانی یارمەتی.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I opened the window and called for help.""",
                      kurdishText:
                          """پەنجەرەکەم کردەوە و داوای یارمەتیم کرد.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ڕاوێژ، پارە، هتد کە دەدرێت بە کەسێک بۆ چارەسەرکردنی کێشەکانی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I decided to seek legal help.""",
                      kurdishText: """بڕیارمدا ڕاوێژی یاسایی وەربگرم.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The organization offers practical help in dealing with paperwork.""",
                      kurdishText:
                          """دامەزراوەکە یارمەتی کرداری پێشکەش دەکات لە مامەڵە لەگەڵ کاری کاغەزکاری.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The charity provides emergency help for refugees.""",
                      kurdishText:
                          """دامەزراوە خێرخوازییەکە یارمەتی سەرەتایی دەدات بە پەنابەران.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ئەرکێکی کۆمپیوتەر، موبایل، هتد کە زانیاری دەدات لەسەر چۆنیەتیی بەکارهێنانی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The online help is very good.""",
                      kurdishText: """زانیارییە ئۆنلاینەکە زۆرباشە.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) ئەوەی شتێک بەسوود بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The map wasn't much help.""",
                      kurdishText: """نەخشەکە سوودی زۆر نەبوو.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Was the information I gave you any help?""",
                      kurdishText:
                          """ئەو زانیارییەی پێمدایت هیچ سوودی هەبوو؟""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Just shouting at him isn't going to be a lot of help.""",
                      kurdishText: """تەنها هاوارکردن لێی هیچ سوودی نابێت.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) کەسێک یان شتێک کە یارمەتیی کەسێک دەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was more of a hindrance than a help.""",
                      kurdishText: """زیاتر ڕێگر بوو وەک لە سوود.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Your advice was a big help.""",
                      kurdishText: """ئامۆژگاریت سوودی زۆری هەبوو.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's been a big help to her father.""",
                      kurdishText: """یارمەتییەکی گەورە بووە بۆ باوکی.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_6000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence61("en-GB"),
                      onPressedAmerican: () => speaksentence61("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence64("en-GB"),
                      onPressedAmerican: () => speaksentence64("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence65("en-GB"),
                      onPressedAmerican: () => speaksentence65("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence66("en-GB"),
                      onPressedAmerican: () => speaksentence66("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence67("en-GB"),
                      onPressedAmerican: () => speaksentence67("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence69("en-GB"),
                      onPressedAmerican: () => speaksentence69("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_7000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence70("en-GB"),
                      onPressedAmerican: () => speaksentence70("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence71("en-GB"),
                      onPressedAmerican: () => speaksentence71("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence72("en-GB"),
                      onPressedAmerican: () => speaksentence72("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence73("en-GB"),
                      onPressedAmerican: () => speaksentence73("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence74("en-GB"),
                      onPressedAmerican: () => speaksentence74("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence75("en-GB"),
                      onPressedAmerican: () => speaksentence75("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence76("en-GB"),
                      onPressedAmerican: () => speaksentence76("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence77("en-GB"),
                      onPressedAmerican: () => speaksentence77("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence78("en-GB"),
                      onPressedAmerican: () => speaksentence78("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence79("en-GB"),
                      onPressedAmerican: () => speaksentence79("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_8000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence80("en-GB"),
                      onPressedAmerican: () => speaksentence80("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence81("en-GB"),
                      onPressedAmerican: () => speaksentence81("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence82("en-GB"),
                      onPressedAmerican: () => speaksentence82("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence83("en-GB"),
                      onPressedAmerican: () => speaksentence83("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence84("en-GB"),
                      onPressedAmerican: () => speaksentence84("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence85("en-GB"),
                      onPressedAmerican: () => speaksentence85("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence86("en-GB"),
                      onPressedAmerican: () => speaksentence86("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence87("en-GB"),
                      onPressedAmerican: () => speaksentence87("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence88("en-GB"),
                      onPressedAmerican: () => speaksentence88("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence89("en-GB"),
                      onPressedAmerican: () => speaksentence89("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_9000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence90("en-GB"),
                      onPressedAmerican: () => speaksentence90("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence91("en-GB"),
                      onPressedAmerican: () => speaksentence91("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence92("en-GB"),
                      onPressedAmerican: () => speaksentence92("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence93("en-GB"),
                      onPressedAmerican: () => speaksentence93("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence94("en-GB"),
                      onPressedAmerican: () => speaksentence94("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence95("en-GB"),
                      onPressedAmerican: () => speaksentence95("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence96("en-GB"),
                      onPressedAmerican: () => speaksentence96("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence97("en-GB"),
                      onPressedAmerican: () => speaksentence97("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence98("en-GB"),
                      onPressedAmerican: () => speaksentence98("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence99("en-GB"),
                      onPressedAmerican: () => speaksentence99("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence__10000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence100("en-GB"),
                      onPressedAmerican: () => speaksentence100("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence101("en-GB"),
                      onPressedAmerican: () => speaksentence101("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence102("en-GB"),
                      onPressedAmerican: () => speaksentence102("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence103("en-GB"),
                      onPressedAmerican: () => speaksentence103("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence104("en-GB"),
                      onPressedAmerican: () => speaksentence104("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence105("en-GB"),
                      onPressedAmerican: () => speaksentence105("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence106("en-GB"),
                      onPressedAmerican: () => speaksentence106("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence107("en-GB"),
                      onPressedAmerican: () => speaksentence107("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence108("en-GB"),
                      onPressedAmerican: () => speaksentence108("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence109("en-GB"),
                      onPressedAmerican: () => speaksentence109("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence110("en-GB"),
                      onPressedAmerican: () => speaksentence110("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence111("en-GB"),
                      onPressedAmerican: () => speaksentence111("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence112("en-GB"),
                      onPressedAmerican: () => speaksentence112("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence113("en-GB"),
                      onPressedAmerican: () => speaksentence113("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence114("en-GB"),
                      onPressedAmerican: () => speaksentence114("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence115("en-GB"),
                      onPressedAmerican: () => speaksentence115("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence116("en-GB"),
                      onPressedAmerican: () => speaksentence116("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence117("en-GB"),
                      onPressedAmerican: () => speaksentence117("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence118("en-GB"),
                      onPressedAmerican: () => speaksentence118("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence119("en-GB"),
                      onPressedAmerican: () => speaksentence119("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_12000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence120("en-GB"),
                      onPressedAmerican: () => speaksentence120("en-US"),
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

// 188888880002200
const String _videoIdend = 'https://youtu.be/VrKW58MS12g?t=';
const double _startSecondsend = 00000000000000000000000000013;
const String _videoIdone = 'https://youtu.be/3YltYCrPZos?t=';
const double _startSecondsone = 00000000000000000000000000021;
const String _videoIdtwo = 'https://youtu.be/xkYved-ucGg?t=';
const double _startSecondstwo = 000000000000000000000000000384;
const String _videoIdthree = 'https://youtu.be/lrNcx2D_FZI?t=';
const double _startSecondsthree = 000000000000000000000000000115;
const String _videoIdfour = 'https://youtu.be/nITZooG6ij8?t=';
const double _startSecondsfour = 00000000000000000000000000037;
const String _videoIdfive = 'https://youtu.be/CvjoXdC-WkM?t=';
const double _startSecondsfive = 000000000000000000000000000303;

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