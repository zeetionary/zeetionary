import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class QuizScreenJsonJsonHome extends ConsumerWidget {
  const QuizScreenJsonJsonHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    final questionsAsync = ref.watch(questionsProvider);
    final answered = ref.watch(answeredQuestionsProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: questionsAsync.when(
        data: (questions) {
          // Check if all questions have been answered
          if (answered.length == questions.length) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  // Show confirmation dialog
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Reset Progress'),
                      content: const Text(
                          'Are you sure you want to reset your progress?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: textSize,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ref
                                .read(answeredQuestionsProvider.notifier)
                                .reset();
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: textSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Reset Progress'),
              ),
            );
          }

          // Extract unique tags
          final tags = questions.expand((q) => q.tags).toSet().toList();

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Move ProgressWidget inside Scaffold
                const ProgressWidget(),
                const SizedBox(height: 10),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3,
                    ),
                    itemCount: tags.length,
                    itemBuilder: (context, index) {
                      final tag = tags[index];
                      final isSelected =
                          ref.watch(selectedTagsProvider).contains(tag);
                      return GestureDetector(
                        onTap: () {
                          final notifier =
                              ref.read(selectedTagsProvider.notifier);
                          if (isSelected) {
                            notifier.state = List.from(notifier.state)
                              ..remove(tag);
                          } else {
                            notifier.state = List.from(notifier.state)
                              ..add(tag);
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.blueAccent
                                : Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(8),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Theme.of(context).highlightColor,
                            //     spreadRadius: 2,
                            //     blurRadius: 1,
                            //     offset: const Offset(0, 3),
                            //   ),
                            // ],
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Theme.of(context).highlightColor,
                            //     spreadRadius: 1,
                            //     blurRadius: 1,
                            //     offset: const Offset(0, 3),
                            //   ),
                            // ],
                          ),
                          child: Center(
                            child: Text(
                              tag.replaceAll('_', ' ').toUpperCase(),
                              style: TextStyle(
                                color: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).highlightColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: ref.watch(selectedTagsProvider).isEmpty
                      ? null
                      : () {
                          // Navigate to Quiz Screen
                          Routemaster.of(context)
                              .push('/quiz-screen-two/quiz-screen');
                        },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Theme.of(context).highlightColor,
                    backgroundColor: Theme.of(context).canvasColor,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text(
                    "Let's Start the Quiz",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class QuizScreenJson extends ConsumerStatefulWidget {
  const QuizScreenJson({super.key});

  @override
  // _QuizScreenJsonState createState() => _QuizScreenJsonState();

  ConsumerState<ConsumerStatefulWidget> createState() => _QuizScreenJsonState();
}

class _QuizScreenJsonState extends ConsumerState<QuizScreenJson> {
  late List<Question> _filteredQuestions;
  int _currentIndex = 0;
  bool _isLoading = true;
  bool _hasAnswered =
      false; // Flag to track if the question has been answered or time is up

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  Future<void> _loadQuestions() async {
    final questions = await ref.read(questionsProvider.future);
    final selectedTags = ref.read(selectedTagsProvider);

    // Filter questions based on selected tags and not answered
    final answered = ref.read(answeredQuestionsProvider);
    _filteredQuestions = questions
        .where((q) =>
            q.tags.any((tag) => selectedTags.contains(tag)) &&
            !answered.contains(q.id))
        .toList();

    // Shuffle the questions
    _filteredQuestions.shuffle();

    setState(() {
      _isLoading = false;
    });
  }

  void _handleAnswer(Question question, String userAnswer) {
    if (_hasAnswered) return; // Prevent multiple answers
    _hasAnswered = true; // Set the flag to prevent further answers

    bool isCorrect =
        userAnswer.trim().toLowerCase() == question.answer.trim().toLowerCase();

    // Update storage and progress
    ref
        .read(answeredQuestionsProvider.notifier)
        .addAnsweredQuestion(question.id, isCorrect);

    // Show bottom sheet with feedback
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Correct parameter
      enableDrag: false, // Prevent dragging to dismiss
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isCorrect ? Icons.check_circle : Icons.cancel,
              color: isCorrect ? Colors.green : Colors.red,
              size: 60,
            ),
            const SizedBox(height: 10),
            Text(
              isCorrect ? 'Correct!' : 'Wrong!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              children: [
                const Text(
                  'The correct answer is: ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  // '${question.answer}',
                  question.answer,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _nextQuestion();
              },
              child: const Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }

  void _nextQuestion() {
    if (_currentIndex < _filteredQuestions.length - 1) {
      setState(() {
        _currentIndex++;
        _hasAnswered = false; // Reset the flag for the next question
      });
    } else {
      // Quiz completed
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Quiz Completed'),
          content: const Text('You have answered all selected questions.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Routemaster.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void _onTimeUp() {
    if (_hasAnswered) return; // Prevent multiple triggers
    _hasAnswered = true; // Set the flag to prevent further answers

    final currentQuestion = _filteredQuestions[_currentIndex];
    // Show bottom sheet for time up
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.timer_off,
              color: Colors.red,
              size: 60,
            ),
            const SizedBox(height: 10),
            const Text(
              'Time is up!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'The correct answer is: ${currentQuestion.answer}',
              style: const TextStyle(fontSize: 18),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _nextQuestion();
              },
              child: const Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        appBar: ZeetionaryAppbar(),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_filteredQuestions.isEmpty) {
      return const Scaffold(
        appBar: ZeetionaryAppbar(),
        body: Center(
          child: Text('No more questions available.'),
        ),
      );
    }

    final currentQuestion = _filteredQuestions[_currentIndex];

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Move ProgressWidget inside Scaffold
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 6,
                    child: TotalPointsAndAnswers(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: TimerWidget(
                      key: ValueKey(currentQuestion.id),
                      duration: 4500,
                      onTimeUp: _onTimeUp,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: AbsorbPointer(
                absorbing:
                    _hasAnswered, // Disable interactions if answered or time is up
                child: QuestionWidget(
                  question: currentQuestion,
                  onAnswer: (answer) => _handleAnswer(currentQuestion, answer!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StorageService {
  static const String answeredQuestionsKey = 'answered_questions';
  static const String correctAnswersKey = 'correct_answers';
  static const String wrongAnswersKey = 'wrong_answers';
  static const String totalAnsweredKey = 'total_answered';

  Future<Set<int>> getAnsweredQuestions() async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(answeredQuestionsKey) ?? [];
    return ids.map(int.parse).toSet();
  }

  Future<void> addAnsweredQuestion(int id, bool isCorrect) async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(answeredQuestionsKey) ?? [];
    if (!ids.contains(id.toString())) {
      ids.add(id.toString());
      await prefs.setStringList(answeredQuestionsKey, ids);
    }

    // Update correct/wrong counts
    if (isCorrect) {
      final correct = prefs.getInt(correctAnswersKey) ?? 0;
      await prefs.setInt(correctAnswersKey, correct + 1);
    } else {
      final wrong = prefs.getInt(wrongAnswersKey) ?? 0;
      await prefs.setInt(wrongAnswersKey, wrong + 1);
    }

    // Update total answered
    final total = prefs.getInt(totalAnsweredKey) ?? 0;
    await prefs.setInt(totalAnsweredKey, total + 1);
  }

  Future<int> getCorrectAnswers() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(correctAnswersKey) ?? 0;
  }

  Future<int> getWrongAnswers() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(wrongAnswersKey) ?? 0;
  }

  Future<int> getTotalAnswered() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(totalAnsweredKey) ?? 0;
  }

  Future<void> reset() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(answeredQuestionsKey);
    await prefs.remove(correctAnswersKey);
    await prefs.remove(wrongAnswersKey);
    await prefs.remove(totalAnsweredKey);
  }
}

class ProgressWidget extends ConsumerWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Statistics Row
          TotalPointsAndAnswers(),
          SizedBox(height: 10),
          // Reset Button
          ClearPointsWidgets(),
        ],
      ),
    );
  }
}

class TotalPointsAndAnswers extends ConsumerWidget {
  const TotalPointsAndAnswers({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answeredQuestions = ref.watch(answeredQuestionsProvider);
    ref.watch(storageServiceProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildStat('Total', answeredQuestions.length.toString(), Colors.blue),
        const SizedBox(
          width: 20,
        ),
        _buildStat(
            'Correct',
            ref
                .watch(answeredQuestionsProvider.notifier)
                .getCorrectAnswers()
                .toString(),
            Colors.green),
        const SizedBox(
          width: 20,
        ),
        _buildStat(
            'Wrong',
            ref
                .watch(answeredQuestionsProvider.notifier)
                .getWrongAnswers()
                .toString(),
            Colors.red),
      ],
    );
  }

  Widget _buildStat(String label, String count, Color color) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontSize: 18, color: color, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: color),
        ),
      ],
    );
  }
}

