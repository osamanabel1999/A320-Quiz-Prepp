// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320EnginesExamWidget extends StatefulWidget {
  const A320EnginesExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320EnginesExamWidgetState createState() => _A320EnginesExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320EnginesExamWidgetState extends State<A320EnginesExamWidget> {
  // --- 65 Engines Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The Full Authority Digital Engine Control (FADEC) controls which of the following functions:",
        [
          "Fuel metering",
          "Engine limits",
          "Automatic and manual starting.",
          "All of the above."
        ],
        3),
    Question(
        "2) The FADEC is normally powered by:",
        [
          "The RAT",
          "Its own magnetic alternator",
          "The normal aircraft electrical system"
        ],
        1),
    Question(
        "3) During an automatic start sequence; selecting the ENG MASTER switch to on:",
        [
          "Closes the pack valves.",
          "Initiates the start sequence.",
          "Displays the ECAM engine page.",
          "First two statements are correct"
        ],
        3),
    Question(
        "4) The FADEC has control during a manual engine start sequence except for:",
        [
          "The high pressure fuel valve.",
          "The start valve.",
          "An automatic abort."
        ],
        2),
    Question(
        "5) Continuous ignition is automatically provided during the following:",
        [
          "Flex or TO/GA thrust is selected on the ground.",
          "ENG ANTICE switch is ON",
          "Engine surge on stall occurs in flight.",
          "Any of the above."
        ],
        3),
    Question(
        "6) The A/THR is armed on the ground provided at least one FD is on by:",
        [
          "Setting the throttles to TO/GA.",
          "Automatically at engine start.",
          "With engines running; pressing the A/THR p/b manually."
        ],
        0),
    Question(
        "7) If a throttle is set between two detents; the FADEC selects the rating limit:",
        [
          "Determined by the throttle position.",
          "Corresponding to the higher mode.",
          "Corresponding to the lower mode."
        ],
        1),
    Question(
        "8) When the A/THR system is in use:",
        [
          "The throttles move automatically according to FADEC commands.",
          "The throttles can only be moved manually.",
          "The throttles will move when the A/THR p/b is used."
        ],
        1),
    Question(
        "9) A/THR engagement is confirmed when \"A/THR\" is displayed in _____ in the right column of the FMA.",
        ["Green", "Blue", "White"],
        2),
    Question(
        "10) If an A/THR disconnect switch is pushed and held for more than _____ seconds; the A/THR system is disconnected for the remainder of the flight; including the _____.",
        [
          "10 Seconds - Alpha floor Protection",
          "12 Seconds - Alpha floor Protection",
          "15 Seconds - Alpha floor Protection",
          "18 Seconds - Alpha floor Protection"
        ],
        2),
    Question(
        "11) Takeoff can be performed using which power settings?",
        [
          "Any manual setting.",
          "FLEX and MCT.",
          "CLIMB and TO/GA",
          "FLEX/MCT and TO/GA."
        ],
        3),
    Question(
        "12) When is T.O. INHIBIT and LDG INHIBIT active?",
        [
          "TO 750 feet AGL, LND below 1500 feet AGL.",
          "TO 1000 feet AGL, LND below 1000 feet AGL.",
          "TO 1500 feet AGL, LND below 750 feet AGL.",
          "TO 1500 feet AGL, LND below 1000 feet AGL."
        ],
        2),
    Question(
        "13) How many thrust lever positions are there, and how are they labeled?",
        [
          "There are 6 thrust levers positions: TO/GA, MCT, FLEX, CL, IDLE and REV IDLE.",
          "There are 6 thrust levers positions: TO/GA, FLX/MCT, CL, IDLE, REV IDLE and MREV.",
          "There are 4 thrust levers positions: TO/GA, FLX/MCT, CL, IDLE.",
          "There are 5 thrust levers positions: TO/GA, FLX/MCT, CL, IDLE and REV IDLE."
        ],
        1),
    Question(
        "14) You are just about to take off. You have not inserted a FLEX temperature. Can you still takeoff?",
        [
          "Yes, by setting the thrust levers to the CLIMB detent.",
          "Yes, by setting the thrust levers to the FLEX/MCT detent.",
          "Yes, but only using the TO/GA detent.",
          "Not until a FLEX temperature is inserted."
        ],
        2),
    Question(
        "15) During an engine start sequence, the gray background on N2 disappears at about 57%. What does this indicate?",
        [
          "That the igniters are no longer being powered.",
          "That the start sequence has finished and all engine parameters have stabilized.",
          "That the start valve air pressure has dropped.",
          "That there is a start fault and a dry crank is in progress."
        ],
        1),
    Question(
        "16) What does the FLEX represent in the FLX/MCT detent?",
        [
          "This is a reduced thrust setting used for takeoff.",
          "This is the maximum continuous thrust setting for single-engine operations.",
          "This is the thrust setting that should be chosen in the case of a single-engine go-around.",
          "This is a derated thrust according the ground temperature of the day."
        ],
        0),
    Question(
        "17) How many FADEC's are installed in the aircraft?",
        [
          "Two, one per engine.",
          "One, with two Engine Control Units (ECU).",
          "Two per engine.",
          "Two, one is the active FADEC and the other is a standby."
        ],
        0),
    Question(
        "18) What is required for the FADEC to compute a reduced thrust setting?",
        [
          "A FLEX temperature must be entered on the INIT page of the MCDU.",
          "Nothing, it is an automatic function of the FADEC.",
          "A FLEX temperature must be entered on the TAKE OFF PERF page of the MCDU."
        ],
        2),
    Question(
        "19) Using manual thrust, the thrust lever position will determine the thrust setting for the engine.",
        [
          "True. They will operate like conventional throttles.",
          "True, but care must be taken not to overspeed the engines.",
          "False, the next higher detent will be the thrust limit."
        ],
        0),
    Question(
        "20) What is considered to be the active range of the A/THR system?",
        [
          "During single engine operations from just above the IDLE stop to the FLX/MCT detent.",
          "During two engine operations from just above the IDLE stop to the CL detent.",
          "Both are correct."
        ],
        2),
    Question(
        "21) If the thrust levers are set in the idle detent, is Alpha floor protection still available?",
        [
          "Yes Thrust lever position is disregarded.",
          "Yes, as long as \"A/THR\" appears in Column five.",
          "No, because the IDLE detent is out of the A/THR active range."
        ],
        0),
    Question(
        "22) Is there any mechanical linkage between the thrust levers and the engines?",
        [
          "There is a fiber optic backup.",
          "There is a mechanical linkage in case the ECU fails.",
          "No, it is electrically powered and hydraulically actuated.",
          "No, it is totally electrical."
        ],
        3),
    Question(
        "23) What is Alpha floor protection?",
        [
          "It helps prevent the aircraft from stalling and protects against windshear encounters during takeoff and approach.",
          "It is a function of the flight control laws to prevent the aircraft from stalling.",
          "It helps prevent the aircraft from stalling by limiting the angle of bank at low airspeeds.",
          "It helps prevent the aircraft from stalling by limiting the angle of climb at high airspeeds."
        ],
        0),
    Question(
        "24) Alpha floor protection is available:",
        [
          "From lift off and down to 100 feet radio altitude in the landing configuration.",
          "From lift off and down to 50 feet radio altitude in the landing configuration.",
          "From lift off and down to 500 feet radio altitude in the landing configuration.",
          "From lift off and down to 750 feet radio altitude in the landing configuration."
        ],
        0),
    Question(
        "25) How do you arm the A/THR in flight?",
        [
          "A/THR switch ON when throttles are in the engagement mode.",
          "A/THR switch ON when throttles are not in the engagement mode."
        ],
        1),
    Question(
        "26) What is the difference between variable thrust and the speed mode?",
        [
          "In the fixed thrust mode, thrust is fixed and the elevator controls the speed.",
          "In the variable thrust mode, thrust is fixed and speed is controlled by the elevator.",
          "In the fixed thrust mode, thrust is variable and speed is controlled by the elevator."
        ],
        0),
    Question(
        "27) The left column, first line of the FMA is used to indicate:",
        [
          "If A/THR is off, armed, or active.",
          "The mode of the A/THR in use when A/THR is armed or active.",
          "Amber caution messages.",
          "The thrust indication."
        ],
        1),
    Question(
        "28) What are the two basic modes of the A/THR system?",
        [
          "Thrust and Mach.",
          "Thrust and speed.",
          "Variable thrust and fixed speed.",
          "Mach and speed."
        ],
        2),
    Question(
        "29) Is any thrust lever action required if an engine failed at rotation while using FLEX takeoff power?",
        ["Yes.", "No."],
        0),
    Question(
        "30) Can the engines be overboosted in the TOGA position?",
        [
          "Yes, if the autothrust function is not active.",
          "No, because the ECU provides engine protection limit by monitoring N1, N2, and HMU fuel flow adjustments.",
          "No, because the EIU is responsible for monitoring N1 and N2."
        ],
        1),
    Question(
        "31) How can A/THR be ARMED automatically?",
        [
          "Whenever a takeoff or go-around is initiated with at least one flight director ON.",
          "When Alpha floor protection is activated.",
          "Both are correct."
        ],
        2),
    Question(
        "32) During a manual start, how is the start valve opened?",
        [
          "It is automatic once the ENG MASTER is placed to the ON position.",
          "By depressing the ENG MAN START pushbutton's on the overhead panel.",
          "By depressing the ENG MAN START pushbutton's on the overhead panel while the ENG MODE selector is out of the NORM position."
        ],
        2),
    Question(
        "33) When does oil quantity indication begin to pulse?",
        [
          "Decreasing below 5 qts.",
          "During engine start.",
          "Oil quantity detector or pressure fault."
        ],
        0),
    Question(
        "34) Does the FADEC provide EGT limit protection constantly?",
        [
          "Yes, in all phases of flight.",
          "No, EGT limit protection is only available during ground auto starts.",
          "No, EGT limit protection is only available during ground auto starts and single-engine operations."
        ],
        1),
    Question(
        "35) Auto Thrust System: When are the throttles in the engagement range?",
        [
          "Both throttles are above idle but not above the CLB detent when both engines are running.",
          "A single throttle of an operating engine is above idle but not above the MCT detent when one engine is running.",
          "All of the above."
        ],
        2),
    Question(
        "36) The idle setting on the aircraft is capable of modulating due to certain conditions. During descent, what might cause the IDLE N1 setting to increase?",
        [
          "The slats are extended.",
          "For a higher than normal bleed air demand or warmer than normal engine oil temp in flight.",
          "Both are correct."
        ],
        2),
    Question(
        "37) Verification that Autothrust (A/THR) is active can be made by:",
        [
          "Watching the automatic movement of the thrust levers.",
          "Only when the thrust levers are set at TOGA.",
          "Only by looking at column five of the FMA."
        ],
        2),
    Question(
        "38) When Alpha floor is activated, what power setting is automatically commanded and what FMA annunciation would appear in Column one?",
        ["TOGA / A. FLOOR", "CLB / CLB", "MCT / THR LK", "THR / LK"],
        0),
    Question(
        "39) Holding the instinctive disconnect push button's for more than fifteen seconds will:",
        [
          "Disengage the A/THR (including Alpha Floor) until below 1000 feet AGL for the remainder of the flight.",
          "Disengage the A/THR (including Alpha Floor) until below 500 feet AGL for the remainder of the flight.",
          "Disengage the A/THR (excluding Alpha Floor) for the remainder of the flight.",
          "Disengage the A/THR (including Alpha Floor) for the remainder of the flight."
        ],
        3),
    Question(
        "40) During the automatic start sequence of ENG 2, you notice that only igniter B is powered. Is it normal?",
        [
          "Yes, igniter A is only used for engine anti-ice.",
          "No, normally both igniters are used for all engine starts.",
          "Yes, igniter B is always used for ENG 2 start.",
          "Yes, igniters are used alternately for engine start."
        ],
        3),
    Question(
        "41) As far as FMA annunciations are concerned, what would indicate that the A/THR system is active?",
        [
          "\"SPEED\" appears in green in column one, line one.",
          "\"A/THR\" changes from blue to white as shown in column five, line three.",
          "\"A/THR\" changes from white to blue in column five, line one.",
          "\"SPEED\" appears in amber in column one, line one."
        ],
        1),
    Question(
        "42) If a thrust lever is set between two detents, the FADEC selects the rating limit corresponding to the higher limit.",
        [
          "True. This limit is displayed on the upper ECAM.",
          "False. For safety reasons, it always selects the rating limit corresponding to the lower limit."
        ],
        0),
    Question(
        "43) What would happen during the takeoff roll if the thrust levers were set to the FLX/MCT detent without FLEX temperature being entered?",
        [
          "Nothing, the thrust setting would be at FLEX since FADEC automatically calculates a reduced thrust setting.",
          "The thrust setting would be MCT and there would be no corresponding warnings.",
          "A LEVEL TWO warning would sound along with the appearance of an ECAM message."
        ],
        2),
    Question(
        "44) What abnormals would cause the FADEC to automatically abort a start?",
        [
          "A hot start, an overtemp, a stalled start or no lightoff.",
          "An engine overspeed.",
          "A hot start, a stalled start, an overtemp or APU underspeed.",
          "A hot start, an overtemp or an engine overspeed."
        ],
        0),
    Question(
        "45) During an in-flight start or a manual start, will the FADEC auto abort for an abnormal?",
        [
          "Yes. It will for an in-flight start (but not for a manual start).",
          "Yes",
          "No."
        ],
        2),
    Question(
        "46) For reverser actuation, the left engine uses _____ hydraulic system pressure and the right engine uses _____ hydraulic system pressure.",
        [
          "Green - Yellow.",
          "Yellow - Blue.",
          "Yellow - Green.",
          "Blue - Green."
        ],
        0),
    Question(
        "47) While flying the airplane with A/THR active, the speed knob is pulled and turned to a selected speed that happens to be slower than Alpha prot. What speed will the airplane slow to?",
        ["Vls.", "Green Dot + 5 kts.", "Green dot.", "Green dot + 10 kts"],
        0),
    Question(
        "48) Where is the thrust reduction altitude found and is the number always the same?",
        [
          "Column four, row three of the FMA. It will always be 1500 ft. AGL.",
          "TAKE OFF PERF page of the MCDU (it can be modified).",
          "PROG page of the MCDU. It can be modified in order to meet constraints.",
          "TAKE OFF PERF page of the MCDU. It cannot be modified."
        ],
        1),
    Question(
        "49) During a manual start, what function does the FADEC perform?",
        [
          "Passive monitoring of the start sequence, to close the start valve and cut off the ignition on the ground.",
          "To control the start sequence and take corrective action in case of a failure or malfunction.",
          "The FADEC does not perform any function during a manual start and all actions have to be carried out by the pilots."
        ],
        0),
    Question(
        "50) During normal operation, in what detent are the thrust levers positioned once the thrust reduction altitude has been reached?",
        ["CL", "MCT", "FLX", "CRZ"],
        0),
    Question(
        "51) After take off the A/THR will not become active until:",
        [
          "The thrust levers are placed in the CLIMB position.",
          "The thrust levers are moved out of the TO/GA or FLEX/MCT detents.",
          "The autopilot is engaged.",
          "The A/THR pushbutton is manually selected ON."
        ],
        0),
    Question(
        "52) Continuous ignition is provided automatically when:",
        [
          "ENG ANTI ICE is selected ON and/or engine flameout is detected in flight",
          "ENG ANTI ICE is selected ON.",
          "ENG ANTI ICE is selected ON and/or engine flameout is detected in flight and/or the EIU fails."
        ],
        2),
    Question(
        "53) Is it possible to disconnect Alpha floor?",
        [
          "No, Alpha floor protection is always available.",
          "Yes, by placing the thrust levers to IDLE.",
          "Yes, by depressing the autothrottle push button on the FCU."
        ],
        2),
    Question(
        "54) The FADEC will automatically abort an abnormal start thereby providing engine limit protection, but will the FADEC also automatically dry crank the engine?",
        [
          "No, that is why there is a CRANK selection on the ENG MODE selector.",
          "Yes, even if the crew interrupts the start by placing the ENG MASTER switch to OFF.",
          "Yes, as long as the ENG MASTER switch remains in the ON position."
        ],
        2),
    Question(
        "55) What would happen in flight if the FADEC's alternator failed?",
        [
          "Automatic control of the engine would be lost.",
          "The standby channel of the ECU would take over.",
          "The FADEC would now be powered using ship's power.",
          "The FADEC would now be powered using ship's battery power."
        ],
        2),
    Question(
        "56) You are in the middle of a manual engine start. What are you looking for when you select ENG MASTER 2 ON?",
        [
          "The fuel used is reset, fuel flow is indicated and IGNITION message on the E/WD.",
          "The fuel flow is reset, an igniter is powered and fuel used is indicated.",
          "The fuel used is reset, both igniters are powered and fuel flow is indicated.",
          "The fuel used is reset, both igniters are powered and N2 is increasing."
        ],
        2),
    Question(
        "57) Each FADEC is a dual channel (A&B) computer providing full engine management.",
        ["True.", "False."],
        0),
    Question(
        "58) In addition to when the engine is operating, when else will the FADEC be powered?",
        [
          "When the FADEC GND PWR pb on the maintenance panel is depressed, or the ENG MASTER switch is placed to ON.",
          "When the FADEC control switch is placed to the IGN/START position.",
          "For five minutes after electrical power is applied to the aircraft, when the FADEC GND PWR pb on the maintenance panel is depressed, or when the ENG MODE control switch is placed to IGN/START position.",
          "As long as electrical power is established on the aircraft, the FADEC is powered."
        ],
        2),
    Question(
        "59) During an automatic start, the FADEC controls:",
        [
          "The start valves, igniters and fuel flow.",
          "The start valves, igniters, HP and LP fuel valves.",
          "The igniters and fuel flow.",
          "The start valves, igniters, HP and LP fuel valves, and fuel flow."
        ],
        3),
    Question(
        "60) How is manual arming of the A/THR system accomplished?",
        [
          "By pressing the A/THR pb on the FCU confirm the pushbutton illuminates green or confirm an A/THR annunciation is displayed in column 5 of the FMA.",
          "By placing the thrust levers into the active range.",
          "Advance at least one thrust lever to the TOGA or FLX/MCT detent with at least one Flight Director (FD) on."
        ],
        0),
    Question(
        "61) You are at the start of a descent and a blue N1 arc is displayed showing the new thrust demand. When does this happen?",
        [
          "Whenever the thrust levers are moved out of the CLIMB position.",
          "Whenever there is a power change in manual thrust.",
          "Whenever there is a power change with the autopilot engaged.",
          "Whenever there is power change with auto thrust engaged."
        ],
        3),
    Question(
        "62) A few seconds after selecting reverse, the amber REV indication changes to green. What does this mean?",
        [
          "The reversers have been re-stowed.",
          "The reversers are now fully deployed.",
          "The reverse thrust selection has been acknowledged",
          "The reversers are unlocked."
        ],
        1),
    Question(
        "63) During engine start the amber FAULT light on the ENG MASTER panel illuminates. This indicates:",
        [
          "A failure in the automatic start sequence.",
          "A failure of the ENG MODE SELECTOR.",
          "A failure in the engine fire extinguishing system."
        ],
        0),
    Question(
        "64) Which steps of a manual start are being taken care of by the FADEC?",
        [
          "Starter valve closure and ignition cut off.",
          "Starter valve opening and ignition start.",
          "Starter valve closure and ignition start.",
          "Starter valve opening and ignition cut off."
        ],
        0),
    Question(
        "65) Can Alpha-floor be disengaged while in Alpha Protection?",
        [
          "Yes, by manually disengaging the auto throttles.",
          "No, the system is designed to avoid such a disengagement.",
          "Yes, by reducing at idle one of the throttles (for more than 5 seconds)"
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

  // Exam Mode Specific (98 minutes for 65 questions)
  int examDurationSeconds = 98 * 60;
  int timeLeft = 98 * 60;
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
            Icon(Icons.toys,
                size: 100,
                color: Colors.orangeAccent.withOpacity(0.9)), // Engines Icon
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
              "ENGINES", // Updated Title
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
                  "ENGINES", // Updated Title
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
