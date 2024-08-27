// reddit_pages.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:routemaster/routemaster.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// feed of r/etymology

class RedditNotifier extends StateNotifier<RedditState> {
  RedditNotifier() : super(RedditState());

  final String clientId = '0VPGjrAWDrOFS1GoR5Dl3Q';
  final String clientSecret = 'A2gg_Dg4rzpn9vlHpiWfKq1iwa6Vtw';
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
        ? 'https://oauth.reddit.com/r/etymology/hot?after=${state.after}'
        : 'https://oauth.reddit.com/r/etymology/hot';

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

class RedditEtymology extends ConsumerStatefulWidget {
  const RedditEtymology({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RedditEtymologyState();
}

class _RedditEtymologyState extends ConsumerState<RedditEtymology> {
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
      appBar: const ZeetionaryAppbar(),
      body: _isLoading && _posts.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6, left: 6.0, right: 10, bottom: 6),
                    child: ConstantContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Etymology',
                          style: TextStyle(
                            color: Theme.of(context).highlightColor,
                            fontSize: textSize + 4,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                            child: _isLoading
                                ? const CircularProgressIndicator()
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  subtitle: post['thumbnail'] != null &&
                                          post['thumbnail'] != '' &&
                                          post['thumbnail'] != 'self'
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0,
                                              left: 6.0,
                                              right: 6.0,
                                              bottom: 6.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            child: Image.network(
                                              post['thumbnail'],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      : null,
                                  onTap: () {
                                    Routemaster.of(context).push(
                                        '/english-subreddit/reddit-etymology/post/${post['id']}');
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
