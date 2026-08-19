// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class QuestionModel {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  QuestionModel({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}

class A320OxygenQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const A320OxygenQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<A320OxygenQuizWidget> createState() => _A320OxygenQuizWidgetState();
}

class _A320OxygenQuizWidgetState extends State<A320OxygenQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText:
          "1) On which ECAM page could the flight crew check the exact pressure of the oxygen cylinder?",
      options: [
        "a) The PRESS page.",
        "b) The DOORS page.",
        "c) The COND page.",
        "d) The STATUS page."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "2) What is indicated by a missing green thermal plug during an exterior preflight?",
      options: [
        "a) An oxygen system overpressure or thermal discharge.",
        "b) This is normal indication, the green thermal plug only appears if the oxygen cylinder is low.",
        "c) The crew oxygen bottle is empty.",
        "d) An external fire discharge has been activated."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "3) Approximately how long are the passenger oxygen generators able to produce oxygen?",
      options: [
        "a) 15 minutes.",
        "b) 20 minutes.",
        "c) 25 minutes.",
        "d) 30 minutes."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "4) What is the main difference between the crew and the passenger oxygen system?",
      options: [
        "a) There is no difference: both are served by oxygen cylinders.",
        "b) Crew is supplied from an oxygen cylinder; passengers are supplied by chemical oxygen generators.",
        "c) Both the crew and passengers are supplied with oxygen from chemical oxygen generators.",
        "d) The crew has an oxygen bottle for an emergency back-up supply."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "5) What is the purpose of the CREW SUPPLY push button?",
      options: [
        "a) When selected to ON, it supplies oxygen to the Captain & F/O only (jumpseats are not supplied)",
        "b) When selected to ON, it allows the flow of low pressure oxygen to the crew's masks.",
        "c) In case of low cylinder pressure it allows the crew to tap into the passenger oxygen system."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "6) What happens when the mask is used with the selection at 100% position?",
      options: [
        "a) Mask is supplied with diluted oxygen on demand.",
        "b) Mask is supplied with undiluted oxygen on demand.",
        "c) Mask is supplied with undiluted oxygen continuous flow.",
        "d) Mask is supplied with diluted oxygen on demand."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "7) At approximately what cabin altitude should the passenger oxygen masks drop?",
      options: [
        "a) 10,000 feet (+100, - 500 ft)",
        "b) 12,500 feet (+ or - 500 ft)",
        "c) 14,000 feet (+0, - 500 ft)",
        "d) 15,000 feet."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "8) What does an amber OXY on the ECAM Doors mean?",
      options: [
        "a) The crew supply switch is turned off and/or oxygen pressure is less than 400 psi.",
        "b) The crew supply switch is turned off",
        "c) Oxygen pressure is less than 650 psi.",
        "d) oxygen pressure is less than 300 psi."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "9) Illumination of the SYS ON light is an indication that:",
      options: [
        "a) The crew must depress the MASK MAN ON pb in order to deploy the masks.",
        "b) Electrical power has been sent to deploy the masks, either manually or automatically.",
        "c) The crew oxygen cylinder is empty.",
        "d) All of the passenger masks have deployed."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "10) There are oxygen generators in each aircraft's galley.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "11) What will depressing the guarded MASK MAN ON pb accomplish?",
      options: [
        "a) A signal is sent to the chemical oxygen generators to start the flow of oxygen to the masks.",
        "b) It manually sends a signal to open the oxygen mask doors.",
        "c) Both are correct."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "12) When does passenger oxygen flow start?",
      options: [
        "a) When the mask is pulled toward the seat.",
        "b) When the oxygen doors open.",
        "c) When the oxygen button is pushed.",
        "d) When cabin altitude exceeds 14,000 ft"
      ],
      correctOptionIndex: 0,
    )
  ];

  int _currentIndex = 0;
  late Map<int, int> _userAnswers;
  late int _remainingSeconds;
  Timer? _timer;
  bool _isSubmitted = false;

  @override
  void initState() {
    super.initState();
    _userAnswers = {};
    // Timer is dynamically set to 1 minute per question based on the list length
    _remainingSeconds = _questions.length * 60;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer?.cancel();
        _submitQuiz();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTimer(int totalSeconds) {
    int hours = totalSeconds ~/ 3600;
    int minutes = (totalSeconds % 3600) ~/ 60;
    int seconds = totalSeconds % 60;

    String hoursStr = hours > 0 ? '${hours.toString().padLeft(2, '0')}:' : '';
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr$minutesStr:$secondsStr';
  }

  void _selectAnswer(int optionIndex) {
    if (_isSubmitted) return;
    setState(() {
      _userAnswers[_currentIndex] = optionIndex;
    });
  }

  void _submitQuiz() {
    _timer?.cancel();
    setState(() {
      _isSubmitted = true;
    });
  }

  int _calculateScore() {
    int score = 0;
    for (int i = 0; i < _questions.length; i++) {
      if (_userAnswers[i] == _questions[i].correctOptionIndex) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentIndex];
    final totalQuestions = _questions.length;

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: const Color(0xFF1E1E2C),
      child: SafeArea(
        child: Column(
          children: [
            // Header Bar
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              color: const Color(0xFF2D2D44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Oxygen (${_currentIndex + 1}/$totalQuestions)",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: _remainingSeconds < 300
                          ? Colors.red.withOpacity(0.2)
                          : Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            _remainingSeconds < 300 ? Colors.red : Colors.blue,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 16,
                          color: _remainingSeconds < 300
                              ? Colors.red
                              : Colors.blue,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _formatTimer(_remainingSeconds),
                          style: TextStyle(
                            color: _remainingSeconds < 300
                                ? Colors.red
                                : Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Question & Options Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.questionText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(currentQuestion.options.length, (index) {
                      final optionText = currentQuestion.options[index];
                      final isSelected = _userAnswers[_currentIndex] == index;
                      final isCorrect =
                          currentQuestion.correctOptionIndex == index;

                      Color cardColor = const Color(0xFF2D2D44);
                      Color borderColor = Colors.transparent;

                      if (_isSubmitted) {
                        if (isCorrect) {
                          cardColor = Colors.green.withOpacity(0.2);
                          borderColor = Colors.green;
                        } else if (isSelected && !isCorrect) {
                          cardColor = Colors.red.withOpacity(0.2);
                          borderColor = Colors.red;
                        }
                      } else {
                        if (isSelected) {
                          borderColor = Colors.blue;
                          cardColor = const Color(0xFF3B3B58);
                        }
                      }

                      return GestureDetector(
                        onTap: () => _selectAnswer(index),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12.0),
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: borderColor, width: 1.5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  optionText,
                                  style: TextStyle(
                                    color: isSelected ||
                                            (_isSubmitted && isCorrect)
                                        ? Colors.white
                                        : Colors.white70,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              if (_isSubmitted && isCorrect)
                                const Icon(Icons.check_circle,
                                    color: Colors.green, size: 20),
                              if (_isSubmitted && isSelected && !isCorrect)
                                const Icon(Icons.cancel,
                                    color: Colors.red, size: 20),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

            // Footer Navigation Bar
            Container(
              padding: const EdgeInsets.all(12.0),
              color: const Color(0xFF2D2D44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _currentIndex > 0
                        ? () => setState(() => _currentIndex--)
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                    ),
                    child: const Text("Previous",
                        style: TextStyle(color: Colors.white)),
                  ),
                  if (!_isSubmitted)
                    ElevatedButton(
                      onPressed: _submitQuiz,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[700],
                      ),
                      child: const Text("Submit",
                          style: TextStyle(color: Colors.white)),
                    )
                  else
                    Text(
                      "Score: ${_calculateScore()} / $totalQuestions",
                      style: const TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ElevatedButton(
                    onPressed: _currentIndex < totalQuestions - 1
                        ? () => setState(() => _currentIndex++)
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("Next",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
