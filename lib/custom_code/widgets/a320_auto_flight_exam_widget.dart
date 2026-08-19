// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320AutoFlightExamWidget extends StatefulWidget {
  const A320AutoFlightExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320AutoFlightExamWidgetState createState() =>
      _A320AutoFlightExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320AutoFlightExamWidgetState extends State<A320AutoFlightExamWidget> {
  // --- 42 Automatic Flight Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The Flight Management part of the FMGC includes the following elements:",
        [
          "Navigation, flight planning and A/THR commands.",
          "Performance optimization, A/THR and AP commands",
          "Navigation, flight planning, performance optimization and flight predictions",
          "AP and FD commands and flight envelope computation."
        ],
        2),
    Question(
        "2) How can the present position of the aircraft be initialized?",
        [
          "Present position can be entered through the ADIRS CDU.",
          "Present position can be entered on the INIT page of the MCDU.",
          "Both are correct."
        ],
        2),
    Question(
        "3) What are the correct positions for the PFD and ND?",
        [
          "The PFD should be outboard and the ND should be inboard.",
          "The PFD should be inboard and the ND should be outboard.",
          "The PFD should be to the left of the ND for both seat positions.",
          "The PFD should be inboard and the ND should be inboard."
        ],
        0),
    Question(
        "4) What information is supplied by the IR's and displayed on the PFD?",
        [
          "Heading, attitude, and vertical speed.",
          "Heading, attitude, and vertical speed",
          "Airspeed, altitude, and backup vertical speed.",
          "Heading, attitude, and altitude."
        ],
        1),
    Question(
        "5) How long does a normal IR alignment take?",
        [
          "Approximately 3 minutes.",
          "Approximately 6 minutes.",
          "Approximately 10 minutes.",
          "Approximately 13 minutes."
        ],
        2),
    Question(
        "6) The IR ALIGN light is extinguished. What does this mean?",
        [
          "Alignment has been completed.",
          "Air data output has been disconnected.",
          "The respective IR is operating normally."
        ],
        0),
    Question(
        "7) An amber flashing IR FAULT light indicates that:",
        [
          "Present position needs to be reentered.",
          "Attitude and heading information may be recovered in ATT mode.",
          "A complete failure of the respective IR has occurred."
        ],
        1),
    Question(
        "8) What action should be taken if IR #2 is lost:",
        [
          "Move the EIS DMC rotary selector knob to F/O 3.",
          "Move the ATT HDG rotary selector knob to CAPT 3.",
          "Move the ATT HDG rotary selector knob to F/O 3.",
          "Move the ATT HDG rotary selector knob to F/O 1."
        ],
        2),
    Question("9) A/THR in white means that A/THR is:",
        ["Disconnected.", "Armed.", "Active"], 2),
    Question(
        "10) The white IR ALIGN light is flashing. What does this mean?",
        [
          "No present position has been entered and ten minutes has elapsed since the IR was selected ON.",
          "No present position has been entered and ten minutes has elapsed since the IR was selected ON. An alignment fault may exist.",
          "Attitude and heading information have been lost. An alignment fault may exist."
        ],
        1),
    Question(
        "11) What message is displayed if the database effective date does not match the clock date?",
        [
          "Check Data Base Cycle.",
          "Check Data Base Date.",
          "Check Effective Date.",
          "Check the changeover date."
        ],
        0),
    Question(
        "12) Placing one of the ADR push buttons OFF will accomplish what?",
        [
          "The OFF light will illuminate and air data output will disconnect.",
          "The respective ADIRU will become deenergized.",
          "Both AD and IR information will be disconnected.",
          "All of the above."
        ],
        0),
    Question(
        "13) While in-flight, operating in Normal law, in the Alpha prot range:",
        [
          "The flight controls revert to direct law.",
          "The flight controls remain in the load factor demand law.",
          "The sidestick controller and flight controls revert to the AOA mode, and side stick deflection is proportional to AOA."
        ],
        2),
    Question(
        "14) What is the difference between -FD2 and 2FD- on the FMA?",
        [
          "1 inop, 2 engaged. 2 engaged, 1 off.",
          "1 off, 2 engaged. 2 engaged, 1 inop."
        ],
        1),
    Question(
        "15) What does the LOW ACCURACY message mean?",
        [
          "FMGC 1 & 2 position difference exceeds limits.",
          "FMGC position & actual radio position difference exceeds limits.",
          "FMCG position & IR position difference exceeds limits."
        ],
        1),
    Question(
        "16) The thrust delivered by A/THR is already at MAX CLB thrust. Is it possible to obtain some additional thrust?",
        [
          "Yes, by setting a higher speed target.",
          "Yes, by moving the thrust levers forward from the CL detent.",
          "No, because the A/THR already delivers the maximum available thrust."
        ],
        1),
    Question(
        "17) What information is supplied by the Air Data Modules (ADMs) and displayed on the PFD's?",
        [
          "Heading, attitude, and vertical speed.",
          "Airspeed, altitude, and backup vertical speed.",
          "Airspeed, vertical speed, and altitude.",
          "Airspeed, attitude, altitude, and vertical speed."
        ],
        1),
    Question(
        "18) Can the autopilot be used for a single engine approach and autoland?",
        ["Yes.", "No."],
        0),
    Question(
        "19) During the takeoff phase:",
        [
          "SRS mode will provide guidance to maintain V2+10 kts (minimum) as a speed reference",
          "SRS mode is available up to 1500 ft.",
          "SRS mode will not engage if TOGA is selected."
        ],
        0),
    Question(
        "20) If the IR mode rotary selector is selected OFF:",
        [
          "AD and IR information will be disconnected.",
          "AD information will be disconnected.",
          "IR information will be disconnected.",
          "The ADIRU is not energized: AD and IR information is lost."
        ],
        3),
    Question(
        "21) Which of the following statements is always true when operating in alternate law?",
        [
          "Extending the landing gear will place the aircraft in Direct law.",
          "Extending the landing gear will place the aircraft in Mechanical backup law.",
          "Extending the landing gear will place the aircraft in Mechanical backup law."
        ],
        0),
    Question(
        "22) Which protection is not available below 100 feet AGL?",
        ["Pitch attitude.", "Vls.", "ALPHA SPD (alpha speed)", "Alpha floor."],
        3),
    Question(
        "23) What does amber SPEED BRAKES mean on lower ECAM?",
        [
          "Speed brakes have a fault.",
          "Speed brakes are extended and flap handle is not at 0.",
          "Speed brakes are extended and engines are not at idle.",
          "All of the above."
        ],
        2),
    Question(
        "24) If LOW ACCURACY message is displayed, are there any approach restrictions?",
        [
          "No",
          "Yes, ILS approach only.",
          "Yes, both LNAV and VNAV approaches are forbidden."
        ],
        2),
    Question(
        "25) The DDRMI provides the pilot with:",
        [
          "Bearing only for VOR 1.",
          "Bearing and DME information for VOR 1 and ADF 1.",
          "Bearing and DME information for VOR 2 and ADF 2.",
          "Bearing only for VOR 1 and VOR 2."
        ],
        3),
    Question(
        "26) The ON BAT light will illuminate amber:",
        [
          "When one or more IR's are operating on aircraft battery power.",
          "For a few seconds at the beginning of the alignment process.",
          "Both are correct."
        ],
        2),
    Question(
        "27) If both ELACs fail, what controls the elevator and stabilizer?",
        [
          "FACs.",
          "SECs.",
          "Elevator and stabilizer revert to mechanical backup.",
          "Backup mode of ELAC's"
        ],
        1),
    Question(
        "28) Where is the information displayed by DMC #1 and DMC #2?",
        [
          "DMC #1 supplies data to PFD #2, ND #2 and LOWER ECAM. DMC #2 supplies data for PFD #1, ND #1, and UPPER ECAM.",
          "ADMC #1 supplies data to PFD #1, ND #1 and LOWER ECAM. DMC #2 supplies data for PFD #2, ND #2, and UPPER ECAM.",
          "DMC #1 supplies data to PFD #1, ND #1, and UPPER ECAM. DMC #2 supplies data for PFD #2, ND #2, and LOWER ECAM.",
          "ADMC #1 supplies data to PFD #1, ND #1 and LOWER ECAM. DMC #2 supplies data for PFD #2, ND #2, and LOWER ECAM."
        ],
        2),
    Question(
        "29) While in flight operating in Normal law, movement of the sidestick and subsequent return to neutral will command:",
        [
          "A load factor proportional to stick deflection, then maintain one G flight corrected for pitch attitude.",
          "control surface movements proportional to stick deflection, then return the aircraft to straight and level flight.",
          "Control surface movements proportional to stick deflection, disconnect auto trim, and maintain its current attitude."
        ],
        0),
    Question(
        "30) In normal law all protections are active, which of the following lists is the most complete list?",
        [
          "Protections, Load Factor, Pitch attitude, High AOA, and High speed.",
          "Protections, Load Factor, Pitch attitude, High AOA, Alpha floor, angle of bank, and High speed.",
          "Protections, Load Factor, Pitch attitude, High AOA, Vls, Alpha floor, and High speed.",
          "Protections, Load Factor and Pitch attitude."
        ],
        1),
    Question(
        "31) When in alternate law, all protections except _____ protection will be lost.",
        ["Roll attitude.", "Pitch attitude.", "Bank angle.", "Load factor."],
        3),
    Question(
        "32) When does the sideslip indicator change to a blue Beta target?",
        [
          "Flaps configuration 1.",
          "Any EPR exceeds 1.25, and EPR's differ by more than 0.30",
          "Heading differs from track by 20 deg or more",
          "Flaps configuration 1, 2."
        ],
        1),
    Question(
        "33) High and low speed stabilities may be available in alternate law, stabilities:",
        [
          "Will not allow the pilot to stall the aircraft.",
          "Prohibit steep bank angles.",
          "Prohibit steep climb angles and bank angles.",
          "Can be overridden by the pilot, and it is possible to exceed Vmo, Mmo and stall the aircraft."
        ],
        3),
    Question(
        "34) What is the function of the FACs?",
        [
          "Rudder and Yaw damping inputs, Flight envelope and speed computations",
          "Rudder and Yaw damping inputs",
          "Rudder and Yaw damping inputs and windshear protection",
          "Rudder and Yaw damping inputs, Flight envelope and speed computations, and windshear protection"
        ],
        3),
    Question(
        "35) What causes a DU to display a black screen with a white diagonal line?",
        [
          "The circuit breaker for that particular DU has popped.",
          "DMC failure.",
          "No power."
        ],
        1),
    Question(
        "36) If the LOWER ECAM DU fails, is there a way to retrieve that information?",
        [
          "Pressing and holding the related systems page pb on the ECAM control panel; the page will be displayed on the UPPER ECAM.",
          "Rotating the ECAM/ND XFER switch, the LOWER ECAM page will be transferred to either the Captain or First Officer's ND.",
          "Both are correct."
        ],
        0),
    Question("37) Can the aircraft be controlled with a loss of all electrics?",
        ["Yes.", "No."], 0),
    Question(
        "38) The ATT HDG and AIR DATA selectors on the switching panel in the NORM position indicate that:",
        [
          "ADIRU 1 is supplying information to PFD 1 and ND 2, and ADIRU 2 is supplying power to PFD 2 and ND 1.",
          "ADIRU 1 is supplying information to PFD 1, ND 1 and the DDRMI; ADIRU 2 is supplying power to PFD 2 and ND 2."
        ],
        1),
    Question(
        "39) What action should be taken if ADR #1 is lost?",
        [
          "Nothing.",
          "Move the ATT HDG knob on the switching panel to CAPT 3.",
          "Move the AIR DATA knob on the switching panel to CAPT 3."
        ],
        2),
    Question(
        "40) How many Air Data/Inertial Reference Units (ADIRU's) are installed?",
        ["One", "Two", "Three", "Four"],
        2),
    Question(
        "41) On an autoland approach, with both autopilots on, which FMGC is master?",
        ["FMGC 1", "FMGC 2", "Both"],
        0),
    Question(
        "42) After a single DMC failure, how could a crewmember recover the display units?",
        [
          "Once a DMC has failed the information is unrecoverable",
          "No action is needed as recovery is automatic.",
          "Rotate the EIS DMC switch on the switching panel to replace the failed DMC with DMC #3."
        ],
        2)
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
              "AUTOMATIC FLIGHT", // Updated Title
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
                  "AUTOMATIC FLIGHT", // Updated Title
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