class ClearPointsWidgets extends ConsumerWidget {
  const ClearPointsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(
      onPressed: () {
        // Show confirmation dialog
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Reset Progress',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            content: Text(
              'Are you sure you want to reset your progress?',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  ref.read(answeredQuestionsProvider.notifier).reset();
                  Navigator.pop(context);
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      icon: Icon(
        Icons.refresh,
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        'Reset Progress',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).canvasColor,
      ),
    );
  }
}

class QuizYoutubePlayer extends StatefulWidget {
  final Question question;

  const QuizYoutubePlayer({super.key, required this.question});

  @override
  QuizYoutubePlayerState createState() => QuizYoutubePlayerState();
}

class QuizYoutubePlayerState extends State<QuizYoutubePlayer> {
  late YoutubePlayerController _youtubeController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _startPlaybackTimer();
  }

  void _initializePlayer() {
    if ((widget.question.type == QuestionType.videoFillInBlank ||
            widget.question.type == QuestionType.videoOptions) &&
        widget.question.videoId != null &&
        widget.question.start != null &&
        widget.question.end != null) {
      _youtubeController = YoutubePlayerController.fromVideoId(
        videoId: widget.question.videoId!,
        startSeconds: widget.question.start!.toDouble(),
        endSeconds: widget.question.end!.toDouble(),
        autoPlay: true,
        params: const YoutubePlayerParams(
          enableCaption: false,
          captionLanguage: 'en',
          loop: true,
          enableKeyboard: false,
          mute: false,
          showFullscreenButton: false,
          showVideoAnnotations: false,
          showControls: false,
          strictRelatedVideos: false,
        ),
      );
    }
  }

  void _startPlaybackTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final currentTime = await _youtubeController.currentTime;

      // Check if current time exceeds end seconds
      if (currentTime >= widget.question.end!.toDouble()) {
        reloadVideo();
      }
    });
  }

  void reloadVideo() {
    if ((widget.question.type == QuestionType.videoFillInBlank ||
            widget.question.type == QuestionType.videoOptions) &&
        widget.question.videoId != null &&
        widget.question.start != null &&
        widget.question.end != null) {
      _youtubeController.loadVideoById(
        videoId: widget.question.videoId!,
        startSeconds: widget.question.start!.toDouble(),
        endSeconds: widget.question.end!.toDouble(),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _youtubeController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizYouTubeVideosScaffold(
        controller: _youtubeController,
        onReloadVideo: reloadVideo,
      ),
    );
  }
}

