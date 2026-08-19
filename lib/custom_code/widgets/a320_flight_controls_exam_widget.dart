// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320FlightControlsExamWidget extends StatefulWidget {
  const A320FlightControlsExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320FlightControlsExamWidgetState createState() =>
      _A320FlightControlsExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320FlightControlsExamWidgetState
    extends State<A320FlightControlsExamWidget> {
  // --- 80 Flight Controls Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The flight control surfaces are ________ controlled and ________ actuated.",
        [
          "Electrically / hydraulically",
          "Mechanically / hydraulically",
          "Electrically / electrically"
        ],
        0),
    Question(
        "2) What computer normally commands the operation of the elevators and horizontal stabilizer?",
        ["SEC 1", "FAC 1", "ELAC 2"],
        2),
    Question(
        "3) Sidesticks provide electrical signals to the flight control computers; if both sidesticks are operated:",
        [
          "The inputs cancel each other.",
          "Both inputs are algebraically added.",
          "The F/O input is overridden by the CAP input."
        ],
        1),
    Question(
        "4) Roll control is achieved by:",
        [
          "Ailerons",
          "Ailerons and rudder.",
          "One aileron and four spoilers on each wing.",
          "Ailerons, rudder and spoilers"
        ],
        2),
    Question(
        "5) When the flaps are extended, the ailerons:",
        [
          "Go to the centering mode.",
          "Pitch up 5 degrees.",
          "Droop 5 degrees."
        ],
        2),
    Question(
        "6) If electrical power to a SEC fails:",
        [
          "The affected spoilers automatically retract.",
          "All spoilers automatically retract.",
          "The affected spoilers remains in the last commanded position."
        ],
        0),
    Question(
        "7) If angle of attack protection is active or flaps are in the configuration Full:",
        [
          "Speed brake extension is inhibited.",
          "Aileron travel is reduced.",
          "Speed brake extension travel is reduced."
        ],
        0),
    Question(
        "8) Should the active elevator actuator fail, elevator control is:",
        ["Lost.", "Maintained by the other actuator.", "Reduced."],
        1),
    Question(
        "9) Two control surfaces that have mechanical backup are:",
        [
          "Elevator and rudder.",
          "Horizontal stabilizer and rudder.",
          "Speed brakes and rudder."
        ],
        1),
    Question(
        "10) Horizontal stabilizer trim automatically resets to zero degrees after landing.",
        ["True", "False"],
        0),
    Question(
        "11) Should both FACs fail, maximum rudder deflection can be obtained after the ________ are extended.",
        ["Flaps", "Slats", "Gear"],
        1),
    Question(
        "12) Automatic rudder trim is provided at the rate of ________ while the manual rudder trim rate is ________ up to a maximum of ________.",
        [
          "5 deg/sec - 2 deg/sec - 20 degs",
          "5 deg/sec - 1 deg/sec - 20 degs",
          "8 deg/sec - 2 deg/sec - 10 degs",
          "8 deg/sec - 5 deg/sec - 10 degs"
        ],
        1),
    Question(
        "13) Four hydraulically-operated wing tip brakes are installed to lock the flaps or slats in case of:",
        [
          "Asymmetry and overspeed only",
          "Asymmetry, overspeed and slow movement",
          "Asymmetry, overspeed, symmetrical runaway and uncommanded movement",
          "All of the above"
        ],
        2),
    Question(
        "14) While on the ground in Roll Normal Law there is a direct relationship between sidestick deflection and the corresponding aileron and spoiler deflection.",
        ["True", "False"],
        0),
    Question(
        "15) In Pitch Normal Law Flight Mode; pitch trim is:",
        [
          "Manual without the autopilot engaged.",
          "Automatic as long as the autopilot is engaged.",
          "Automatic with or without the autopilot engaged"
        ],
        2),
    Question(
        "16) Automatic pitch trim is inhibited when:",
        [
          "Radio altitude is below 50 feet (100 feet with autopilot coupled).",
          "Bank angle is greater than 33 degrees.",
          "Load factor is less than 1G.",
          "First two statements are correct"
        ],
        3),
    Question(
        "17) In pitch normal law, the elevator control changes from the normal mode to a protection mode when the angle of attack is greater than:",
        ["Alpha Max", "Alpha Prot", "Alpha Floor"],
        1),
    Question(
        "18) TOGA thrust is provided regardless of throttle position when ________ engages the autothrottle system.",
        ["Alpha Max", "Alpha Prot", "Alpha Floor"],
        2),
    Question(
        "19) Roll control in NORMAL LAW is achieved with:",
        [
          "Ailerons and spoilers.",
          "Ailerons, spoilers and rudder.",
          "Ailerons, spoilers 2-5 and rudder."
        ],
        2),
    Question(
        "20) The purpose of the Load Alleviation Function is to:",
        [
          "Relieve wing structure loads by moving the ailerons.",
          "Relieve wing structure loads by extending spoilers 4 and 5.",
          "Help slow the airplane down.",
          "First two statements are correct"
        ],
        3),
    Question(
        "21) With the aircraft in Pitch Alternate Law, roll is in ________ Law.",
        ["Direct", "Normal", "Alternate"],
        0),
    Question(
        "22) When the landing gear is extended, pitch alternate law:",
        [
          "Remains the same.",
          "Degrades to pitch direct law.",
          "Degrades to pitch backup law."
        ],
        1),
    Question(
        "23) In Pitch Alternate Law; the low Speed stability (nose down command) can be overridden by the sidestick.",
        ["True", "False"],
        0),
    Question(
        "24) In the event of a complete loss of electrical flight control signals, the airplane reverts to a ________ mode.",
        [
          "Mechanical",
          "Alternate Law",
          "Alternate law",
          "Abnormal Attitude law"
        ],
        0),
    Question(
        "25) To select speed brakes inflight:",
        [
          "Push down on the speed brake handle and move it forward.",
          "Push down on the speed brake handle and move it aft.",
          "Pull up on the speed brake handle and move it aft."
        ],
        1),
    Question(
        "26) Which of the following statements is correct concerning the spoiler elevator computers (SEC's)?",
        [
          "Two computers which achieve spoiler control and standby elevator and THS control.",
          "Three computers which achieve spoiler control and normal elevator and THS control.",
          "Three computers which achieve spoiler control and standby elevator and THS control."
        ],
        2),
    Question(
        "27) The autopilot will disconnect if the side stick takeover push button is depressed.",
        ["True.", "False."],
        0),
    Question(
        "28) Which of the following statements are correct concerning the side stick takeover push button?",
        [
          "The last pilot to depress the push button has priority.",
          "If the a takeover push button is depressed for more than 40 seconds, the onside system will retain priority after the push button is released.",
          "Both are correct."
        ],
        2),
    Question(
        "29) Are there any control surfaces with a mechanical backup?",
        [
          "Yes, the ailerons.",
          "Yes, the spoilers",
          "Yes, the THS and the rudder.",
          "No, there aren't any control surfaces with mechanical backup."
        ],
        2),
    Question(
        "30) What control surfaces do the FACs control?",
        ["The elevators.", "The spoilers.", "The rudder.", "All of the above."],
        2),
    Question(
        "31) Which of the following will automatically reset after landing?",
        ["THS", "Rudder trim.", "Both are correct."],
        0),
    Question(
        "32) What happens in the event of an single ELAC failure?",
        [
          "ELAC functions are transferred the SEC's.",
          "ELAC functions are transferred to FAC's.",
          "SEC functions are transferred the ELAC's.",
          "The functions of the failed ELAC will be assumed by the remaining ELAC."
        ],
        3),
    Question(
        "33) The alpha speed lock function:",
        [
          "Will inhibit flap retraction during an inadvertent movement of the flap selector at high AOA or low speeds.",
          "Will inhibit slat retraction during an inadvertent movement of the flap selector at high AOA or low speeds.",
          "Automatically raises the flaps if retraction has not been accomplished by 210kts."
        ],
        1),
    Question(
        "34) In normal law, if one stick is rapidly pulled fully back, can the aircraft's maximum allowable \"G\" load be exceeded?",
        [
          "Yes. Rapid side stick deflection must never be made.",
          "Yes, until maximum pitch attitude is reached.",
          "No. At Maximum \"G\" load, the side sticks are de-activated for 5 seconds.",
          "No. The load factor limitation overrides side stick commands to avoid excessive \"G\" loads."
        ],
        3),
    Question(
        "35) Which controls are used for the mechanical backup?",
        [
          "Ailerons and rudder.",
          "THS and rudder",
          "Elevators and ailerons.",
          "THS and elevator."
        ],
        1),
    Question(
        "36) Mechanically backed-up control surfaces:",
        [
          "Require hydraulic power for actuation.",
          "Are mechanically connected to the cockpit controls.",
          "Both are correct."
        ],
        0),
    Question(
        "37) Selection of flaps one prior to takeoff will select which of the following?",
        [
          "Slats 1 and flaps 1 (1+F).",
          "Slats 0 and flaps 1 (0+F).",
          "Slats 1 and flaps 0 (1).",
          "Slats 1 and flaps 5 (1)."
        ],
        0),
    Question(
        "38) Which of the following statements best describes the Load Alleviation function(LAF)?",
        [
          "Helps the pilot control the airplane.",
          "Relieves wing structure loads by deflecting the ailerons and spoilers.",
          "Relieve wing structure loads by deflecting only the spoilers.",
          "Relieves wing structure loads by deflecting the ailerons."
        ],
        1),
    Question(
        "39) When ground spoilers deploy automatically:",
        [
          "All ten spoiler panels fully deploy.",
          "Four spoiler panels on each wing deploy.",
          "All ten spoiler panels deploy half way.",
          "Six spoiler panels on each wing deploy."
        ],
        0),
    Question("40) The FAC's primarily control which control surface?",
        ["Elevator.", "Rudder.", "Aileron.", "Elevator and aileron."], 1),
    Question(
        "41) Which altitude limitation is associated with high lift devices?",
        [
          "Max altitude for extension is 20, 000 ft.",
          "Max altitude for extension is 22, 000 ft.",
          "Max altitude for extension is 25, 000 ft.",
          "Max altitude for extension is 27, 000 ft."
        ],
        0),
    Question(
        "42) The message WING TIP BRK ON appears on the E/WD. What does it mean?",
        [
          "A hydraulic device locks the flaps in their present position.",
          "To reduce structural stress, the slats movement is being slowed down through the wing tip brakes.",
          "To avoid asymmetry, the outer slats are locked in their present position.",
          "Because of the locked flaps, the wing tip brakes also lock the slats."
        ],
        0),
    Question(
        "43) Where does the SFCCs obtain AOA and air data information from?",
        ["SEC", "ELAC", "ADIRU", "ADC"],
        2),
    Question(
        "44) How many actuators are provided to control the ailerons and how many hydraulic sources supply these actuators?",
        [
          "2 hydraulic sources with 4 actuators.",
          "1 hydraulic source with 2 actuators.",
          "4 hydraulic sources with 4 actuators.",
          "3 hydraulic sources with 4 actuators."
        ],
        0),
    Question(
        "45) If both FAC's fail, what happens to the rudder limiter?",
        [
          "It immediately assumes the low speed position.",
          "It freezes at its present position and assumes the low speed position when flaps 1 are selected.",
          "Maximum rudder deflection can be obtained after slats extended.",
          "Maximum rudder deflection can be obtained after flaps extended."
        ],
        1),
    Question(
        "46) Which of the following statements is correct concerning the elevator aileron computers (ELAC's)?",
        [
          "Three computers which achieve normal elevator, stabilizer, and aileron control.",
          "Two computers which achieve normal and standby control of the elevators, ailerons, and trimmable horizontal stabilizer.",
          "Three computers which achieve normal and standby control of the elevators, ailerons, and THS.",
          "Two computers which achieve normal elevator, stabilizer, and aileron control."
        ],
        1),
    Question(
        "47) The wing tip brakes, once activated:",
        [
          "Lock both the slats and flaps in their current position",
          "Lock only the flaps in their current position.",
          "Lock only the slats in their current position.",
          "Lock only the affected high lift system surfaces in their current position"
        ],
        3),
    Question(
        "48) Which of the following controls and monitors flaps and slats?",
        [
          "Two ELAC's.",
          "Wing tip brakes.",
          "One slat flap control computer (SFCC).",
          "Two slat flap control computers (SFCC's)."
        ],
        3),
    Question(
        "49) The spoiler panels are the only flight control surfaces with no redundant control.",
        ["True.", "False."],
        0),
    Question(
        "50) What happens in the side stick-neutral high speed protection mode?",
        [
          "The autopilot disengages, bank angle limit is 30° and the aircraft is 25° roll limited.",
          "The autopilot disengages, bank angle limit is 45° and the aircraft is 25° roll limited.",
          "The autopilot disengages, bank angle limit is 45° and the aircraft rolls wings level and pitches up to slow down to VMO/MMO.",
          "The autopilot disengages, bank angle limit is 35° and the aircraft rolls wings level and pitches to 10° to slow down to VMO/MMO - 20 kt."
        ],
        2),
    Question(
        "51) What is the maximum flap setting for in-flight use of the spoilers?",
        [
          "Flaps FULL.",
          "Flaps 3.",
          "Spoilers are not approved for in-flight use.",
          "Flaps 10."
        ],
        1),
    Question(
        "52) What are the rudder trim rates?",
        [
          "A/P on - 5 deg/sec, A/P off - 1 deg/sec.",
          "A/P on - 2 1/5 deg/sec, A/P off - 5 deg/sec.",
          "A/P on - 3 deg/sec, A/P off - 6 deg/sec.",
          "A/P on - 5 deg/sec, A/P off - 6 deg/sec."
        ],
        0),
    Question(
        "53) Can the crew make a flight control input that will over-stress the airplane in direct law?",
        [
          "No. The system is designed to avoid such an attempt.",
          "Yes, there are no protections provided in direct law."
        ],
        1),
    Question("54) Can you manually trim the rudder with the autopilot engaged?",
        ["Yes.", "No."], 1),
    Question(
        "55) When is the Flight Mode active?",
        [
          "From takeoff until landing.",
          "From liftoff until landing",
          "From liftoff until flare mode engages at 50 ft RA.",
          "From takeoff until passing 50 kts on landing (main shock absorbers depressed)"
        ],
        2),
    Question(
        "56) Automatic pitch trim is provided both on ground and in flight.",
        ["True.", "False."],
        1),
    Question("57) The Ground Mode is different in Alternate Law.",
        ["True.", "False."], 1),
    Question(
        "58) In normal law, what is the maximum bank angle you can reach with the side stick fully deflected?",
        ["33°", "49°", "67°", "70°"],
        2),
    Question(
        "59) Failure to retract the flaps after takeoff will:",
        [
          "Activate the wing tip brakes.",
          "Result in automatic flap and slat retraction at 210 kts.",
          "Result in automatic flap and slat retraction at 220 kts.",
          "Result in automatic flap retraction at 210 kts."
        ],
        3),
    Question(
        "60) FAC generated slat and flap extension, retraction, and limiting speeds are visually displayed on which of the following?",
        [
          "The MCDU perf page.",
          "The lower ECAM F/CTL page.",
          "Both pilot's PFD airspeed displays.",
          "All of the above."
        ],
        2),
    Question(
        "61) Aileron droop may best be confirmed by checking which of the following?",
        [
          "The position of the ailerons on the exterior preflight inspection.",
          "The lower ECAM FLT/CTL page.",
          "The position of the flap handle."
        ],
        1),
    Question(
        "62) The wing tip brakes are:",
        [
          "Pneumatically actuated.",
          "Electric brakes.",
          "Hydraulically actuated.",
          "Mechanically controlled, hydraulically actuated."
        ],
        2),
    Question(
        "63) Selection of flaps 1 in flight will select which of the following configurations?",
        [
          "Slats 1 and flaps 1 (1+F).",
          "Slats 0 and flaps 1 (0+F).",
          "Slats 1 and flaps 0 (1).",
          "Slats 1 and flaps 5 (1+F)."
        ],
        2),
    Question(
        "64) The aircraft rudder can be manually trimmed with the autopilot engaged.",
        ["True.", "False."],
        1),
    Question(
        "65) What happens if you release the stick at 40 degrees of bank?",
        [
          "The bank stays at 40°",
          "The aircraft rolls back to 25°",
          "The aircraft rolls back to 33° and resumes flight path stability.",
          "The aircraft rolls back to a bank angle less than 29°"
        ],
        2),
    Question(
        "66) When is alpha floor not available?",
        [
          "Out of normal law.",
          "Below 100 feet RA in landing configuration.",
          "If the A/THR is deactivated or unavailable.",
          "All of the above."
        ],
        3),
    Question(
        "67) What kind of protections are provided if the aircraft is in Alternate Law?",
        [
          "G-load protection with a reduced factor.",
          "Speed Stability",
          "Full G load protection and speed stability",
          "G-load protection and speed stability if the ADRS and elevators are working."
        ],
        3),
    Question(
        "68) In Normal Law, what are the limits of Pitch Attitude protections with flaps Full?",
        [
          "30° nose up.",
          "35° nose up progressively reduced to 20°",
          "25° nose up progressively reduced to 20° at low speed.",
          "There is no limit."
        ],
        2),
    Question(
        "69) You can degrade directly from Normal Law to Direct Law with gear down and a dual radio altimeter fault.",
        ["True.", "False."],
        0),
    Question(
        "70) When do you get FLARE Mode in Alternate Law?",
        [
          "Never. It goes directly from Alternate Law to Direct Law when the gear is selected down.",
          "When selecting Flaps 1",
          "At glide slope interception."
        ],
        0),
    Question("71) Turn coordination is available in Alternate Law.",
        ["True.", "False."], 1),
    Question(
        "72) If both pilots deflect their side sticks fully back:",
        [
          "The \"pitch up\" order is twice as high as with only one stick deflected.",
          "The \"pitch up\" order is 1.5 times higher as high as with only one stick deflected.",
          "No inputs are sent to the flight control computers unless one pilot presses the takeover pushbutton on his stick.",
          "The \"pitch up\" order is equal to a single stick deflection."
        ],
        3),
    Question(
        "73) To disable a side-stick, you have to depress the red take-over button on the active stick. Holding the button down for 40 seconds will electrically lock the other stick out until its own red take-over button is pushed again.",
        ["True.", "False."],
        0),
    Question(
        "74) Let's assume the F/O presses his takeover pushbutton and releases it after more than 40 seconds.",
        [
          "The Captain's side stick is de-activated unless he presses his takeover pushbutton.",
          "The Captain is unable to re-activate his side-stick for the rest of the flight",
          "Both sticks are active",
          "The Captain's side stick is active as long as the F/O's side stick is in neutral position."
        ],
        0),
    Question(
        "75) What condition will cause auto flap retraction?",
        [
          "Exceed 210 kts at Flaps 1",
          "Exceed 190 kt at Flaps 1.",
          "Exceed 195 kt at Flaps 1",
          "Exceed 190 kt with Flaps 1 while extending the speedbrake lever."
        ],
        0),
    Question(
        "76) What happens to the rudder limits if both FAC's fault?",
        [
          "The limit freezes at the fault condition until Flaps 1 is selected.",
          "The limit freezes at the fault condition until Flaps 5 is selected.",
          "The limit freezes at the fault condition until Flaps 1 is selected. Then it resets to the low speed limits for increased control."
        ],
        2),
    Question(
        "77) What happens to high speed (VMO/MMO) when you are in Alternate Law?",
        [
          "VMO is reduced to 320 kt and MMO minus 10 kt.",
          "VMO is reduced to 330 kt and MMO minus 10 kt.",
          "VMO is reduced to 320 kt and MMO does not change.",
          "There is no change."
        ],
        2),
    Question(
        "78) Can the rudders be moved with both FAC's inoperative?",
        [
          "Yes, if both FACs fail, maximum rudder deflection can be obtained when the slats are extended",
          "Yes, if both FACs fail, maximum rudder deflection can be obtained",
          "Yes, if both FACs fail, maximum rudder deflection can be obtained when the gear is extended or flaps extended at 1 minimum",
          "No"
        ],
        0),
    Question(
        "79) The FLAP lever sends signal to Slat Flap Control Computer (SFCC) to command movement.",
        ["True.", "False."],
        0),
    Question(
        "80) Is there any rudder pedal feedback for the yaw damping and turn coordination functions?",
        ["Yes.", "No."],
        1)
  ];

  // --- State Variables ---
  String mode = "MENU"; // MENU, STUDY, EXAM, RESULTS, REVIEW_WRONG
  int currentIndex = 0;

  Map<int, int> examSelectedAnswers = {};
  Map<int, Set<int>> studySelectedAnswers = {};
  Set<int> markedForReview = {};

  // Exam Mode Specific (80 questions * 1.5 minutes = 120 minutes = 7200 seconds)
  int examDurationSeconds = 7200;
  int timeLeft = 7200;
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
            Icon(Icons.flight_takeoff,
                size: 100, color: Colors.lightBlueAccent.withOpacity(0.9)),
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
              "FLIGHT CONTROLS",
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
        // --- Premium Header Banner ---
        Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5A7E9C),
                Color(0xFF5A7E9C),
                Color(0xFF3B5670),
                Color(0xFF3B5670),
              ],
              stops: [0.0, 0.45, 0.45, 1.0],
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
                  "FLIGHT CONTROLS",
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
                    bool isSelectedInExam = mode == "EXAM" &&
                        examSelectedAnswers[realIndex] == optIndex;
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

        // --- Bottom Navigation ---
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

              // Middle Button (Overview)
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
      color: Colors.black,
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
