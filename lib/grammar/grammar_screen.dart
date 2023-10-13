import 'package:flutter/material.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/dopsum.dart';

class GrammarScreen extends StatefulWidget {
  const GrammarScreen({Key? key}) : super(key: key);

  @override
  State<GrammarScreen> createState() => _GrammarScreenState();
}

class _GrammarScreenState extends State<GrammarScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allGrammarSubjects = [
    "present simple",
    "past simple",
  ];
  List<String> filteredsubjects = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredsubjects = List.from(allGrammarSubjects);
  }

  void filtersubjects(String query) {
    setState(() {
      filteredsubjects = allGrammarSubjects
          .where(
              (subject) => subject.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filtersubjects('');
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
              height: 50,
              child: TextField(
                controller: _searchController,
                onChanged: filtersubjects,
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
            child: EnglishGrammar(
              subjects: filteredsubjects,
              onTapSubject: (subjectsEnglish) {
                if (subjectsEnglish == "present simple") {
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

class EnglishGrammar extends StatelessWidget {
  final List<String> subjects;
  final Function(String) onTapSubject;

  const EnglishGrammar({
    Key? key,
    required this.subjects,
    required this.onTapSubject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglishGrammar(
          subjectsEnglish: subjects[index],
          onTap: () {
            onTapSubject(subjects[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglishGrammar extends StatelessWidget {
  final String subjectsEnglish;
  final VoidCallback? onTap;

  const ListTileEnglishGrammar({
    Key? key,
    required this.subjectsEnglish,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(subjectsEnglish),
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
