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

class A320FuelQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const A320FuelQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<A320FuelQuizWidget> createState() => _A320FuelQuizWidgetState();
}

class _A320FuelQuizWidgetState extends State<A320FuelQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText:
          "1) Refueling is possible if the aircraft batteries are the only source of power.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "2) With the center tank pump mode SEL switch in AUTO; the center tank pumps:",
      options: [
        "a) Run for two minutes after both engines are running.",
        "b) Will not restart until slats are retracted in flight.",
        "c) Continue to run until five minutes after the center tank is empty.",
        "d) All the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "3) Fuel transfer from the outer compartment to the inner compartment of the wing tanks occurs when the inner compartment quantity decreases to:",
      options: [
        "a) 250 kilograms",
        "b) 450 kilograms",
        "c) 750 kilograms",
        "d) 5000 kilograms"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "4) What indication will you see on the overhead fuel panel if the center tank has more than 250 kilograms of fuel and the left or right wing tank have less than 5,000 kilograms.",
      options: [
        "a) Auto feed fault.",
        "b) Fuel imbalance.",
        "c) Mode select fault.",
        "d) Fuel - Auto feed fault."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "5) The Fuel Used indication on ECAM is reset:",
      options: [
        "a) Manually by the pilot.",
        "b) Automatically at engine start on the ground.",
        "c) Automatically at electric power up of the aircraft."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "6) The fuel quantity indication on ECAM for the outer cell is boxed amber if:",
      options: [
        "a) One transfer valve fails to open.",
        "b) Outer cell fuel temperature is high.",
        "c) Both transfer valves fail to open when inner cell is at low level."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "7) An amber line appears across the last two digits of the ECAM FOB indication when:",
      options: [
        "a) Fuel quantity is inaccurate.",
        "b) The center tank pumps are switched off.",
        "c) The center tank pumps have failed."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "8) The fuel crossfeed valve is controlled by 2 motors.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "9) Which of the following would cause the fault light to illuminate on the MODE SEL push button?",
      options: [
        "a) Center tank pumps are running out of sequence.",
        "b) Crossfeed push button is ON.",
        "c) Center tank pumps do not stop after slat extension.",
        "d) Center tank pumps do not stop 5 min after center tank low level reached."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "10) The message CTR TK FEEDG appears in the MEMO. What does this mean?",
      options: [
        "a) The center tank fuel mode selector is OFF.",
        "b) The center tank pumps are OFF.",
        "c) At least one center tank pump is energized.",
        "d) A reminder to switch the center tank pumps OFF."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "11) From which tanks will fuel gravity feed?",
      options: [
        "a) Outer cell of the wing tanks, inner cell of the wing tanks, and/or center tank.",
        "b) Inner cell of the wing tanks, and center tank.",
        "c) Outer cell of the wing tanks, and inner cell of the wing tanks.",
        "d) The center tank only."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "12) Center tank pumps do not stop 5 min after center tank low level reached.",
      options: [
        "a) Yes, only on the refueling panel.",
        "b) It is not possible to determine their position.",
        "c) Only on the ECAM fuel page."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "13) During normal operations when should the fuel transfer valves open?",
      options: [
        "a) When a low level is sensed in the center tank.",
        "b) When a low level is sensed in either outer wing cell.",
        "c) When low level is sensed in either inner wing cell."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "14) What does an amber line across the last two digits of the fuel quantity mean?",
      options: [
        "a) The fuel quantity indication is inaccurate.",
        "b) The fuel quality is not good and should be checked.",
        "c) A disagreement between fuel measured and fuel entered on the MCDU has been detected.",
        "d) Not all the fuel aboard is useable."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "15) The APU fuel system:",
      options: [
        "a) Uses its own dedicated DC powered fuel pump.",
        "b) Obtains fuel from either center tank pump.",
        "c) Obtains fuel from the left fuel feed system via the left wing fuel pumps or if needed, the APU fuel pump.",
        "d) Obtains fuel from the left fuel manifold via the right side fuel pumps."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "16) With fuel in the center tank the CTR TK MODE SEL push button selected to AUTO and CTR TK PUMP push buttons ON (lights out), which of the following conditions cause the center tank fuel pumps to stop?",
      options: [
        "a) Extension of the Slats (after completion of the short test cycle).",
        "b) Anytime the slats are extended or an overfill condition is detected in either wing inner cell.",
        "c) For a short test period after the first Engine Master Switch is selected \"ON\" when the slats are extended."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "17) With fuel in the center tank, the CTR TK MODE SEL push button selected to AUTO and the CTR TK PUMP push buttons ON (lights out), the center tank pumps:",
      options: [
        "a) Will operate for a short period after the first engine MASTER switch is selected ON and while slats are retracted.",
        "b) They will continue to run until the center tank is empty or slats are extended.",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "18) After engine start, center tank fuel pumps run for ______ minutes regardless of slat position.",
      options: [
        "a) 1 minute.",
        "b) 2 minutes.",
        "c) 3 minutes.",
        "d) 5 minutes."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "19) The message OUTER TK FUEL XFRD appears in the MEMO. What does this mean?",
      options: [
        "a) It is a reminder to show that a transfer valve is open.",
        "b) Fuel is transferring from the center tank to the inner tank.",
        "c) It is a reminder to open the outer tank transfer valve.",
        "d) Fuel is transferring from the inner tank to the outer tank."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "20) The wing fuel transfer valves are:",
      options: [
        "a) Manually controlled and open when the MODE SEL push button is selected to MAN.",
        "b) Are electrically held closed.",
        "c) Open automatically at the start of refueling.",
        "d) Automatically close if a low level is sensed in either main wing tank, they automatically close at the next fueling."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "21) Why do the center tank pumps stop automatically when then slats are extended for takeoff?",
      options: [
        "a) To keep the center of gravity as low as possible.",
        "b) Dumping takeoff, the center tank fuel is pumped to the rear to trim aircraft.",
        "c) To ensure that the engines are fed from the wing tanks for takeoff (feeding segregation).",
        "d) During takeoff, the center tank fuel is gravity fed only."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "22) What precaution should you observe when gravity feeding fuel?",
      options: [
        "a) Operate the aircraft below 15,000 feet.",
        "b) Use center tank first.",
        "c) Open the crossfeed when above FL250.",
        "d) No precautions are necessary."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "23) Refueling time at normal pump pressure is ______ minutes for the wing tanks and ______ minutes for all tanks.",
      options: ["a) 15 & 25.", "b) 17 & 20.", "c) 15 & 20.", "d) 25 & 35."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "24) After engine shutdown, what are your actions to close the fuel transfer valves?",
      options: [
        "a) You have to switch the inner tank pumps off.",
        "b) You have to call maintenance to close the valves.",
        "c) No action is required. The valves will close automatically during the next refuelling."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "25) Fuel can be transferred from tank to tank:",
      options: [
        "a) Only on the ground.",
        "b) In flight if the fuel X FEED push button is selected OPEN.",
        "c) In flight if the fuel X FEED push button is selected OPEN and center tank MODE SEL push button is selected to MAN.",
        "d) Fuel can never be transferred."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "26) How has the fuel been transferred from the outer to the inner tanks?",
      options: [
        "a) By setting the MODE SEL pushbutton to MAN.",
        "b) The transfer valve has been opened automatically by the low lever sensor in the center tanks.",
        "c) By setting the MODE SEL PB to AUTO.",
        "d) The transfer valve has been opened automatically by the low level sensor in the inner tank."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "27) What is the minimum fuel quantity for takeoff?",
      options: ["a) 1,000 kg", "b) 1,200 kg.", "c) 1,500 kg", "d) 2,000 kg"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "28) The AC powered auxiliary fuel boost pump for the APU operates whenever the APU is operating and no other pump is on. It has an alternate power source on the AC Static Inverter bus for battery-only starts.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
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
                    "Fuel System (${_currentIndex + 1}/$totalQuestions)",
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