class QuizYouTubeVideosScaffold extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const QuizYouTubeVideosScaffold({
    super.key,
    required this.controller,
    required this.onReloadVideo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: onReloadVideo,
          );
        },
      ),
    );
  }
}

class YouTubeVideosContainerEnd extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const YouTubeVideosContainerEnd({
    super.key,
    required this.controller,
    required this.onReloadVideo,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // child: Column(
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.only(top: 2.0, left: 2, right: 2),
      //       padding: const EdgeInsets.all(2.0),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(12.0),
      //         child: YoutubePlayer(
      //           controller: controller,
      //           aspectRatio: 16 / 9,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(height: 10),
      //     ElevatedButton(
      //       onPressed: onReloadVideo,
      //       child: const Icon(
      //         Icons.replay,
      //       ),
      //     ),
      //   ],
      // ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2.0, left: 2, right: 2),
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: YoutubePlayer(
                controller: controller,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: ElevatedButton(
              onPressed: onReloadVideo,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.withOpacity(0.01),
                shape: const CircleBorder(),
              ),
              child: Icon(
                Icons.replay,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  final Question question;
  final Function(String?) onAnswer;
  final bool isLocked;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.onAnswer,
    this.isLocked = false,
  });

  @override
  // _QuestionWidgetState createState() => _QuestionWidgetState();

  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  final TextEditingController _textController = TextEditingController();
  String? _userInput;
  YoutubePlayerController? _youtubeController;

  @override
  void initState() {
    super.initState();
    if ((widget.question.type == QuestionType.videoFillInBlank ||
            widget.question.type == QuestionType.videoOptions) &&
        widget.question.videoId != null &&
        widget.question.start != null &&
        widget.question.end != null) {
      _youtubeController = YoutubePlayerController.fromVideoId(
        videoId: widget.question.videoId!,
        startSeconds: widget.question.start!.toDouble(),
        endSeconds: widget.question.end!.toDouble(),
        autoPlay: true,
        params: const YoutubePlayerParams(
          enableCaption: false,
          captionLanguage: 'en',
          loop: true,
          enableKeyboard: false,
          mute: false,
          showFullscreenButton: false,
          showVideoAnnotations: false,
          showControls: false,
          strictRelatedVideos: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _youtubeController?.close();
    super.dispose();
  }

  void _submitAnswer(String? answer) {
    if (widget.isLocked) return;
    widget.onAnswer(answer);
    _textController.clear();
    _userInput = null;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.question.type == QuestionType.multipleChoice) {
      final options = List<String>.from(widget.question.options!);
      options.shuffle();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.question.question,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (context, index) {
                final option = options[index];
                return GestureDetector(
                  onTap: widget.isLocked ? null : () => _submitAnswer(option),
                  child: Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 18,
                          color: widget.isLocked
                              ? Theme.of(context).highlightColor
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else if (widget.question.type == QuestionType.fillInBlank) {
      return _buildFillInBlank();
    } else if (widget.question.type == QuestionType.videoFillInBlank) {
      return _buildVideoFillInBlank();
    } else if (widget.question.type == QuestionType.videoOptions) {
      return _buildVideoOptions();
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildFillInBlank() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.question.question,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).highlightColor,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 0.4,
              ),
            ),
            border: const OutlineInputBorder(),
            hintText: 'Answer here',
            hintStyle: const TextStyle(fontSize: 18),
            // labelText: 'Your Answer',
          ),
          enabled: !widget.isLocked,
          onChanged: (value) {
            if (!widget.isLocked) {
              setState(() {
                _userInput = value;
              });
            }
          },
          onSubmitted:
              widget.isLocked ? null : (value) => _submitAnswer(_userInput),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: (widget.isLocked ||
                  _userInput == null ||
                  _userInput!.trim().isEmpty)
              ? null
              : () => _submitAnswer(_userInput),
          style: ElevatedButton.styleFrom(
            shadowColor: Theme.of(context).highlightColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(
            'Submit',
            style: TextStyle(
              color: Theme.of(context).highlightColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVideoFillInBlank() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).highlightColor,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 0.4,
                ),
              ),
              border: const OutlineInputBorder(),
              hintText: 'Answer here',
              hintStyle: const TextStyle(fontSize: 18),
              // labelText: 'Your Answer',
            ),
            enabled: !widget.isLocked,
            onChanged: (value) {
              if (!widget.isLocked) {
                setState(() {
                  _userInput = value;
                });
              }
            },
            onSubmitted:
                widget.isLocked ? null : (value) => _submitAnswer(_userInput),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (widget.isLocked ||
                    _userInput == null ||
                    _userInput!.trim().isEmpty)
                ? null
                : () => _submitAnswer(_userInput),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Theme.of(context).highlightColor,
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (_youtubeController != null)
            SizedBox(
              height: 300,
              width: double.infinity,
              child: QuizYoutubePlayer(
                key: ValueKey(widget.question.videoId),
                question: widget.question,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildVideoOptions() {
    final options = List<String>.from(widget.question.options!);
    options.shuffle(); // Shuffle options for this question type

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            itemCount: options.length,
            shrinkWrap: true, // Important to avoid height issues
            physics:
                const NeverScrollableScrollPhysics(), // Disable inner scrolling
            itemBuilder: (context, index) {
              final option = options[index];
              return GestureDetector(
                onTap: widget.isLocked ? null : () => _submitAnswer(option),
                child: Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      option,
                      style: TextStyle(
                        fontSize: 18,
                        color: widget.isLocked ? Colors.grey : Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          if (_youtubeController != null)
            SizedBox(
              height: 300,
              width: double.infinity,
              child: QuizYoutubePlayer(
                key: ValueKey(widget.question.videoId),
                question: widget.question,
              ),
            ),
        ],
      ),
    );
  }
}

class TimerWidget extends StatefulWidget {
  final int duration; // in seconds
  final VoidCallback onTimeUp;

  const TimerWidget({
    super.key,
    required this.duration,
    required this.onTimeUp,
  });

  @override
  // _TimerWidgetState createState() => _TimerWidgetState();

  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  late int _remaining;

  @override
  void initState() {
    super.initState();
    _remaining = widget.duration;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration),
    )..addListener(() {
        setState(() {});
      });

    _controller.forward();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remaining <= 0) {
        timer.cancel();
        widget.onTimeUp(); // Invoke the callback when time is up
      } else {
        setState(() {
          _remaining--;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Animated Circular Progress Indicator
        SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            value: 1.0 - _controller.value,
            strokeWidth: 6,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
          ),
        ),
        // Remaining Time Text
        Text(
          '$_remaining',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// Provider to load questions from JSON
final questionsProvider = FutureProvider<List<Question>>((ref) async {
  final String response =
      await rootBundle.loadString('assets/questions_two.json');
  final List<dynamic> data = json.decode(response);
  return data.map((json) => Question.fromJson(json)).toList();
});

// Provider for selected tags
final selectedTagsProvider = StateProvider<List<String>>((ref) => []);

// Provider for answered question IDs
final answeredQuestionsProvider =
    StateNotifierProvider<AnsweredQuestionsNotifier, Set<int>>((ref) {
  final storageService = ref.watch(storageServiceProvider);
  return AnsweredQuestionsNotifier(storageService);
});

// Notifier for answered questions
class AnsweredQuestionsNotifier extends StateNotifier<Set<int>> {
  final StorageService storageService;
  int correctAnswers = 0; // Track correct answers
  int wrongAnswers = 0; // Track wrong answers

  AnsweredQuestionsNotifier(this.storageService) : super({}) {
    loadAnsweredQuestions();
  }

  Future<void> loadAnsweredQuestions() async {
    state = await storageService.getAnsweredQuestions();
  }

  Future<void> addAnsweredQuestion(int id, bool isCorrect) async {
    state = {...state, id};
    await storageService.addAnsweredQuestion(id, isCorrect);

    // Update the counts based on the correctness
    if (isCorrect) {
      correctAnswers++;
    } else {
      wrongAnswers++;
    }
  }

  Future<void> reset() async {
    state = {};
    correctAnswers = 0; // Reset correct answers count
    wrongAnswers = 0; // Reset wrong answers count
    await storageService.reset();
  }

  int getCorrectAnswers() => correctAnswers;
  int getWrongAnswers() => wrongAnswers;
}

// Provider for storage service
final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageService();
});

// models/question.dart

enum QuestionType {
  multipleChoice,
  fillInBlank,
  videoFillInBlank,
  videoOptions
} // Added videoOptions

class Question {
  final int id;
  final String question;
  final List<String>? options;
  final String answer;
  final List<String> tags;
  final QuestionType type;
  final String? videoId;
  final int? start;
  final int? end;

  Question({
    required this.id,
    required this.question,
    this.options,
    required this.answer,
    required this.tags,
    required this.type,
    this.videoId,
    this.start,
    this.end,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    QuestionType qType;
    switch (json['type']) {
      case 'multiple_choice':
        qType = QuestionType.multipleChoice;
        break;
      case 'fill_in_blank':
        qType = QuestionType.fillInBlank;
        break;
      case 'video_fill_in_blank':
        qType = QuestionType.videoFillInBlank;
        break;
      case 'video_options': // Added handling for video_options
        qType = QuestionType.videoOptions;
        break;
      default:
        qType = QuestionType.multipleChoice;
    }

    return Question(
      id: json['id'],
      question: json['question'],
      options:
          json['options'] != null ? List<String>.from(json['options']) : null,
      answer: json['answer'],
      tags: List<String>.from(json['tags']),
      type: qType,
      videoId: json['videoId'],
      start: json['start'],
      end: json['end'],
    );
  }
}
