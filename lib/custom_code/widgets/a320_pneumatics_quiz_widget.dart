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

class A320PneumaticsQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const A320PneumaticsQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<A320PneumaticsQuizWidget> createState() =>
      _A320PneumaticsQuizWidgetState();
}

class _A320PneumaticsQuizWidgetState extends State<A320PneumaticsQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText: "1) Engine bleed air temperature is controlled by:",
      options: [
        "a) Engine oil.",
        "b) A pre-cooler that uses fan air.",
        "c) Conditioned air from the mixing unit."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "2) If BMC1 fails BMC2 takes over all monitoring functions except:",
      options: [
        "a) Engine 1 and APU leak detection.",
        "b) Overheat detection.",
        "c) Automatic crossbleed valve control."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "3) Bleed air normally comes from the ______ of the engine.",
      options: [
        "a) High pressure stage.",
        "b) Intermediate stage.",
        "c) Low pressure stage."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "4) In flight if the air pressure is insufficient even with the HP valve open:",
      options: [
        "a) The engine spools up automatically.",
        "b) Engine power has to be increased by the pilot.",
        "c) Push the High Pressure P/B on the ovhd panel."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "5) The pressure regulating and shutoff valve will close if ______ pressure is ______ or ______ airflow occurs",
      options: [
        "a) Downstream / low / reverse",
        "b) Downstream / High / reverse",
        "c) Upstream / low / reverse"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "6) The crossbleed valve has two electric motors; one for the automatic mode and one for the manual mode:",
      options: ["a) True", "b) False"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "7) The overheat detection system uses a single loop for:",
      options: [
        "a) The pylons and APU.",
        "b) The wings and pylons.",
        "c) The wings and fuselage."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "8) The APU BLEED FAULT light illuminates amber for an APU:",
      options: ["a) Overheat.", "b) Malfunction.", "c) Bleed leak."],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "9) The AUTO position of the X BLEED selector opens the crossbleed if:",
      options: [
        "a) An engine bleed valve is open.",
        "b) The APU bleed valve is open.",
        "c) When engine start is selected."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "10) Recirculation fans in the air conditioning system direct filtered cabin air to which area?",
      options: [
        "a) The pneumatic duct; upstream of the packs.",
        "b) The avionics compartment.",
        "c) The Mixing unit."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "11) Temperature regulation for the A320 is controlled by:",
      options: [
        "a) One zone controller and two pack controllers.",
        "b) Two pack controllers and the BMC's.",
        "c) The BMC's."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "12) Should both channels fail in a zone controller:",
      options: [
        "a) Temperature optimization is still available for that zone from another controller.",
        "b) Temperature optimization and the backup mode are lost.",
        "c) The pack is not affected."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "13) The lavatory/galley extract fan operates:",
      options: [
        "a) Only on the ground.",
        "b) Only in flight.",
        "c) Continuously when electrical power is available."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "14) If bleed air is being supplied by the APU or if one pack fails; pack flow will go to what rate?",
      options: ["a) Low.", "b) Medium.", "c) High."],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "15) What happens to the outflow valve when the RAM AIR switch is selected ON?",
      options: [
        "a) The outflow valve opens immediately.",
        "b) The outflow valve opens if cabin differential pressure is less than 1 psi.",
        "c) Normal outflow valve control is maintained."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "16) When either the BLOWER or EXTRACT switches are in OVRD; air from the air conditioning system is added to ventilation air.",
      options: ["a) True.", "b) False"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "17) How many motors are available for the outflow valve?",
      options: ["a) 1", "b) 2", "c) 3"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "18) Transfer between the two cabin pressure controllers is:",
      options: [
        "a) Accomplished with a switch overhead.",
        "b) Automatic after landing or in case the operating controller fails.",
        "c) Automatically at each takeoff."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "19) The maximum cabin descent rate is limited in automatic to:",
      options: ["a) 300 ft/min.", "b) 750 ft/min.", "c) 1000 ft/min."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "20) The third motor (manual) in the pressurization system is activated:",
      options: [
        "a) Automatically if both automatic motors fail.",
        "b) In sequence after each landing.",
        "c) When the CABIN PRESS MODE SEL switch is positioned to MAN."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "21) When the cabin vertical speed exceeds ______ fpm; the vertical speed display on ECAM ______.",
      options: [
        "a) 800 / flashes green",
        "b) 2800 / flashes green",
        "c) 1800 / flashes Green"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "22) The pneumatic system supplies high pressure air for:",
      options: [
        "a) Air Conditioning, water pressurization and engine starting",
        "b) Wing anti-icing.",
        "c) Hydraulic reservoir pressurization.",
        "d) All of the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "23) High pressure air has ______ sources.",
      options: ["a) 2", "b) 3", "c) 4", "d) 5"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "24) With both engines operating, an ENG BLEED pb FAULT light will illuminate when:",
      options: [
        "a) The valve position differs from that of the push button.",
        "b) The X BLEED selector is selected to SHUT.",
        "c) The X BLEED selector is selected to OPEN.",
        "d) The X BLEED selector is selected to OPEN or to SHUT."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "25) Air bleed from the engines is:",
      options: [
        "a) Not cooled prior to being used by the systems.",
        "b) Cooled in a heat exchanger by cooling air bleed from Fan section.",
        "c) Cooled using ambient air.",
        "d) Only cooled in air conditioning part."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "26) If a Bleed Monitoring Computer (BMC) fails:",
      options: [
        "a) All systems associated with the failed BMC also fail.",
        "b) The associated bleed valves close.",
        "c) The remaining BMC will automatically assume most of the failed BMC's functions."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "27) A leak detection system detects any overheating in the vicinity of hot air ducts.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "28) When engine and wing anti-ice are in use, and a BMC detects a bleed leak:",
      options: [
        "a) Only the engine anti-ice on the associated side will be lost.",
        "b) The wing and engine anti-ice on the associated side will be lost.",
        "c) The wing anti-ice on the associated side will be lost, and the engine anti-ice on the associated side will continue to function."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "29) Each bleed valve is electrically operated and controlled pneumatically by its associated BMC.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "30) If a BMC detects a bleed leak:",
      options: [
        "a) The crew must isolate the affected leak.",
        "b) All valves that could supply pneumatic air to the area of the bleed leak will automatically close.",
        "c) All pneumatic valves close automatically."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "31) If one BMC fails, the adjacent BMC takes over the monitoring of the bleed system to issue the following ECAM warnings if necessary:",
      options: [
        "a) Overpressure",
        "b) Overtemperature",
        "c) Wing leak",
        "d) All of the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "32) Bleed leak protection for the APU pneumatic duct is provided by:",
      options: [
        "a) Detection loops associated with BMC #1.",
        "b) Detection loops associated with BMC #2.",
        "c) The APU BMC.",
        "d) All of the above."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "33) With the loss of pneumatic system pressure, the engine bleed valve will:",
      options: [
        "a) Remain in its current position.",
        "b) Assume the mid position.",
        "c) Assume the open position.",
        "d) Assume the closed position."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "34) Pneumatic system operation is controlled and monitored by:",
      options: [
        "a) One bleed monitoring computer.",
        "b) Two bleed valve computers.",
        "c) Two bleed monitoring computers."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "35) ECAM BLEED page: when is the GND symbol displayed?",
      options: [
        "a) Whenever the aircraft is on the ground.",
        "b) All the time.",
        "c) Only when a ground air supply is connected."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "36) In automatic mode, the crossbleed valve opens when the system is using APU bleed air.",
      options: [
        "a) It closes if the system detects an air leak (except during engine start).",
        "b) It closes if the system detects an air leak (except in flight).",
        "c) It closes automatically if the system detects an air leak."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "37) What happens when pressure and temperature are not sufficient to supply the corresponding engine bleed valve?",
      options: [
        "a) HP valve closes.",
        "b) HP valve opens, IP stage closed.",
        "c) HP valve opens, IP stage remains in the same configuration."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "38) When additional pneumatic air is required for anti-ice, engine starting, or air conditioning:",
      options: [
        "a) Additional pneumatic air will be requested by the BMC to the FADECs or the APU.",
        "b) The crew must observe minimum N1 limits.",
        "c) Both are correct."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "39) When selected, APU bleed air:",
      options: [
        "a) Will supply bleed air only if the ENG BLEED pb's are selected OFF.",
        "b) Has priority over engine bleed air.",
        "c) Will supply bleed air only if the X BLEED selector is selected OPEN.",
        "d) Does not have priority over engine bleed air."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "40) With the APU running, the APU BLEED push button selected ON and the X BLEED selector to AUTO, the APU will:",
      options: [
        "a) Only supply bleed air to the left side.",
        "b) Supply pneumatic air to both sides of the aircraft because the pneumatic crossbleed valve automatically opens.",
        "c) Will supply bleed air only to the left side unless the X BLEED selector is selected OPEN.",
        "d) Only supply bleed air to the right side."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "41) Which source controls the crossbleed valve?",
      options: ["a) Pneumatic.", "b) Electric."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "42) The crew may directly control the following bleed valves:",
      options: [
        "a) Engine, engine high pressure, APU.",
        "b) Engine, intermediate pressure, APU.",
        "c) Engine, APU, crossbleed.",
        "d) Crossbleed."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "43) APU bleed air supplies the pneumatic system if the APU speed is above ______:",
      options: ["a) 80%", "b) 85%", "c) 92%", "d) 95%"],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "44) A check valve near the crossbleed duct protects the APU when bleed air comes from another source:",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "45) Following an ENGINE 1 BLEED FAULT, why can you only use one pack if Wing Anti Ice (WAI) is on?",
      options: [
        "a) Only one user can be supplied via the X BLEED duct.",
        "b) Only ENG BLEED system cannot supply 2 packs and WAI.",
        "c) If you use WAI, the X BLEED valve is automatically closed. Therefore, pack 1 will no longer be supplied.",
        "d) One engine bleed system can either supply both packs or one pack plus WAI."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "46) Temperature regulation is achieved by the precooler which regulates and limits the temperature at:",
      options: ["a) 150°C", "b) 85°C", "c) 60°C", "d) 200°C"],
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
                    "Pneumatics (${_currentIndex + 1}/$totalQuestions)",
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
