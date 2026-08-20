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

class A320IceAndRainQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const A320IceAndRainQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<A320IceAndRainQuizWidget> createState() =>
      _A320IceAndRainQuizWidgetState();
}

class _A320IceAndRainQuizWidgetState extends State<A320IceAndRainQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText:
          "1) The ______ on each wing are anti-iced with pneumatic bleed air.",
      options: ["a) Slats", "b) Flaps", "c) Three outboard slats"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "2) Electrical heating is provided for the protection of:",
      options: [
        "a) Pitots and Angle Of Attack (AOA) probes",
        "b) Pitots, static ports and TAT probes",
        "c) Pitots, static ports, AOA probes, and TAT probes",
        "d) Pitots and static ports"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "3) When a pneumatic leak is detected, the wing anti-ice valves:",
      options: [
        "a) Close automatically.",
        "b) Open automatically.",
        "c) Remain in position."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "4) When either engine anti-ice valve is open:",
      options: [
        "a) Maximum N1 is increased.",
        "b) Minimum idle rpm is increased.",
        "c) Minimum idle rpm is reduced."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "5) Window heat operates at what power level in flight?",
      options: ["a) Low", "b) High"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "6) Probe heat comes on automatically when:",
      options: [
        "a) The AC ESS bus is powered.",
        "b) Electrical power is applied to the aircraft.",
        "c) When at least one engine is running."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "7) On the ground the wing anti-ice valves will:",
      options: [
        "a) Open during a test sequence (30 seconds), provided pneumatic supply is available.",
        "b) Not open at anytime.",
        "c) Open any time the switch is pushed \"ON\"."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "8) Where do the wing anti-ice indications appear on ECAM?",
      options: [
        "a) There is no indication on ECAM bleed page for wing anti-ice",
        "b) An amber triangle appears on the ECAM bleed page",
        "c) WING A.ICE appears on ECAM status page.",
        "d) ANTI-ICE appears in white on the ECAM bleed page and W A.ICE appears in green on the ECAM memo when the wing P/B is pressed"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "9) The Fault light on the engine anti-ice switches indicates the valve:",
      options: [
        "a) Is closed.",
        "b) Position disagrees with switch position.",
        "c) Is open."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "10) What is the difference between the engine and wing anti-ice fault lights?",
      options: [
        "a) Both indicate valve in transit, or valve position disagrees with selected position. Wing light also could indicate low pressure.",
        "b) Both indicate low pressure, or valve position disagrees with selected position. Wing light might indicate valve in transit.",
        "c) Both indicate valve in transit, or low pressure. Wing light also could indicate valve position disagrees with selected position.",
        "d) Both indicate valve in transit, or overheat"
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "11) With reference to the PROBE/WINDOW HEAT pushbutton, which of the following is true?",
      options: [
        "a) The system should only be selected ON in icing conditions.",
        "b) When in AUTO mode, the windows are heated only when necessary.",
        "c) The system should only be selected ON after first engine start.",
        "d) Window heating comes on automatically after first engine start."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "12) If one engine anti-ice system fails, the second one takes over and provides anti-icing for both engines.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "13) What happens when either engine anti-ice is open?",
      options: [
        "a) Maximum N1 is limited, continuous ignition is provided, maximum idle RPM is increased.",
        "b) Maximum N1 is limited, continuous ignition is provided, minimum RPM is increased.",
        "c) Minimum N1 is limited, continuous ignition is provided, minimum idle RPM is increased."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "14) In the event of loss of electrical supply the engine anti-ice valve:",
      options: [
        "a) Opens when the engine is shut down.",
        "b) Closes when the engine is running.",
        "c) Opens when the engine is running.",
        "d) Open when the OAT is < 10 deg.C with the engine running"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "15) With the loss of electrical power the wing anti-ice valves:",
      options: [
        "a) Fail in their current position.",
        "b) Fail to the open position.",
        "c) Fail to the closed position."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "16) The drain masts are heated after first engine start.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "17) What is the speed limit to operate the windscreen wipers?",
      options: ["a) 185 kts.", "b) 200 kts.", "c) 230 kts.", "d) 250 kts."],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "18) In the event of an electrical power loss:",
      options: [
        "a) The engine anti-ice valves will open automatically, anti-icing is ensured.",
        "b) The engine anti-ice valves will close automatically, anti-icing is lost.",
        "c) The engine anti-ice valves will be controlled by the wing anti-ice controls.",
        "d) The engine anti-ice valves remain in the position they were before."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "19) At what power level does window heat operate while airborne?",
      options: [
        "a) High power while airborne.",
        "b) Shifts from low to high as window temperature requires.",
        "c) Low power above 18,000 ft.",
        "d) Low power above 25,000 ft."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "20) What happens to engine RPM when either engine anti-ice valve is open?",
      options: [
        "a) There is a fixed RPM increase.",
        "b) The N1 limit for that engine is automatically increased.",
        "c) The N1 limit for that engine is automatically reduced.",
        "d) There is a fixed RPM increase (3% of nominal N1)"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "21) Window heat operation begins:",
      options: [
        "a) Automatically after the first engine start.",
        "b) if the PROBE/WINDOW HEAT push button is selected ON by the crew prior to engine start.",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "22) Rain protection is provided by:",
      options: [
        "a) Warm bleed air blowing across the windshield.",
        "b) Rain repellent and Windshield wipers.",
        "c) Both are correct."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "23) Can the wing anti-ice be tested on the ground?",
      options: [
        "a) Yes, with valves only open for 30 seconds.",
        "b) Yes. Valves stay open till selected off.",
        "c) No."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "24) Anti-ice and de-icing protection is provided for:",
      options: [
        "a) The engine nacelle's and three outboard wing slats.",
        "b) The engine nacelle's, the horizontal stabilizer, and three outboard wing slats.",
        "c) The engine nacelle's, the horizontal stabilizer, the vertical stabilizer and three outboard wing slats."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "25) The probe heaters can be activated manually prior to engine start by placing the PROBE/WINDOW HEAT pushbutton.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "26) What happens to the heat at the drain masts when the aircraft is on the ground?",
      options: [
        "a) Nothing.",
        "b) The heat is reduced to prevent injury to ground personel.",
        "c) Some of them are automatically switched off (pitot, AOA)."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "27) The RAIN RPLNT (rain repellent) pushbutton is inhibited on the ground when the engines stopped.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "28) TAT probes are heated on the ground.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "29) The ON light illuminates on the wing anti-ice P/B :",
      options: [
        "a) When the anti-ice valves open",
        "b) When the P/B is set to ON",
        "c) When the fault light goes out",
        "d) When the anti-ice valves open and the fault light goes out."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "30) How is window heating regulated?",
      options: [
        "a) Manually by flight crew",
        "b) Window heat is not regulated!",
        "c) One Window Heat Computer (WHC) as master, the other as slave",
        "d) By two independent Window Heat Computers (WHC), one for each side"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "31) The Window Heat Computer provides two power levels for the windshield:",
      options: [
        "a) High power when above 20,000 ft, low power when below 20,000 ft",
        "b) High power when OAT < 10 deg.C, low power when OAT > 10 deg.C",
        "c) High power in flight, low power on the ground",
        "d) High power in icing conditions (flight only), low power in other conditions."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "32) The engine nacelle is anti-iced by:",
      options: [
        "a) Air bleed from the high pressure compressor",
        "b) Air bleed from low pressure compressor",
        "c) AC system and air bleed from low pressure compressor",
        "d) DC system and air bleed from low pressure compressor."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "33) When an engine anti-ice valve is open:",
      options: [
        "a) N1 limit is automatically reduced and the idle N1 is automatically increased",
        "b) N2 of the associated engine is automatically decreased",
        "c) N2 limit is automatically reduced and N1 limit is automatically increased",
        "d) There is no change in the N1 and N2 limits."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "34) In the event of a low air pressure:",
      options: [
        "a) The engine anti-ice valve opens automatically",
        "b) There is no effect on the anti-ice valve position",
        "c) The engine anti-ice valve must be manually closed",
        "d) The engine anti-ice valve closes automatically"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "35) How can you check that engine anti-ice has been selected on?",
      options: [
        "a) You can observe the ON light on the associated engine anti-ice P/B and the ENGINE ANTI-ICE message on the ECAM engine page",
        "b) You can observe the amber warning on the ECAM memo display and the amber anti-ice light on the overhead panel",
        "c) You can observe the ENGINE ANTI-ICE message on the ECAM STATUS page",
        "d) You can observe the blue ON light on the associated engine anti-ice P/B and the ENGINE ANTI-ICE memo on the E/WD"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "36) The electric windshield wipers are controlled:",
      options: [
        "a) Automatically when in heavy rain",
        "b) By two individual pushbuttons",
        "c) By one rotary selector for both windshields",
        "d) By two individual rotary selectors"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "37) The wipers can operate at different speeds:",
      options: [
        "a) Low speed and high speed",
        "b) Speed 1 and speed 2",
        "c) Low, medium and high speed.",
        "d) Speed is automatically adjusted depending on rain intensity."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "38) When the wiper is turned off:",
      options: [
        "a) The PARK position must be selected to stow the wiper",
        "b) It continues to run for approximately 6 seconds",
        "c) The wiper may stop in the pilots view",
        "d) The wiper stops out of view"
      ],
      correctOptionIndex: 3,
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
                    "Ice & Rain (${_currentIndex + 1}/$totalQuestions)",
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

                      // === تم التعديل هنا لضمان التباين وعدم اختفاء النص ===
                      Color cardColor;
                      Color borderColor;
                      Color textColor;

                      if (_isSubmitted) {
                        if (isCorrect) {
                          cardColor = Colors.green.withOpacity(0.25);
                          borderColor = Colors.green;
                          textColor = Colors.white;
                        } else if (isSelected && !isCorrect) {
                          cardColor = Colors.red.withOpacity(0.25);
                          borderColor = Colors.red;
                          textColor = Colors.white;
                        } else {
                          // الإجابات غير المختارة بعد التسليم
                          cardColor = const Color(0xFF2D2D44);
                          borderColor = Colors.transparent;
                          textColor = Colors.white54;
                        }
                      } else {
                        if (isSelected) {
                          // الإجابة المختارة
                          cardColor = const Color(0xFF3B3B58);
                          borderColor = Colors.blueAccent;
                          textColor = Colors.white;
                        } else {
                          // الإجابة قبل الاختيار (تم تثبيت الخلفية داكنة والنص أبيض)
                          cardColor = const Color(0xFF2D2D44);
                          borderColor = Colors.white24;
                          textColor = Colors.white;
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
                                    color:
                                        textColor, // تم ربط لون النص بالمتغير الجديد
                                    fontSize: 15,
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
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
