// reddit_pages.dart
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:flutter_tts/flutter_tts.dart';

// feed of r/EnglishLearning

class RedditNotifier extends StateNotifier<RedditState> {
  RedditNotifier() : super(RedditState());

  final String clientId = 'ljXXAckgtYTRFEpgotb4rA';
  final String clientSecret = 'o-8nKnDcjxiAoyvAvm8LXVhB79oaQQ';
  final String username = 'uphjfda';
  final String password = 'jjj55jj773&&??555ggijj__55tjhaj5';

  Future<void> fetchAccessToken() async {
    final response = await http.post(
      Uri.parse('https://www.reddit.com/api/v1/access_token'),
      headers: {
        'Authorization':
            'Basic ${base64Encode(utf8.encode('$clientId:$clientSecret'))}'
      },
      body: {
        'grant_type': 'password',
        'username': username,
        'password': password
      },
    );

    if (response.statusCode == 200) {
      state = state.copyWith(
          accessToken: json.decode(response.body)['access_token']);
    } else {
      throw Exception('Failed to get access token');
    }
  }

  Future<List<dynamic>> fetchPosts({bool loadMore = false}) async {
    if (state.accessToken == null) await fetchAccessToken();

    final url = loadMore && state.after != null
        ? 'https://oauth.reddit.com/r/EnglishLearning/hot?after=${state.after}'
        : 'https://oauth.reddit.com/r/EnglishLearning/hot';

    final response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'bearer ${state.accessToken}'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      state = state.copyWith(after: data['after']);
      return data['children']
          .where((post) => !post['data']['stickied'])
          .toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<Map<String, dynamic>> fetchPost(String postId) async {
    if (state.accessToken == null) await fetchAccessToken();
    final response = await http.get(
      Uri.parse('https://oauth.reddit.com/by_id/t3_$postId'),
      headers: {'Authorization': 'bearer ${state.accessToken}'},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body)['data']['children'][0]['data'];
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<dynamic>> fetchComments(String postId) async {
    if (state.accessToken == null) await fetchAccessToken();
    final response = await http.get(
      Uri.parse('https://oauth.reddit.com/comments/$postId'),
      headers: {'Authorization': 'bearer ${state.accessToken}'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body)[1]['data']['children'];
      return data.where((comment) => comment['kind'] == 't1').toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }
}

class RedditState {
  final String? accessToken;
  final String? after;

  RedditState({this.accessToken, this.after});

  RedditState copyWith({String? accessToken, String? after}) {
    return RedditState(
      accessToken: accessToken ?? this.accessToken,
      after: after ?? this.after,
    );
  }
}

final redditProvider =
    StateNotifierProvider<RedditNotifier, RedditState>((ref) {
  return RedditNotifier();
});

class RedditFeed extends ConsumerStatefulWidget {
  const RedditFeed({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RedditFeedState();
}

class _RedditFeedState extends ConsumerState<RedditFeed> {
  List<dynamic> _posts = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  Future<void> _loadPosts({bool loadMore = false}) async {
    setState(() {
      _isLoading = true;
    });

    try {
      final newPosts = await ref
          .read(redditProvider.notifier)
          .fetchPosts(loadMore: loadMore);
      setState(() {
        if (loadMore) {
          _posts.addAll(newPosts);
        } else {
          _posts = newPosts;
        }
      });
    } catch (e) {
      print('Error loading posts: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    return Scaffold(
      // appBar: const ZeetionaryAppbar(),
      body: _isLoading && _posts.isEmpty
          ? const Center(child: CircularProgressIndicator.adaptive())
          : CustomScrollView(
              slivers: [
                // SliverToBoxAdapter(
                //   child: TagsPanel(textSize: textSize),
                // ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == _posts.length) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            onPressed: _isLoading
                                ? null
                                : () => _loadPosts(loadMore: true),
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Theme.of(context).scaffoldBackgroundColor,
                              ),
                              shadowColor: WidgetStatePropertyAll(
                                Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            child: _isLoading
                                ? const CircularProgressIndicator.adaptive()
                                : Text(
                                    'Load More',
                                    style: TextStyle(
                                      color: Theme.of(context).highlightColor,
                                      fontSize: textSize + 2,
                                    ),
                                  ),
                          ),
                        );
                      }
                      final post = _posts[index]['data'];
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 6, left: 6.0, right: 10, bottom: 6),
                        child: ConstantContainer(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align children to the start
                            children: [
                              Card(
                                margin: const EdgeInsets.all(8.0),
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: ListTile(
                                  title: Text(
                                    post['title'],
                                    style: TextStyle(fontSize: textSize + 2),
                                  ),
                                  // subtitle: post['thumbnail'] != null &&
                                  //         post['thumbnail'] != '' &&
                                  //         post['thumbnail'] != 'self'
                                  //     ? Padding(
                                  //         padding: const EdgeInsets.only(
                                  //             top: 20.0,
                                  //             left: 6.0,
                                  //             right: 6.0,
                                  //             bottom: 6.0),
                                  //         child: ClipRRect(
                                  //           borderRadius:
                                  //               BorderRadius.circular(18.0),
                                  //           child: Image.network(
                                  //             post['thumbnail'],
                                  //             fit: BoxFit.cover,
                                  //           ),
                                  //         ),
                                  //       )
                                  //     : null,
                                  onTap: () {
                                    Routemaster.of(context).push(
                                        '/english-subreddit-slider/post/${post['id']}');
                                    // '/english-subreddit/post/${post['id']}');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 8.0, top: 8.0),
                                child: Text(
                                  post['num_comments'] > 0
                                      ? 'Discussed'
                                      : 'Not discussed',
                                  style: TextStyle(
                                    color: post['num_comments'] > 0
                                        ? Colors
                                            .green // Set to green if there are comments
                                        : const Color.fromARGB(182, 255, 0, 0),
                                    fontSize: textSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: _posts.length + 1,
                  ),
                ),
              ],
            ),
    );
  }
}

class TagsPanel extends StatelessWidget {
  const TagsPanel({
    super.key,
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 6.0, right: 10, bottom: 6),
      child: ConstantContainer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Text(
                  'Learn from Anglophones',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: textSize + 4,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Routemaster.of(context)
                            .push('/english-subreddit/reddit-discussion');
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shadowColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      child: Text(
                        'English Discussion',
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: textSize - 3,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        Routemaster.of(context)
                            .push('/english-subreddit/reddit-grammar');
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shadowColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      child: Text(
                        'EFL Grammar',
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: textSize - 3,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        Routemaster.of(context)
                            .push('/english-subreddit/reddit-grammar-two');
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shadowColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      child: Text(
                        'Native Grammar',
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: textSize - 3,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        Routemaster.of(context)
                            .push('/english-subreddit/reddit-vocabulary-two');
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shadowColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      child: Text(
                        'Vocabulary',
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: textSize - 3,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        Routemaster.of(context)
                            .push('/english-subreddit/reddit-vocabulary-three');
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shadowColor: WidgetStatePropertyAll(
                          Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      child: Text(
                        'Advanced vocabulary',
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                          fontSize: textSize - 3,
                        ),
                      ),
                    ),
                    // const SizedBox(width: 15),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Routemaster.of(context).push(
                    //         '/english-subreddit/reddit-etymology');
                    //   },
                    //   child: Text(
                    //     'Etymology',
                    //     style: TextStyle(
                    //       color: Theme.of(context).highlightColor,
                    //       fontSize: textSize - 3,
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(width: 15),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Routemaster.of(context).push(
                    //         '/english-subreddit/reddit-linguistics');
                    //   },
                    //   child: Text(
                    //     'Linguistics',
                    //     style: TextStyle(
                    //       color: Theme.of(context).highlightColor,
                    //       fontSize: textSize - 3,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RedditComments extends ConsumerWidget {
  final String postId;

  const RedditComments({required this.postId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    final FlutterTts flutterTts = FlutterTts();

    Future<void> speakBritish(String text) async {
      await flutterTts.setLanguage("en-GB");
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(text);
    }

    Future<void> speakAmerican(String text) async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(text);
    }

    Future<void> stop() async {
      await flutterTts.stop();
    }

    // Future<void> forward() async {
    //   // Add functionality to move forward in the text (if supported)
    // }

    // Future<void> backward() async {
    //   // Add functionality to move backward in the text (if supported)
    // }

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: FutureBuilder(
        future: Future.wait([
          ref.read(redditProvider.notifier).fetchPost(postId),
          ref.read(redditProvider.notifier).fetchComments(postId),
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.hasError) {
            return Center(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Error: ${snapshot.error}',
                    style: TextStyle(fontSize: textSize + 2),
                  ),
                ),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'No data available',
                    style: TextStyle(fontSize: textSize + 2),
                  ),
                ),
              ),
            );
          } else {
            final post = snapshot.data![0] as Map<String, dynamic>;
            List<dynamic> comments = snapshot.data![1] as List<dynamic>;

            // Define phrases to filter out
            const phrasesToFilter = [
              "Thank you for your submission",
              "[removed]",
              "Discussion flair",
              "and this action was performed automatically",
            ];

            // Filter out comments that include any of the phrases in phrasesToFilter
            comments = comments.where((comment) {
              final data = comment['data'];
              for (var phrase in phrasesToFilter) {
                if (data['body'].contains(phrase)) {
                  return false;
                }
              }
              return true;
            }).toList();

            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            post['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textSize + 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              // IconButton(
                              //   icon: const Icon(Icons.fast_rewind),
                              //   onPressed: () => backward(),
                              // ),
                              IconButton(
                                icon: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.blue,
                                    size: textSize - 3,
                                  ),
                                ),
                                onPressed: () =>
                                    speakBritish(post['selftext'] ?? ''),
                              ),
                              IconButton(
                                icon: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            182, 255, 0, 0),
                                        width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: const Color.fromARGB(182, 255, 0, 0),
                                    size: textSize - 3,
                                  ),
                                ),
                                onPressed: () =>
                                    speakAmerican(post['selftext'] ?? ''),
                              ),
                              IconButton(
                                icon: ConstantContainer(
                                  // decoration: BoxDecoration(
                                  //   shape: BoxShape.circle,
                                  //   border: Border.all(
                                  //       color: Colors.blue, width: 1.0),
                                  // ),
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.pause,
                                    // color: Colors.blue,
                                    color: Theme.of(context).primaryColor,
                                    size: textSize - 3,
                                  ),
                                ),
                                onPressed: () => stop(),
                              ),
                              // IconButton(
                              //   icon: const Icon(Icons.fast_forward),
                              //   onPressed: () => forward(),
                              // ),
                            ],
                          ),
                          ListTile(
                            title: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: MarkdownBody(
                                  data: post['selftext'] ?? '',
                                  styleSheet: MarkdownStyleSheet(
                                    p: TextStyle(
                                      fontSize: textSize + 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (post['url_overridden_by_dest'] != null &&
                          post['post_hint'] == 'image')
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image.network(post['url_overridden_by_dest']),
                        ),
                      const Divider(height: 30),
                      Text(
                        'Answers',
                        style: TextStyle(
                          fontSize: textSize + 2,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (comments.isEmpty)
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'No discussion here',
                                style: TextStyle(
                                  color: const Color.fromARGB(182, 255, 0, 0),
                                  fontSize: textSize + 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                ...comments.map((comment) {
                  final data = comment['data'];
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 6, left: 6.0, right: 10, bottom: 6),
                    child: ConstantContainer(
                      child: Card(
                        margin: const EdgeInsets.all(8.0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        // IconButton(
                                        //   icon: const Icon(Icons.fast_rewind),
                                        //   onPressed: () => backward(),
                                        // ),
                                        IconButton(
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1.0),
                                            ),
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.blue,
                                              size: textSize - 3,
                                            ),
                                          ),
                                          onPressed: () =>
                                              speakBritish(data['body']),
                                        ),
                                        IconButton(
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      182, 255, 0, 0),
                                                  width: 1.0),
                                            ),
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: const Color.fromARGB(
                                                  182, 255, 0, 0),
                                              size: textSize - 3,
                                            ),
                                          ),
                                          onPressed: () =>
                                              speakAmerican(data['body']),
                                        ),
                                        IconButton(
                                          icon: ConstantContainer(
                                            // decoration: BoxDecoration(
                                            //   shape: BoxShape.circle,
                                            //   border: Border.all(
                                            //       color: Theme.of(context)
                                            //           .primaryColor,
                                            //       // color: Colors.blue,
                                            //       width: 1.0),
                                            // ),
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.pause,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              // color: Colors.blue,
                                              size: textSize - 3,
                                            ),
                                          ),
                                          onPressed: () => stop(),
                                        ),
                                        // IconButton(
                                        //   icon: const Icon(Icons.fast_forward),
                                        //   onPressed: () => forward(),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: MarkdownBody(
                                        data: data['body'],
                                        styleSheet: MarkdownStyleSheet(
                                          p: TextStyle(
                                            fontSize: textSize + 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            );
          }
        },
      ),
    );
  }
}

// subtitle: post['thumbnail'] != null &&
                        //         post['thumbnail'] != '' &&
                        //         post['thumbnail'] != 'self'
                        //     ? Padding(
                        //         padding: const EdgeInsets.only(
                        //             top: 20.0,
                        //             left: 6.0,
                        //             right: 6.0,
                        //             bottom: 6.0),
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(18.0),
                        //           child: Image.network(
                        //             post['thumbnail'],
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ),
                        //       )
                        //     : null,