// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320CommunicationsExamWidget extends StatefulWidget {
  const A320CommunicationsExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320CommunicationsExamWidgetState createState() =>
      _A320CommunicationsExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320CommunicationsExamWidgetState
    extends State<A320CommunicationsExamWidget> {
  // --- 52 Communications Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The audio management system allows the flight crew to use:",
        [
          "All the radio communication and radio navigation facilities installed on the aircraft in transmission and reception mode.",
          "The interphone system.",
          "The call systems and Passenger Address (PA) system.",
          "All of the above."
        ],
        3),
    Question(
        "2) How can you get the mechanics attention when he is outside the aircraft?",
        [
          "Use the MECH pushbutton on the CALLS panel which sounds an external horn.",
          "Hold the PA button",
          "Select the MECH transmission key on the ACP",
          "Select the MECH transmission key on the ACP and hold the pushbutton for 2 seconds"
        ],
        0),
    Question(
        "3) If the VHF 3 transmission key illuminated amber showing the word \"CALL\"",
        [
          "An ACARS message is waiting.",
          "Indicates a SELCAL",
          "The N°1 flight attendant is calling",
          "ATC is calling"
        ],
        1),
    Question("4) RMP #1 is dedicated to which VHF radios?",
        ["VHF 1 and 2.", "VHF 2 and 3.", "VHF 1 and 3.", "All radios."], 2),
    Question(
        "5) On RMP, the ON/OFF switch controls:",
        [
          "The power supply to the RMP.",
          "Only the STBY NAV function of the RMP.",
          "Only the COM function of the RMP."
        ],
        0),
    Question("6) You can tune the ILS receivers to different channels.",
        ["Yes.", "No."], 0),
    Question(
        "7) If you depress the guarded NAV button, the MCDU RAD NAV pages are inhibited and the RMP controls navaid tuning.",
        ["True.", "False."],
        0),
    Question(
        "8) Which ACP switch configuration is correct for communication with other cockpit crew members while wearing your Oxygen Mask?",
        [
          "ACP INT/RAD switch selected to INT, INT reception knob on, loud speaker volume up.",
          "INT transmission key to on, INT reception knob on, use the sidestick push-to-talk when speaking, loud speaker volume up.",
          "Both are correct."
        ],
        2),
    Question(
        "9) The AUDIO SWITCHING rotary selector allows replacement of a failed #1 or #2 ACP with ACP #3.",
        ["True.", "False."],
        0),
    Question(
        "10) Which statement is correct regarding the cockpit voice recorder?",
        [
          "Is automatically energized when the battery pb\\'s are selected on.",
          "Is always active after DC electrical power is applied to the aircraft.",
          "Is automatically energized when the parking brake is set.",
          "Is automatically energized after the first engine start or five minutes after AC electrical power is applied to the aircraft"
        ],
        3),
    Question(
        "11) How do you erase the CVR?",
        [
          "Press the CVR ERASE pushbutton when the aircraft is on the ground with the parking brake set.",
          "Press the CVR ERASE pushbutton for 2 seconds when the aircraft is on the ground with the parking brake set",
          "Press the CVR ERASE pushbutton and CVR TEST pushbuttons for 2 seconds simultaneously.",
          "Press the CVR ERASE pushbutton and CVR TEST pushbuttons for 2 seconds simultaneously (with the parking brake set)."
        ],
        0),
    Question(
        "12) On the ground, CVR is stopped automatically _______ after the last engine shutdown.",
        ["Immediately", "1 minute", "3 minutes", "5 minutes"],
        3),
    Question(
        "13) On the ground, the crew can energize the CVR manually by pressing the GND CTL pushbutton.",
        ["True.", "False."],
        0),
    Question(
        "14) Only the last 60 minutes of recording are retained by the CVR.",
        ["True.", "False."],
        1),
    Question(
        "15) To make a PA announcement:",
        [
          "Depress and hold the PA transmission key push button.",
          "Use the pedestal mounted headset",
          "Both are correct."
        ],
        2),
    Question(
        "16) The service interphone has _______ interphone jacks and an OVRD switch located on the overhead panel.",
        ["Five", "Seven", "Eight", "Ten"],
        2),
    Question(
        "17) When selecting the guarded RMP NAV key:",
        [
          "Manual tuning via the MCDU RAD NAV page is still possible.",
          "Manual tuning via the MCDU RAD NAV page is always possible.",
          "FMGC auto tuning is inhibited.",
          "Manual tuning via the MCDU RAD NAV page is only possible on the offside radio."
        ],
        2),
    Question(
        "18) If an RMP fails, the selected receiver is no longer controlled by this RMP and frequencies and bars disappear from this RMP.",
        ["True.", "False."],
        0),
    Question(
        "19) You receive a SELCAL on VHF 2, what happens on your ACP?",
        [
          "Amber sign call flashes on VHF 2 key.",
          "Three green bars come on.",
          "White SELCAL appears on VHF 2 pushbutton and VHF 2 reception selector illuminates white.",
          "All of the above."
        ],
        2),
    Question("20) If VHF 1 is selected on RMP 2, SEL light illuminates white:",
        ["On RMP 2.", "On RMP 1.", "On RMP 1 and 2."], 2),
    Question(
        "21) In case of RMP 2 failure, VHF 2 is lost.", ["True.", "False."], 1),
    Question(
        "22) When looking at either RMP, how is it possible to determine if an RMP is selected to a VHF system it is not dedicated to?",
        [
          "The white SEL light will be illuminated on both RMP's, this is a normal occurrence in-flight.",
          "The white SEL light is illuminated on the offside RMP.",
          "The white SEL light is illuminated on the onside RMP."
        ],
        0),
    Question(
        "23) If RMP navigation tuning is currently in use for VOR tuning and ATC assigns a new communication frequency, what must be done?",
        [
          "The NAV key must be deselected and then press the transfer key.",
          "Tune the new frequency on the offside RMP.",
          "Select the appropriate VHF communication radio transmission key, tune using the rotary selector, press the transfer key"
        ],
        2),
    Question(
        "24) When the aircraft is in the Emergency Electrical Configuration:",
        [
          "RMP's 1 and 2, and ACP's 1 and 2 are both operative.",
          "RMP 1 and ACP's 1 and 2 are operative.",
          "RMP 1 and ACP 1 are operative.",
          "RMP 2 and ACP 2 are operative."
        ],
        1),
    Question(
        "25) With the AUDIO SWITCHING knob in the CAPT3 position, the Captain uses his acoustic equipment on ACP3.",
        ["True.", "False."],
        0),
    Question(
        "26) To communicate with a mechanic for manual start valve operation at the engine:",
        [
          "Select the INT/RAD selector to INT, and INT audio selector on.",
          "Select the transmission key push button labeled INT and the audio selector.",
          "Select the transmission key push button labeled CAB and the audio selector labeled CAB."
        ],
        2),
    Question(
        "27) The flashing amber MECH light indicates that the interphone system is faulty.",
        ["True.", "False."],
        1),
    Question(
        "28) What is the function of the Guarded EMER push button on the overhead panel?",
        [
          "To alert ATC of an in-flight emergency.",
          "To alert the aft flight attendants of a routine need to speak to them.",
          "To alert all flight attendants of a pending urgent need to speak to them."
        ],
        2),
    Question(
        "29) Which ACP transmission key will illuminate if the flight attendants are calling the cockpit?",
        ["PA.", "CAB.", "ALERT.", "VHF3."],
        1),
    Question("30) Is STBY/NAV tuning possible on RMP 3.", ["Yes.", "No."], 1),
    Question(
        "31) Normally how should you call a Flight Attendant?",
        [
          "By his or her firstname.",
          "Using the ACP CAB pb.",
          "Using an overhead FWD or AFT call pushbutton.",
          "Selecting the ATTND ADV pushbutton on."
        ],
        2),
    Question(
        "32) The BFO key enables the beat frequency oscillator for listening to the ID signal.",
        ["True.", "False."],
        0),
    Question(
        "33) Pressing the _______ key, on the audio control panel, allows the crew to inhibit the audio navigation signals.",
        ["VOICE", "RESET", "ATT", "BFO"],
        0),
    Question(
        "34) If ATC mode selector is at AUTO:",
        [
          "Selected ATC operates only in flight.",
          "Selected ATC operates when FLEX or TOGA power is selected for takeoff.",
          "Selected ATC operates as soon as one engine is running."
        ],
        2),
    Question("35) On ATC Control Panel, the FAULT light comes on if:",
        ["Selected Transponder fails.", "System 1 or 2 has failed."], 0),
    Question(
        "36) In case of dual FMGC failure selection of radionavigation frequencies is possible with:",
        ["RMP 1 only.", "RMP 1 and 2 only.", "RMP 1, 2 and 3."],
        1),
    Question(
        "37) All communications radios are controlled:",
        [
          "From the audio control panels (ACPs)",
          "By the F/O",
          "From any one of the three radio management panels (RMPs)."
        ],
        2),
    Question(
        "38) Only _______ is functional in the emergency electrical configuration.",
        ["RMP 3", "RMP 1", "RMP1 and 3"],
        1),
    Question(
        "39) The Cockpit Voice Recorder will record:",
        [
          "Direct conversations between crewmembers.",
          "All aural cockpit warnings.",
          "Communications over radio and intercom.",
          "Passenger address system announcements (as long as one PA reception knob is selected on).",
          "All of the above"
        ],
        4),
    Question(
        "40) The cockpit voice recorder will automatically operate on the ground for _______ minutes after electrical power is supplied to the airplane; or when at least _______ engine is operating.",
        ["6 - 2", "5 - 1", "5 - 2", "4 - 1"],
        1),
    Question(
        "41) When using the boom mike, oxygen mask mike, or hand mike: the PA key must be pressed and held to use the aircraft PA system.",
        ["True.", "False."],
        0),
    Question(
        "42) When the ON voice key on an Audio Control Panel is pushed in; ADF and VOR ident signals are inhibited.",
        ["True.", "False."],
        0),
    Question(
        "43) With the INT/RAD switch of an Audio Control Panel (ACP) in the INT position and the sidestick Transmit Switch in the Transmit position, you are transmitting on the:",
        [
          "Intercom at all times.",
          "Radio selected by the transmission switch on the Audio Control Panel.",
          "Radio selected by the reception knob on the Audio Control Panel."
        ],
        1),
    Question(
        "44) To transmit and receive on the service interphone, the pilot must select the:",
        [
          "CAB reception knob and the ATT transmission key on the ACP.",
          "CAB reception knob and the MECH transmission key on the ACP.",
          "Service Int on the nose gear panel."
        ],
        0),
    Question(
        "45) Illumination of the SEL indicator on a Radio Management Panel indicates:",
        [
          "The RMP has failed.",
          "The VHF has failed.",
          "The RMP is being tuned to a transceiver from another RMP"
        ],
        2),
    Question(
        "46) When would a green AM light illuminate on RMP 1?",
        [
          "Would not illuminate",
          "If AM mode is required and crew has selected HF1 and AM",
          "If crew has selected HF1 and single side band mode",
          "If AM mode is required and crew has selected HF 2 and AM"
        ],
        1),
    Question(
        "47) A VOR is tuned on RMP 1 using the STBY NAV function. Can this selection be seen on the MCDU RAD NAV page?",
        [
          "No. Information on RAD NAV page is not available when the NAV pb on RMP is pressed.",
          "Yes. Information on RAD NAV page is always available.",
          "No. It is not possible to tune a VOR using STBY NAV function.",
          "Yes. MCDU RAD NAV page shows VORs tuned using STBY NAV function."
        ],
        0),
    Question(
        "48) Is it possible to tune a navaid with the STBY NAV function on RMP 3?",
        [
          "Yes",
          "No. STBY NAV function is not available on RMP 3",
          "No. RMP 3 is not available for crew use.",
          "Yes but only on the ground."
        ],
        1),
    Question(
        "49) How can a navaid tuned through the STBY NAV on RMP 1 or 2 be identified?",
        [
          "The ident appears on the ND",
          "By pressing out the corresponding reception knob on the ACP",
          "All of the above."
        ],
        2),
    Question(
        "50) If an RMP fails:",
        [
          "The selected receiver is no longer controlled by this RMP",
          "The frequency displays disappear",
          "The green VHF or HF lights go out",
          "All of the above"
        ],
        3),
    Question(
        "51) With the MECH transmission key on the Audio Control Panel pressed:",
        [
          "The flight interphone channel is selected for transmission via the ACP RAD switch or the side stick radio selector.",
          "The cabin interphone channel is selected for transmission via the ACP RAD switch",
          "You can speak to the ground mechanic via the handset",
          "The mechanic will hear the external horn sound."
        ],
        0),
    Question(
        "52) How could you receive ATIS information from a VOR?",
        [
          "Pressing the ON voice key on the ACP",
          "Pressing and releasing out the VOR reception Knob and selecting the ON voice key on the ACP",
          "Voice facility is not available through the ACP",
          "None of the above."
        ],
        1)
  ];

  // --- State Variables ---
  String mode = "MENU"; // MENU, STUDY, EXAM, RESULTS, REVIEW_WRONG
  int currentIndex = 0;

  // Maps to track selected answers based on the mode
  Map<int, int> examSelectedAnswers = {};
  Map<int, Set<int>> studySelectedAnswers = {};
  Set<int> markedForReview = {};

  // Exam Mode Specific (78 minutes for 52 questions)
  int examDurationSeconds = 78 * 60;
  int timeLeft = 78 * 60;
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
            Icon(Icons.headset_mic_rounded,
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
              "COMMUNICATIONS", // Updated Title
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
                  "COMMUNICATIONS", // Updated Title
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
