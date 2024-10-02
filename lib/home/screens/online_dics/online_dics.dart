import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class DictionarySearchScreen extends ConsumerStatefulWidget {
  const DictionarySearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DictionarySearchScreenState();
}

class _DictionarySearchScreenState
    extends ConsumerState<DictionarySearchScreen> {
  String selectedDictionary = 'Oxford';
  final List<String> dictionaries = [
    'Oxford',
    'Cambridge',
    'Merriam-Webster',
    'Collins'
  ];
  String currentUrl = '';

  void updateUrl(String searchQuery) {
    final urls = {
      'Oxford':
          'https://www.oxfordlearnersdictionaries.com/definition/english/',
      'Cambridge': 'https://dictionary.cambridge.org/dictionary/english/',
      'Merriam-Webster': 'https://www.merriam-webster.com/dictionary/',
      'Collins': 'https://www.collinsdictionary.com/dictionary/english/'
    };
    if (searchQuery.isNotEmpty) {
      setState(() {
        currentUrl = urls[selectedDictionary]! + searchQuery;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchWidget(
              onSearch: (query) {
                updateUrl(query); // Update URL when a search is performed
              },
              selectedDictionary: selectedDictionary,
              dictionaries: dictionaries,
              onDictionaryChanged: (String newValue) {
                setState(() {
                  selectedDictionary = newValue;
                });
                updateUrl(
                    searchQuery); // Fetch the current query when switching dictionaries
              },
            ),
          ),
          Expanded(
            child: DictionaryWebView(url: currentUrl),
          ),
        ],
      ),
    );
  }
}

class DictionaryWebView extends StatefulWidget {
  final String url;

  const DictionaryWebView({super.key, required this.url});

  @override
  State<DictionaryWebView> createState() => _DictionaryWebViewState();
}

class _DictionaryWebViewState extends State<DictionaryWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    if (widget.url.isNotEmpty) {
      _controller.loadRequest(Uri.parse(widget.url));
    }
  }

  @override
  void didUpdateWidget(DictionaryWebView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.url != widget.url && widget.url.isNotEmpty) {
      _controller.loadRequest(Uri.parse(widget.url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller);
  }
}

class SearchWidget extends ConsumerWidget {
  final Function(String) onSearch;
  final String selectedDictionary;
  final List<String> dictionaries;
  final ValueChanged<String> onDictionaryChanged;

  const SearchWidget({
    super.key,
    required this.onSearch,
    required this.selectedDictionary,
    required this.dictionaries,
    required this.onDictionaryChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = TextEditingController();
    final searchQuery = ref.watch(searchQueryProvider);
    final textSize = ref.watch(textSizeProvider) + 1;

    return TextField(
      controller: searchController..text = searchQuery,
      // labelText: 'Search for a word',
      decoration: InputDecoration(
        hintText: 'Search for a word',
        hintStyle: TextStyle(fontSize: textSize),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).highlightColor,
            width: 1.5,
          ),
        ),
        prefixIcon: IconButton(
          icon: Icon(Icons.search, size: textSize + 5),
          onPressed: () {
            if (searchController.text.isNotEmpty) {
              ref.read(searchQueryProvider.notifier).state =
                  searchController.text;
              onSearch(searchController.text); // Trigger search
            }
          },
        ),
        suffixIcon: Row(
          mainAxisSize:
              MainAxisSize.min, // Important to make the row take minimal width
          children: [
            IconButton(
              icon: Icon(Icons.clear, size: textSize + 5),
              onPressed: () {
                searchController.clear(); // Clear the text field
                ref.read(searchQueryProvider.notifier).state =
                    ''; // Clear the state
              },
            ),
            PopupMenuButton<String>(
              color: Theme.of(context).scaffoldBackgroundColor,
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              iconColor: Theme.of(context).primaryColor,
              onSelected: (String value) {
                onDictionaryChanged(
                    value);
              },
              itemBuilder: (BuildContext context) {
                return dictionaries.map((String dictionary) {
                  return PopupMenuItem<String>(
                    value: dictionary,
                    child: Text(dictionary),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          ref.read(searchQueryProvider.notifier).state = value;
          onSearch(value); // Trigger search on submission
        }
      },
    );
  }
}

// Stores the search query
final searchQueryProvider = StateProvider<String>((ref) {
  return '';
});

// Stores the selected dictionary (default: Oxford)
final selectedDictionaryProvider = StateProvider<int>((ref) {
  return 0; // Default to Oxford
});
