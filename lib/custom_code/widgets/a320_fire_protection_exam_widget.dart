// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320FireProtectionExamWidget extends StatefulWidget {
  const A320FireProtectionExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320FireProtectionExamWidgetState createState() =>
      _A320FireProtectionExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320FireProtectionExamWidgetState
    extends State<A320FireProtectionExamWidget> {
  // --- 47 Fire Protection Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The avionics compartment is the only area where there is no fire extinguishing system installed.",
        ["True.", "False."],
        0),
    Question("2) Engine fire loops are installed in the:",
        ["Pylon nacelle", "Core", "Fan", "All the above"], 3),
    Question(
        "3) If a break in both engine fire loops occurs within _____ seconds of each other a _____ will occur.",
        [
          "8 sec./ a FIRE warning",
          "7 sec./ a FIRE DET FAULT message on ECAM",
          "10 sec./ a FIRE DET FAULT message on ECAM",
          "5 sec./ a FIRE warning"
        ],
        3),
    Question(
        "4) The aircraft has dual fire detector loops to ensure that a fault in one fire loop will not affect fire detection capabilities.",
        ["True", "False"],
        0),
    Question(
        "5) If there is an APU fire in flight the APU:",
        [
          "Will automatically shut down and the fire bottle will discharge.",
          "Must be shut down manually and the agent manually discharged.",
          "Must be shut down manually but the fire bottle will discharge automatically."
        ],
        1),
    Question(
        "6) Fire protection for the cargo compartments includes:",
        [
          "Two fire bottles; one for each compartment.",
          "One single shot fire extinguisher for the aft compartment only.",
          "One single shot fire extinguisher agents which can be discharged to either compartment."
        ],
        2),
    Question(
        "7) The engine extinguishing agent switch is armed when:",
        [
          "The DISCH light is on.",
          "The engine fire switch illuminates.",
          "The engine fire switch is released out."
        ],
        2),
    Question(
        "8) The APU test switch on the APU Auto Exting panel when pushed will:",
        [
          "Test APU fire warning.",
          "Test auto extinguishing.",
          "Test auto shutdown circuit and shut down an operating APU.",
          "All the above."
        ],
        0),
    Question(
        "9) When the APU FIRE SWITCH is released out:",
        [
          "The fire bottle is discharged.",
          "The Fuel HP valve is closed.",
          "The APU bleed and crossbleed valves are closed."
        ],
        2),
    Question(
        "10) DISCH light on either the engine or APU fire agent switches indicates:",
        [
          "The APU or engine FIRE switch has been pushed.",
          "The extinguisher bottle has been discharged.",
          "A fault has occurred in the respective fire bottle."
        ],
        1),
    Question(
        "11) The GEN 1 LINE smoke light indicates:",
        [
          "A fire caused by number 1 generator.",
          "Smoke in the avionics ventilation system.",
          "Smoke in the cargo ventilation system."
        ],
        1),
    Question("12) Can the APU FIRE test be performed using battery power only?",
        ["Yes.", "No."], 0),
    Question(
        "13) When the aircraft is on the ground and the APU is started on battery power only, is fire protection available?",
        [
          "Yes, the APU will initiate an auto shutdown and discharge the extinguishing agent.",
          "No, but the APU will initiate an auto shutdown.",
          "No, automatic fire protection is only available if AC power is available."
        ],
        0),
    Question(
        "14) How many fire extinguishing bottles are available for fighting an APU fire?",
        [
          "One.",
          "Two.",
          "One cylinder shared with the aft cargo compartment.",
          "Two cylinders shared with the aft cargo compartment."
        ],
        0),
    Question(
        "15) APU fire detection is accomplished by:",
        [
          "A two channel SDCU located in the APU compartment.",
          "Two parallel fire detection loops.",
          "One fire detection loop.",
          "A three channel SDCU located in the APU compartment."
        ],
        1),
    Question(
        "16) Engine heat sensing are located in pylon nacelle, engine core and fan section.",
        ["True.", "False."],
        0),
    Question(
        "17) After an APU fire has been detected how long will the chime continue to sound?",
        [
          "Until the crew pushes the red MASTER WARN push button.",
          "Until the crew pushes and releases the guarded red APU FIRE push button.",
          "Both are correct."
        ],
        2),
    Question(
        "18) STATUS page: INOP SYS indicates \"ENG1 LOOP B\".",
        [
          "One fire detection loop has failed. Fire detection for both engines is not available.",
          "One detection loop for engine 1 has failed. Fire detection for both engines is still available.",
          "One fire detection loop of engine 1 has failed. Fire detection for engine 1 is inoperative.",
          "Both fire detection loops of engine 1 have failed. Fire detection for engine 1 is inoperative."
        ],
        1),
    Question(
        "19) Which of the following have automatic fire extinguishing systems?",
        [
          "APU, and lavatory waste bins.",
          "APU, lavatory waste bins and avionics bay.",
          "APU, aft cargo, forward cargo, lavatory waste bins and avionics bay.",
          "APU, forward and aft cargo, lavatory and waste bins"
        ],
        0),
    Question(
        "20) The aft cargo compartment smoke detection system consists of:",
        [
          "A dual loop smoke detector.",
          "Four smoke detectors and a two channel smoke detection control unit.",
          "One smoke detector, one smoke detection control unit and two automatically discharging fire extinguishers.",
          "Three smoke detectors, one smoke detection control unit and two automatically discharging fire extinguishers."
        ],
        1),
    Question(
        "21) If an engine fire is detected, when will the pedestal mounted red FIRE annunciator light extinguish?",
        [
          "When the crew pushes the red MASTER WARN push button.",
          "Only after the fire warning no longer exists.",
          "Only after the crew selects the adjacent ENG MASTER switch to off."
        ],
        1),
    Question(
        "22) How long will the red APU FIRE pb on the overhead be illuminated?",
        [
          "Until the crew pushes and releases the guarded red APU FIRE push button.",
          "For as long as the fire warning is present.",
          "Until the crew pushes the red MASTER WARN push button."
        ],
        1),
    Question(
        "23) With reference to cargo compartment fire extinguishing, which statement is true?",
        [
          "There are two fire bottles, one for the FWD compartement and one for the AFT.",
          "There is only one fire bottle, pressing either DISCH pushbutton discharges it into both compartements.",
          "There is only one fire bottle, when it is discharged both amber DISCH lights come on.",
          "There are two fire bottles, when the DISCH pushbutton is pressed, they are both discharged into the appropriate compartment."
        ],
        2),
    Question(
        "24) Should you loose both loops or FDU, fire detection is no longer available for the respective engine or the APU",
        ["True", "False."],
        0),
    Question(
        "25) What is indicated by a missing red APU thermal plug during an exterior preflight?",
        [
          "This is normal indication, the red APU thermal plug only appears if the APU halon cylinder is low.",
          "An APU fire agent thermal discharge has occurred.",
          "An external fire discharge has been activated."
        ],
        1),
    Question(
        "26) If an engine fire is detected, when will the guarded red ENG FIRE push button light extinguish?",
        [
          "Only after the fire warning no longer exists.",
          "When the crew pushes and releases the guarded red ENGINE FIRE pushbutton.",
          "When the crew pushes the red MASTER WARN pushbutton.",
          "When the crew pushes the red MASTER WARN pushbutton and then releases the guarded ENGINE FIRE pushbutton"
        ],
        0),
    Question(
        "27) In the event a lavatory smoke detector detects smoke:",
        [
          "Warnings will be generated only in the cockpit.",
          "Warnings will be generated only on the flight deck.",
          "Warnings will be generated in the cockpit and in the cabin."
        ],
        2),
    Question(
        "28) Are there any warnings to alert ground personnel when there is a fire in the APU compartment?",
        [
          "Yes, but only if previously selected to automatic by the ground personnel.",
          "No, APU fire indications are only present in the cockpit.",
          "Yes, the external fire warning horn will sound and the APU red fire light will illuminate."
        ],
        2),
    Question(
        "29) What systems are affected when the guarded red ENGINE FIRE push button is pushed and released?",
        [
          "The Master Warning and the chime will be canceled and the AGENT pb\\'s will be armed.",
          "All fluids, pneumatics and electrics relating to that engine are shut off",
          "Both are correct."
        ],
        2),
    Question(
        "30) The avionics smoke detection system consists of the following:",
        [
          "A smoke detector, smoke detection control unit and one halon cylinder.",
          "A smoke detector, and smoke detection control unit.",
          "A smoke detector, heat detector, smoke detection control unit and one halon cylinder.",
          "A smoke detector, smoke detection control unit and two halon cylinders."
        ],
        1),
    Question(
        "31) Will an APU fire test shut down the APU?", ["Yes.", "No."], 1),
    Question(
        "32) Illumination of the GEN 1 LINE SMOKE light indicates:",
        [
          "A fire has been detected in the avionics compartment.",
          "A satisfactory test of the avionics compartment smoke detection control unit.",
          "Smoke has been detected in the avionics compartment ventilation duct.",
          "A fire has been detected in the electronics compartment."
        ],
        2),
    Question(
        "33) In the event an aft cargo compartment smoke detector detects smoke:",
        [
          "Extinguishing is automatic.",
          "Extinguishing is automatic only while on the ground.",
          "The crew must depress the appropriate DISCH switch."
        ],
        2),
    Question(
        "34) How many halon fire extinguishing cylinders are there per engine?",
        [
          "Each engine has two fire extinguishers.",
          "Each engine has it\\'s own dedicated fire extinguisher and has the capability to share the other engine\\'s cylinder.",
          "Each engine has it\\'s own dedicated fire extinguisher and has the capability to share one centrally located halon cylinder.",
          "Each engine has one fire extinguisher."
        ],
        0),
    Question(
        "35) The APU provides for automatic fire extinguishing:",
        [
          "On the ground only.",
          "On the ground and in flight.",
          "Only when selected to automatic by ground personnel."
        ],
        0),
    Question(
        "36) You have detected avionics smoke. You have selected the GEN 1 LINE push button off and the RAT has been deployed. Generator 2 has been removed from the system. Which of the following is TRUE?",
        [
          "The cargo fire bottle automatically fires.",
          "The avionics fire bottle automatically discharges.",
          "The aircraft will be in the Emergency Electrical Configuration"
        ],
        2),
    Question(
        "37) After depressing the CARGO SMOKE TEST push button once, a satisfactory test of the aft cargo compartment smoke detector consist of:",
        [
          "Two complete cycles with associated warnings.",
          "Not needed as this system self-tests during the first engine start.",
          "One complete cycle with associated warnings.",
          "Three complete cycles with associated warnings."
        ],
        0),
    Question(
        "38) In conjunction with illumination of the GEN 1 LINE SMOKE light and MASTER CAUT light:",
        [
          "The BLOWER and EXTRACT push button FAULT lights will be illuminated.",
          "Only the BLOWER FAULT light will be illuminated.",
          "Only the EXTRACT FAULT light will be illuminated."
        ],
        0),
    Question(
        "39) If you perform the APU FIRE TEST with only DC power available, you get the MASTER WARN on the ECAM.",
        ["True.", "False."],
        1),
    Question(
        "40) In the event an aft cargo compartment smoke detector detects smoke:",
        [
          "Only an ECAM message will be generated.",
          "Only a MASTER WARN and a CRC will be generated.",
          "A MASTER WARN, CRC and an ECAM message will be generated.",
          "A CRC and an ECAM message will be generated."
        ],
        2),
    Question(
        "41) How does the APU fire test on battery power differ from the APU fire test with all busses powered?",
        [
          "There is no difference.",
          "While on battery power, only the red APU FIRE and AGENT/DISC push button will illuminate.",
          "It is not possible to test the APU fire protection while on battery power."
        ],
        1),
    Question(
        "42) During the walk-around, you have to check that the APU Fire extinguisher overpressure indication (green disc) is in place. This is an indication that the fire bottle has not been discharged.",
        ["True.", "False."],
        1),
    Question(
        "43) The AFT SMOKE light closes the aft cargo inlet and outlet isolation valves and shuts off the aft cargo extraction fan.",
        ["True.", "False."],
        0),
    Question(
        "44) Each lavatory is equipped with:",
        [
          "Two smoke detectors and one smoke detection control unit.",
          "One smoke detector and one smoke detection control unit.",
          "One smoke detector, and for lavatory waste bins, an automatically discharging fire extinguisher.",
          "Two smoke detectors and two automatically discharging fire extinguishers."
        ],
        2),
    Question(
        "45) Each engine nacelle and pylon area is equipped with:",
        [
          "Two fire detection loops.",
          "A single fire detection loop.",
          "Two smoke detectors and two fire detection loops.",
          "A single fire detection loop and a single smoke detector."
        ],
        0),
    Question(
        "46) In addition to the CRC and red MASTER WARN light, a good engine fire test will display which of the following (AC power available)?",
        [
          "The CRC and red MASTER WARN light indicate a positive engine fire test.",
          "Lower ECAM engine page, pedestal mounted red FIRE annunciator, red ENG FIRE push button and the AGENT SQUIB/DISC lights illuminate.",
          "E/WD red 1 (2) ENG FIRE warning, lower ECAM engine page, red FIRE annunciator, red ENG FIRE push button, and AGENT SQUIB/DISC."
        ],
        2),
    Question(
        "47) If an APU fire is detected on the ground, the APU shuts down automatically and the agent is discharged ______ after the warning is activated.",
        ["Immediately", "1 second.", "3 seconds.", "6 seconds."],
        2)
  ];

  // --- State Variables ---
  String mode = "MENU"; // MENU, STUDY, EXAM, RESULTS, REVIEW_WRONG
  int currentIndex = 0;

  // Maps to track selected answers based on the mode
  Map<int, int> examSelectedAnswers = {};
  Map<int, Set<int>> studySelectedAnswers = {};
  Set<int> markedForReview = {};

  // Exam Mode Specific (47 questions * 1.5 minutes = 70.5 minutes = 4230 seconds)
  int examDurationSeconds = 4230;
  int timeLeft = 4230;
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
            Icon(Icons.local_fire_department,
                size: 100,
                color: Colors.orangeAccent.withOpacity(0.9)), // Updated Icon
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
              "FIRE PROTECTION", // Updated Title
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
                  "FIRE PROTECTION", // Updated Title
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
                          decoration: const BoxDecoration(
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
