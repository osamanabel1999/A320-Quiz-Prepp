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

class A320HydraulicsQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const A320HydraulicsQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<A320HydraulicsQuizWidget> createState() =>
      _A320HydraulicsQuizWidgetState();
}

class _A320HydraulicsQuizWidgetState extends State<A320HydraulicsQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText: "1) Fluid can be transferred between hydraulic systems.",
      options: ["a) True", "b) False"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "2) Which hydraulic systems have engine driven pumps?",
      options: [
        "a) Green and blue.",
        "b) Green and yellow.",
        "c) Blue and yellow."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "3) The Load Alleviation Function (LAF) accumulators are pressurized by which hydraulic systems?",
      options: [
        "a) Green and blue.",
        "b) Green and yellow.",
        "c) Blue and yellow."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "4) The RAT pressurizes the Blue hydraulic system to approximately ______ psi.",
      options: ["a) 1500", "b) 2500", "c) 3000", "d) 3500"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "5) How many pumps has the yellow system to provide pressure (not counting the PTU)?",
      options: ["a) 1", "b) 2", "c) 3", "d) 4"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "6) The hand pump supplies yellow system pressure to the:",
      options: [
        "a) Normal brakes.",
        "b) Alternate brakes",
        "c) Passenger doors.",
        "d) Cargo doors."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "7) It is possible to pressurize the green hydraulic system on the ground via the PTU when the parking brake is set.",
      options: ["a) True", "b) False"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "8) The Eng Pump Fault light extinguishes when the engine pump switch is selected to off except for:",
      options: [
        "a) Reservoir low level.",
        "b) Pump low pressure.",
        "c) An overheat"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "9) With the airplane on the ground and the blue electric pump switch in AUTO; the blue pump will be energized when:",
      options: [
        "a) One engine is running.",
        "b) The BLUE PUMP OVRD switch has been pressed.",
        "c) First two statements are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "10) The PTU Fault light illuminates when the:",
      options: [
        "a) PTU is inoperative.",
        "b) Green or yellow reservoir has low air pressure.",
        "c) PTU pump has overheated."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "11) The PUMP identification number on the ECAM HYD page becomes amber when:",
      options: [
        "a) System pressure is below 1450 psi.",
        "b) N2 is below idle.",
        "c) The reservoir level is low."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "12) The ______ hydraulic system provides power for gear extension/retraction.",
      options: ["a) Yellow.", "b) Blue", "c) Green"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "13) As long as the landing gear lever is up a hydraulic safety valve closes to cut off the hydraulic supply to the gear when the airspeed is:",
      options: [
        "a) Greater than 260 KIAS.",
        "b) Greater than 230 KIAS.",
        "c) Less than 260 KIAS.",
        "d) Less than 230 KIAS"
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "14) Autobraking is initiated by:",
      options: [
        "a) Strut compression.",
        "b) Reverser action.",
        "c) Ground spoiler extension command."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "15) The alternate brake system has the same capabilities as normal brakes except:",
      options: [
        "a) Anti-skid is inoperative.",
        "b) Autobrakes are inoperative.",
        "c) Both first statements are correct"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "16) When using the alternate brake system on accumulator pressure only; the accumulator supplies:",
      options: [
        "a) Partial brakes.",
        "b) At least seven full brake applications.",
        "c) Alternate brakes with antiskid."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "17) The maximum degrees of nosewheel steering available when using the handwheel is ______.",
      options: ["a) +/- 60", "b) +/- 75", "c) +/- 95", "d) +/- 105"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "18) The green DECEL light on the Autobrake switch illuminates when the actual airplane deceleration corresponds to ______ % of the selected rate.",
      options: ["a) 80", "b) 95", "c) 100", "d) 110"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "19) The brakes pressure indication on TRIPLE PRESSURE INDICATOR reads which system pressure?",
      options: ["a) Yellow", "b) Blue", "c) Green"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "20) To extend the landing gear with the Gravity Extension Handcrank requires ______ turns of the handle.",
      options: [
        "a) 3 counter-clockwise",
        "b) 2 counter-clockwise",
        "c) 3 clockwise"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "21) The aircraft's three hydraulic systems are normally pressurized by:",
      options: [
        "a) Two engine driven pumps and one electric pump.",
        "b) Two electric pumps and one PTU.",
        "c) Two electric pumps and one engine driven pump.",
        "d) Two electric pumps and two engine driven pumps."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "22) When will the yellow system electric pump operate? (AC power is available).",
      options: [
        "a) During the second engine start.",
        "b) When the first engine MASTER switch is moved to the ON position.",
        "c) If any N2 RPM is less than 45%.",
        "d) When the yellow electric system ELEC PUMP push button is selected to ON or the ground crew activates a cargo door switch."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "23) What are the major equipment losses with loss of Green system?",
      options: [
        "a) Speed Brakes.",
        "b) Nosewheel steering, Autobrakes.",
        "c) Alternate Brakes.",
        "d) The upper and lower rudders."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "24) The hydraulic PTU will activate if:",
      options: [
        "a) A significant pressure loss occurs in any of the three hydraulic systems.",
        "b) A significant pressure loss occurs in the green or yellow hydraulic system.",
        "c) Both are correct."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "25) After extending the RAT, is it possible to check its position and status?",
      options: [
        "a) Check to see if the blue system ELEC PUMP FAULT light is not illuminated.",
        "b) Yes, select the ECAM ELEC page.",
        "c) Yes, select the ECAM HYD page.",
        "d) No. It is not possible."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "26) The RAT is capable of powering a pump which will pressurize:",
      options: [
        "a) Only the blue system.",
        "b) All systems.",
        "c) The blue and yellow system.",
        "d) The blue and green system."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "27) How is the yellow hydraulic system pressurized?",
      options: [
        "a) An engine driven pump, an electric pump, the PTU using the green system and, for the cargo doors only, a hand pump.",
        "b) An engine driven pump, electric pump, the PTU using the blue system and, for the cargo doors only, a hand pump.",
        "c) An engine driven pump, an electric pump, and the PTU using the green system."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "28) When will normal operation of the BLUE system hydraulic pump begin?",
      options: [
        "a) During the first engine start.",
        "b) When the first engine MASTER switch is moved to the ON position.",
        "c) Only when the RAT is deployed.",
        "d) After both engines are started."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "29) The PTU comes into action automatically when the differential pressure between the GREEN and the YELLOW systems is greater than ______ psi.",
      options: ["a) 300.", "b) 500.", "c) 650.", "d) 700."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "30) When will the yellow system electric pump operate? (AC power is available)",
      options: [
        "a) During the second engine start.",
        "b) When the yellow electric system ELEC PUMP push button is selected to ON or the ground crew activates a cargo door switch.",
        "c) If any N2 RPM is less than 45%.",
        "d) When the first engine MASTER switch is moved to the ON position."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "31) What is the normal pressure in the hydraulic system?",
      options: [
        "a) 500 psi.",
        "b) 1,000 psi.",
        "c) 3,000 psi.",
        "d) 2,000 psi"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "32) You are at the gate. You have started engine #2. Before starting engine #1, you notice that the PTU test has not been activated. Is it normal.",
      options: [
        "a) No. You have to call the mechanics.",
        "b) The PTU has been shutoff",
        "c) The PTU will not work until the second engine has been started."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "33) You get a G RSVR OVHT message. Why does the ECAM procedure ask you to switch the PTU off first?",
      options: [
        "a) To prevent the hot hydraulic fluid from being transferred to the YELLOW system.",
        "b) To depressurize the YELLOW and GREEN systems.",
        "c) To prevent the BLUE system from pressurizing the GREEN system.",
        "d) To prevent the PTU from pressurizing the GREEN system"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "34) For hydraulic system malfunctions, when will the RAT deploy?",
      options: [
        "a) Automatically with the failure of both the green and blue hydraulic systems.",
        "b) Automatically with the failure of both the green and yellow hydraulic systems.",
        "c) Only when the guarded RAT MAN ON push button is selected by the crew.",
        "d) When airspeed drops below 100 knots with the gear up."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "35) What does the RAT MAN ON switch do?",
      options: [
        "a) Extends RAT, pressurizes BLUE system, starts Emergency Generator.",
        "b) Extends RAT, must push RAT MAN ON again to pressurize BLUE system.",
        "c) Extends RAT, pressurizes GREEN system, starts Emergency Generator.",
        "d) Extends RAT, pressurizes BLUE system, does not start Emergency Generator."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "36) Describe the PTU status with a green system reservoir overheat, low pressure or low fluid level.",
      options: [
        "a) The PTU will be inhibited",
        "b) The crew must select the PTU ON.",
        "c) The PTU fault light will remain illuminated as long as the problem exists. The PTU should be selected OFF.",
        "d) The crew must select the PTU OFF then ON"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "37) During engine start up, when is the BLUE hydraulic system pressurized?",
      options: [
        "a) As soon as the PTU is turned on.",
        "b) As soon as the BLUE electric pump is manually turned on.",
        "c) Automatically after first engine start.",
        "d) As soon as the engine master switch is set to IGN/START"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "38) If you lost the GREEN system, what equipment is lost?",
      options: [
        "a) Reverser 1 and gear retraction.",
        "b) Reverser 1, gear retraction and nose wheel steering.",
        "c) Reverser 2, gear retraction, cargo doors and nose wheel steering.",
        "d) Reverser 2 and gear retraction."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "39) Crew members can use a hand pump to pressurize the YELLOW system in order to operate the cargo doors when no electrical power is available.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "40) If you lost the YELLOW system, what equipment is lost?",
      options: [
        "a) Reverser 2",
        "b) Parking brake accumulator recharging",
        "c) Cargo door.",
        "d) All of the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "41) On the hydraulic quantity indicator what does the amber level indicate?",
      options: [
        "a) The warning level.",
        "b) The reservoir contents",
        "c) The normal filling level",
        "d) The temperature of the hydraulic fluid."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "42) What does a PTU FAULT light indicate?",
      options: [
        "a) GREEN or YELLOW reservoir overheat.",
        "b) GREEN or YELLOW reservoir low air pressure.",
        "c) GREEN or YELLOW reservoir low level..",
        "d) All of the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "43) If you lost the BLUE system, what equipment is lost?",
      options: [
        "a) The Emergency generator.",
        "b) Cargo door",
        "c) Nose wheel sterring.",
        "d) All of the above."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "44) All hydraulic systems have a fire shutoff valve.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "45) What is the signification of an amber RAT indicator (ECAM HYD page)?",
      options: [
        "a) The RAT is uncorrectly stowed.",
        "b) The RAT is not stowed.",
        "c) Pressure for stowing the RAT has been applied, or the RAT pump is not available."
      ],
      correctOptionIndex: 2,
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
                    "Hydraulics (${_currentIndex + 1}/$totalQuestions)",
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
