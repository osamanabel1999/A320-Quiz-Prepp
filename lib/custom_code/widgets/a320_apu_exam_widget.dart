// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320ApuExamWidget extends StatefulWidget {
  const A320ApuExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320ApuExamWidgetState createState() => _A320ApuExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320ApuExamWidgetState extends State<A320ApuExamWidget> {
  // --- 39 APU Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) To start the APU the:",
        [
          "BAT 1 and 2 push buttons must be selected to ON.",
          "BAT 1 and 2 push buttons do not need to be selected ON if external power is available.",
          "Both are correct."
        ],
        2),
    Question(
        "2) The Electronic Control Box (ECB) is primarily a full authority digital electronic controller that performs the APU system logic for all modes of APU operation such as:",
        [
          "Sequence and monitoring of start.",
          "Speed and temperature monitoring.",
          "Monitoring of bleed air and shut down.",
          "All of the above."
        ],
        3),
    Question(
        "3) When the APU Master Switch is released, a normal APU shutdown occurs:",
        [
          "Without delay in all cases.",
          "Without a delay, in all cases.",
          "With a delay if the bleed air was in use."
        ],
        2),
    Question(
        "4) When selected on, the APU START push button, will:",
        [
          "Connect the APU generator to the aircraft electrical system.",
          "Start the APU if the APU MASTER SW was previously selected ON.",
          "Open the air intake flap and supply fuel pressure."
        ],
        1),
    Question(
        "5) The APU has an integral independent lubrication system for lubrication and cooling.",
        ["True.", "False."],
        0),
    Question("6) The ECB (Electronic Control Box) controls the fuel flow.",
        ["True.", "False."], 0),
    Question(
        "7) When the APU MASTER SW is selected ON:",
        [
          "The APU computer automatically completes a self-test, opens the air intake flap and supplies fuel pressure.",
          "The APU computer automatically starts the APU.",
          "Connects the APU generator to the aircraft electrical system.",
          "The APU door opens."
        ],
        0),
    Question(
        "8) The APU MASTER SW FAULT light will illuminate:",
        [
          "When APU low oil pressure is detected.",
          "When an automatic shutdown of the APU occurs.",
          "For an APU overheat or APU fire.",
          "If the batteries are selected OFF while the APU is operating."
        ],
        1),
    Question(
        "9) The APU may be started up to what altitude?",
        [
          "The APU can be started at any altitude using normal aircraft electrical power.",
          "The APU can be started up to 35,000 feet using only the aircraft batteries.",
          "The APU can be started up to 30,000 feet using only the aircraft batteries.",
          "The APU can be started up to 25,000 feet using only the aircraft batteries."
        ],
        0),
    Question(
        "10) The APU system page will appear on the ECAM:",
        [
          "When selected by the crew.",
          "Automatically whenever the APU is started and AC power is available.",
          "Both are correct."
        ],
        2),
    Question(
        "11) If APU bleed was used, after a manual shut down sequence, the APU:",
        [
          "Stops immediately",
          "Keeps running for 4 minutes",
          "Keeps running for 2 minutes",
          "Keeps running for 60 seconds"
        ],
        3),
    Question(
        "12) With the engines off, if the AVAIL light is illuminated on both the APU START push button and the EXT PWR push button, what is the source of electrical power for the aircraft busses?",
        [
          "It is not possible to determine without checking the ECAM.",
          "The aircraft batteries",
          "The APU.",
          "External power."
        ],
        2),
    Question(
        "13) BAT 1 and 2 push buttons do not need to be selected ON if external power is available.",
        [
          "It is normally left in the lights out position.",
          "When selected OFF, the APU generator is de-energized.",
          "Both are correct."
        ],
        2),
    Question(
        "14) What is the maximum altitude at which the APU may be started using the batteries only?",
        ["15, 000 ft", "20, 000 ft", "25, 000 ft", "39, 000 ft"],
        2),
    Question(
        "15) When the APU is running, the APU fuel pump:",
        [
          "Runs when tank pumps pressure is not sufficient.",
          "Runs all time",
          "Runs only in flight.",
          "Runs when the APU fuel pump is selected on."
        ],
        0),
    Question(
        "16) The APU BLEED valve is automatically closed above _____ feet descending by the ECB.",
        ["25,000 feet", "26,000 feet.", "28,000 feet", "29,000 feet."],
        0),
    Question(
        "17) With nobody in the cockpit, if you have an APU FIRE, which statement is correct?",
        [
          "On the ground, an APU EMER shut down will occur and the APU fire bottle will be discharged automatically.",
          "On the ground, you have to perform the ECAM actions to shut down the APU and extinguish the fire from the cockpit.",
          "On the ground an APU AUTO shut down will occur but you have to discharge the APU fire bottle manually.",
          "In the air, an APU EMER shut down will occur and the APU fire bottle will be discharged automatically."
        ],
        0),
    Question(
        "18) The basic element of the APU is a single shaft gas turbine which delivers _____ power for driving the accessory gearbox (electrical generator) and produces bleed air (engine starting and pneumatic supply).",
        [
          "2nd stage compressor",
          "3rd stage turbine",
          "2nd stage turbine.",
          "Mechanical shaft"
        ],
        3),
    Question(
        "19) Fire on ground or in flight will cause the APU MASTER SW pushbutton FAULT light to come on.",
        ["True.", "False."],
        1),
    Question(
        "20) With battery power, what would an APU fire test look like?",
        [
          "APU FIRE pushbutton illuminated.",
          "SQUIB and DISCH lights illuminated",
          "Both are correct."
        ],
        2),
    Question(
        "21) The starter engages if the air intake is closed and the MASTER SW and the START pushbuttons are ON.",
        ["True.", "False."],
        1),
    Question(
        "22) A FLAP OPEN indication is displayed in amber when the APU air inlet flaps is fully open",
        ["True", "False"],
        1),
    Question(
        "23) The APU may obtain power for starting from:",
        [
          "Ground services.",
          "Normal aircraft supply.",
          "The aircraft's batteries or in combination with the external power.",
          "All of the above."
        ],
        3),
    Question("24) The APU cannot be shut down from outside the aircraft.",
        ["True.", "False."], 1),
    Question(
        "25) What are some of the causes for an APU automatic shutdown?",
        [
          "Fire (on ground only), EGT overtemperature, No acceleration, low oil pressure.",
          "Fire (on ground only), EGT overtemperature, Underspeed, Overspeed, low oil pressure, high oil pressure",
          "Fire (on ground only), EGT overtemperature, Reverse flow, Overspeed, low oil pressure, high oil pressure",
          "Fire (on ground only), underspeed, overspeed, EGT overtemperature, Reverse flow, Low oil pressure, DC power loss."
        ],
        3),
    Question("26) Maximum altitude for APU bleed operation is:",
        ["15, 000 ft", "18, 000 ft", "20, 000 ft", "22, 000 ft"], 2),
    Question("27) Can the APU FIRE test be performed with the APU running?",
        ["Yes", "No"], 0),
    Question(
        "28) The APU is supplied from the:",
        [
          "Left fuel feed line.",
          "Right fuel feed line.",
          "Left or right fuel line"
        ],
        0),
    Question(
        "29) On ground, the No Break Power Transfer function is inhibited in case of APU shutdown generated by which of the following conditions?",
        [
          "Automatic APU shut down triggered by the ECB.",
          "APU shut down from the REFUEL/DEFUEL panel or from the APU FIRE pushbutton.",
          "APU shut down from emergency control provided on the external power panel.",
          "All of the above."
        ],
        3),
    Question(
        "30) Can the APU be used with wing anti-ice on?",
        [
          "No.",
          "Yes, but only for electrical power. The APU bleed valve should not be opened while using wing anti-ice.",
          "Yes, except during approach and go-around.",
          "Yes, but the altitude of utilization is limited to 15, 000 ft."
        ],
        1),
    Question(
        "31) On ground, can you start the APU using the aircraft batteries only?",
        ["Yes", "No"],
        0),
    Question(
        "32) When starting the APU, the FUEL LO PR indication appears amber when an APU fuel low pressure is detected.",
        ["True", "False"],
        1),
    Question(
        "33) The LOW OIL LEVEL advisory pulses in _____ if the APU oil quantity approaches its minimum value.",
        ["Amber", "White", "Red", "Green"],
        3),
    Question(
        "34) If an APU start is initiated on battery power only, is fire protection available?",
        ["Yes", "No"],
        0),
    Question(
        "35) A319/320/321. With the APU supplying bleed air what will be the pack flow if the PACK FLOW selector is LOW?",
        [
          "A319/320 – HIGH and A321 - NORMAL",
          "A319/320 – NORMAL and A321 - HIGH",
          "NORMAL in all cases",
          "HIGH in all cases."
        ],
        0),
    Question("36) What is the maximum operating altitude of the APU?",
        ["25,000 feet", "30,000 feet", "35,000 feet", "39,000 feet"], 3),
    Question("37) How many APU fire extinguisher bottles are installed?",
        ["One", "Two", "One AC operated and one DC operated"], 0),
    Question(
        "38) Will the APU bleed valve close automatically during climb? Will it reopen during descent?",
        ["Yes", "No"],
        1),
    Question(
        "39) With battery power only, what would an APU fire test look like?",
        [
          "APU FIRE pb illuminated and SQUIB + DISCH lights illuminated",
          "APU FIRE pb illuminated",
          "SQUIB + DISCH lights illuminated"
        ],
        0)
  ];

  // --- State Variables ---
  String mode = "MENU"; // MENU, STUDY, EXAM, RESULTS, REVIEW_WRONG
  int currentIndex = 0;

  // Maps to track selected answers based on the mode
  Map<int, int> examSelectedAnswers = {};
  Map<int, Set<int>> studySelectedAnswers = {};
  Set<int> markedForReview = {};

  // Exam Mode Specific
  int examDurationSeconds = 60 * 60; // 60 minutes
  int timeLeft = 60 * 60;
  Timer? _timer;

  List<Question> activeQuestions = [];
  List<int> originalQuestionIndices = [];

  @override
  void initState() {
    super.initState();
    activeQuestions = List.from(allQuestions);
    originalQuestionIndices = List.generate(allQuestions.length, (i) => i);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startStudyMode() {
    setState(() {
      mode = "STUDY";
      currentIndex = 0;
      studySelectedAnswers.clear();
      activeQuestions = List.from(allQuestions);
      originalQuestionIndices = List.generate(allQuestions.length, (i) => i);
    });
  }

  void startExamMode() {
    setState(() {
      mode = "EXAM";
      currentIndex = 0;
      examSelectedAnswers.clear();
      markedForReview.clear();
      timeLeft = examDurationSeconds;
      activeQuestions = List.from(allQuestions);
      originalQuestionIndices = List.generate(allQuestions.length, (i) => i);
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          finishExam();
        }
      });
    });
  }

  void startReviewWrongMode() {
    List<Question> wrongQuestions = [];
    List<int> wrongIndices = [];
    for (int i = 0; i < allQuestions.length; i++) {
      if (examSelectedAnswers[i] != allQuestions[i].correctIndex) {
        wrongQuestions.add(allQuestions[i]);
        wrongIndices.add(i);
      }
    }

    if (wrongQuestions.isEmpty) return;

    setState(() {
      mode = "REVIEW_WRONG";
      activeQuestions = wrongQuestions;
      originalQuestionIndices = wrongIndices;
      currentIndex = 0;
      studySelectedAnswers.clear();
    });
  }

  void finishExam() {
    _timer?.cancel();
    setState(() {
      mode = "RESULTS";
    });
  }

  String get timerText {
    int minutes = timeLeft ~/ 60;
    int seconds = timeLeft % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  // --- UI Builders ---

  Widget buildMenu() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flight_takeoff_rounded,
                size: 90, color: Colors.blueAccent.withOpacity(0.9)),
            const SizedBox(height: 20),
            const Text(
              "AIRBUS A320",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              "APU", // Updated to APU
              style: TextStyle(
                  color: Colors.blueGrey[200],
                  fontSize: 22,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),

            // Premium Study Button
            GestureDetector(
              onTap: startStudyMode,
              child: Container(
                width: 260,
                height: 65,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)]),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF8E2DE2).withOpacity(0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 5))
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Study Mode",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Premium Exam Button
            GestureDetector(
              onTap: startExamMode,
              child: Container(
                width: 260,
                height: 65,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFFF2994A), Color(0xFFF2C94C)]),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFFF2994A).withOpacity(0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 5))
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Exam Mode",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildResults() {
    int correct = 0;
    int wrong = 0;
    int skipped = 0;

    for (int i = 0; i < allQuestions.length; i++) {
      if (!examSelectedAnswers.containsKey(i)) {
        skipped++;
      } else if (examSelectedAnswers[i] == allQuestions[i].correctIndex) {
        correct++;
      } else {
        wrong++;
      }
    }

    double percentage = (correct / allQuestions.length) * 100;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF141E30), Color(0xFF243B55)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Exam Finished!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              const SizedBox(height: 40),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 160,
                    height: 160,
                    child: CircularProgressIndicator(
                      value: correct / allQuestions.length,
                      strokeWidth: 16,
                      backgroundColor: Colors.white.withOpacity(0.1),
                      color: percentage >= 75
                          ? Colors.greenAccent
                          : (percentage >= 50
                              ? Colors.orangeAccent
                              : Colors.redAccent),
                    ),
                  ),
                  Text(
                    "${percentage.toStringAsFixed(1)}%",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              _buildStatRow("Correct Answers", correct, Colors.greenAccent),
              _buildStatRow("Wrong Answers", wrong, Colors.redAccent),
              _buildStatRow("Skipped", skipped, Colors.grey),
              const SizedBox(height: 40),
              if (wrong > 0 || skipped > 0)
                ElevatedButton.icon(
                  onPressed: startReviewWrongMode,
                  icon: const Icon(Icons.replay, color: Colors.white),
                  label: const Text("Review Wrong/Skipped",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[700],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => setState(() => mode = "MENU"),
                child: const Text("Back to Main Menu",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, int value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: Colors.white70, fontSize: 18)),
          Text(value.toString(),
              style: TextStyle(
                  color: color, fontSize: 22, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  void showOverviewGrid() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1E1E1E),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10))),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: activeQuestions.length,
                  itemBuilder: (context, index) {
                    int originalIndex = originalQuestionIndices[index];
                    bool isAnswered =
                        examSelectedAnswers.containsKey(originalIndex);
                    bool isMarked = markedForReview.contains(originalIndex);

                    Color bgColor = const Color(0xFF2C3E50);
                    if (isAnswered) bgColor = Colors.green[600]!;
                    if (isMarked) bgColor = Colors.orange[600]!;

                    return GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: currentIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 2),
                        ),
                        child: Center(
                          child: Text("${index + 1}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildQuestionArea() {
    Question currentQ = activeQuestions[currentIndex];
    int realIndex = originalQuestionIndices[currentIndex];
    bool isStudy = mode == "STUDY" || mode == "REVIEW_WRONG";
    bool canGoNextInStudy = isStudy &&
        (studySelectedAnswers[realIndex]?.contains(currentQ.correctIndex) ??
            false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // --- Premium Header Banner (Intersecting Colors) ---
        Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5A7E9C), // Lighter side
                Color(0xFF5A7E9C),
                Color(0xFF3B5670), // Darker side intersecting
                Color(0xFF3B5670),
              ],
              stops: [0.0, 0.45, 0.45, 1.0], // Sharp diagonal cut
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 20,
                child: Text(
                  "AIRBUS A320",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Text(
                  "APU", // Updated to APU
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Row(
                  children: [
                    const Icon(Icons.my_library_books,
                        color: Colors.white70, size: 16),
                    const SizedBox(width: 5),
                    Text(
                      "Question ${currentIndex + 1} of ${activeQuestions.length}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              if (mode == "EXAM")
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: timeLeft < 300
                          ? Colors.redAccent.withOpacity(0.8)
                          : Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      timerText,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (mode == "EXAM")
                Positioned(
                  bottom: 5,
                  right: 15,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (markedForReview.contains(realIndex)) {
                          markedForReview.remove(realIndex);
                        } else {
                          markedForReview.add(realIndex);
                        }
                      });
                    },
                    icon: Icon(
                      markedForReview.contains(realIndex)
                          ? Icons.flag
                          : Icons.outlined_flag,
                      color: markedForReview.contains(realIndex)
                          ? Colors.orangeAccent
                          : Colors.white70,
                      size: 28,
                    ),
                  ),
                ),
            ],
          ),
        ),

        // --- Question Text & Options ---
        Expanded(
          child: Container(
            color: const Color(0xFF121212),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentQ.qText,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 30),

                  // Options List
                  ...List.generate(currentQ.options.length, (optIndex) {
                    bool isCorrectOpt = currentQ.correctIndex == optIndex;

                    // Logic for Exam
                    bool isSelectedInExam = mode == "EXAM" &&
                        examSelectedAnswers[realIndex] == optIndex;

                    // Logic for Study
                    bool isClickedInStudy = isStudy &&
                        (studySelectedAnswers[realIndex]?.contains(optIndex) ??
                            false);

                    Color tileColor = const Color(0xFF222222);
                    Color borderColor = Colors.transparent;
                    Color textColor = Colors.grey[300]!;
                    IconData iconData = Icons.radio_button_unchecked;
                    Color iconColor = Colors.grey[600]!;

                    if (mode == "EXAM") {
                      if (isSelectedInExam) {
                        tileColor = Colors.blueAccent.withOpacity(0.15);
                        borderColor = Colors.blueAccent;
                        textColor = Colors.white;
                        iconData = Icons.radio_button_checked;
                        iconColor = Colors.blueAccent;
                      }
                    } else if (isStudy) {
                      if (isClickedInStudy) {
                        if (isCorrectOpt) {
                          tileColor = Colors.green.withOpacity(0.2);
                          borderColor = Colors.green;
                          textColor = Colors.white;
                          iconData = Icons.check_circle;
                          iconColor = Colors.green;
                        } else {
                          tileColor = Colors.red.withOpacity(0.2);
                          borderColor = Colors.red;
                          iconData = Icons.cancel;
                          iconColor = Colors.red;
                        }
                      } else {
                        if (studySelectedAnswers[realIndex]
                                ?.contains(currentQ.correctIndex) ??
                            false) {
                          textColor = Colors.grey[600]!;
                        }
                      }
                    }

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (mode == "EXAM") {
                            examSelectedAnswers[realIndex] = optIndex;
                          } else if (isStudy) {
                            studySelectedAnswers[realIndex] ??= {};
                            if (!studySelectedAnswers[realIndex]!
                                .contains(currentQ.correctIndex)) {
                              studySelectedAnswers[realIndex]!.add(optIndex);
                            }
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: tileColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: borderColor, width: 2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 3))
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(iconData, color: iconColor, size: 24),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                currentQ.options[optIndex],
                                style:
                                    TextStyle(color: textColor, fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),

        // --- Premium Bottom Navigation (With Next/Previous Text) ---
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, -5))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Previous Button Area
              Opacity(
                opacity: currentIndex > 0 ? 1.0 : 0.3,
                child: GestureDetector(
                  onTap: currentIndex > 0
                      ? () => setState(() => currentIndex--)
                      : null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[800], shape: BoxShape.circle),
                        child: const Icon(Icons.arrow_back_ios_new,
                            color: Colors.white, size: 20),
                      ),
                      const SizedBox(height: 5),
                      const Text("Previous",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),

              // Middle Button (Overview or Submit)
              if (mode == "EXAM")
                ElevatedButton.icon(
                  onPressed: showOverviewGrid,
                  icon: const Icon(Icons.grid_view, color: Colors.white),
                  label: const Text("Overview",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B5670),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),

              // Next Button Area
              if (currentIndex < activeQuestions.length - 1)
                Opacity(
                  opacity: (mode == "EXAM" || canGoNextInStudy) ? 1.0 : 0.3,
                  child: GestureDetector(
                    onTap: (mode == "EXAM" || canGoNextInStudy)
                        ? () => setState(() => currentIndex++)
                        : null,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent, shape: BoxShape.circle),
                          child: const Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 20),
                        ),
                        const SizedBox(height: 5),
                        const Text("Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              else
                ElevatedButton(
                  onPressed: finishExam,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text("Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: Colors.black, // General safe area background
      child: SafeArea(
        child: _buildCurrentScreen(),
      ),
    );
  }

  Widget _buildCurrentScreen() {
    switch (mode) {
      case "MENU":
        return buildMenu();
      case "RESULTS":
        return buildResults();
      case "STUDY":
      case "EXAM":
      case "REVIEW_WRONG":
        return buildQuestionArea();
      default:
        return const Center(
            child: Text("Error loading screen",
                style: TextStyle(color: Colors.red)));
    }
  }
}
