import 'package:flutter/material.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/dopsum.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allQuestions = [
    "what is the difference between",
    "how to say",
  ];
  List<String> filteredquestions = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredquestions = List.from(allQuestions);
  }

  void filterquestions(String query) {
    setState(() {
      filteredquestions = allQuestions
          .where((question) =>
              question.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterquestions('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 60,
              child: TextField(
                controller: _searchController,
                onChanged: filterquestions,
                decoration: InputDecoration(
                  labelText: 'Search here',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: clearSearch,
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Expanded(
            child: EnglishQuestions(
              questions: filteredquestions,
              onTapQuestion: (questionsEnglish) {
                if (questionsEnglish == "what is the difference between") {
                  // Handle the onTap event for the word "dog" here.
                  // You can navigate to a different screen or perform any desired action.
                  // For example:
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryDopsum(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class EnglishQuestions extends StatelessWidget {
  final List<String> questions;
  final Function(String) onTapQuestion;

  const EnglishQuestions({
    Key? key,
    required this.questions,
    required this.onTapQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglishQuestions(
          questionsEnglish: questions[index],
          onTap: () {
            onTapQuestion(questions[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglishQuestions extends StatelessWidget {
  final String questionsEnglish;
  final VoidCallback? onTap;

  const ListTileEnglishQuestions({
    Key? key,
    required this.questionsEnglish,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(questionsEnglish),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
