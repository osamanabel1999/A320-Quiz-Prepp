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

class FmgsNavigationQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const FmgsNavigationQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<FmgsNavigationQuizWidget> createState() =>
      _FmgsNavigationQuizWidgetState();
}

class _FmgsNavigationQuizWidgetState extends State<FmgsNavigationQuizWidget> {
  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText: "1) What are the different types of flight guidance?",
      options: [
        "a) Slaved and managed.",
        "b) Automatic and manual.",
        "c) Managed and selected.",
        "d) Managed and manual."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "2) One A/P can be engaged on the ground if the engines are not running.",
      options: [
        "a) This A/P will disengage when both engines are started.",
        "b) This A/P will disengage when one engine is started.",
        "c) This A/P will disengage when speed is sensed at > 10 kts."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "3) When the thrust levers are moved to the takeoff position, the FMGS updates its position at takeoff using:",
      options: [
        "a) IRS/DME/DME positioning.",
        "b) IRS/ILS/DME positioning.",
        "c) The navigation database and the takeoff runway entered into the MCDU by the pilot.",
        "d) The VOR/DME currently tuned."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "4) The takeoff bias is:",
      options: [
        "a) Replaced when a fix is computed based on radio position.",
        "b) Retained for the remainder of the flight.",
        "c) Blended out over the next 30 minutes."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "5) With the DATA selector set to HDG, the time remaining until the completed IRS alignment is displayed on the control display. How long does it take normally?",
      options: [
        "a) Approximately 1 minute",
        "b) Approximately 3 minutes",
        "c) Approximately 7 minutes",
        "d) Approximately 10 minutes"
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "6) How does the FMGS derive Vapp?",
      options: [
        "a) Vapp=Vls+5+1/3 surface headwind component.",
        "b) Vapp=Vls+10+1/3 surface headwind component.",
        "c) Vapp=Vls+5+1/2 surface headwind component.",
        "d) Vapp=Vls+10+1/2 surface headwind component."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "7) When flying at cruise altitude, the aircraft navigates using radio navaids only.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "8) The IR alignment count down stops one minute prior to accomplishment and the ALIGN lights are flashing. Why does it happen?",
      options: [
        "a) It is an indication that there is a disagreement between the IRs and the alignment must be restarted.",
        "b) It is an indication that the alignment is complete but must be acknowledged",
        "c) It is an indication that alignment has stopped as the present position data has not been entered from the FMGS."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "9) What is managed climb speed below 10,000 feet?",
      options: [
        "a) Green dot.",
        "b) 210 knots.",
        "c) 250 knots.",
        "d) Best rate of climb speed."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "10) The selected database date has expired. When must the active data base be changed?",
      options: [
        "a) Prior to entering the preflight data.",
        "b) Anytime prior to takeoff.",
        "c) The following calendar day."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "11) Which of the following navaids can be autotuned?",
      options: [
        "a) ILS and ADF (for NDB data base approaches).",
        "b) VOR and DME.",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "12) Cost Index = 0 (zero) corresponds to:",
      options: [
        "a) Minimum fuel consumption (max range)",
        "b) Minimum time.",
        "c) Best ratio between the flight time cost and the fuel cost.",
        "d) LRC (Long Range Cruise)."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "13) While taxiing on the ground, the FMGS displays the position of the aircraft using:",
      options: [
        "a) IRS and DME/DME.",
        "b) IRS only.",
        "c) IRS and VOR/DME.",
        "d) DME/DME and VOR/DME."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "14) With the autopilot engaged, either sidestick can be moved freely.",
      options: [
        "a) True.",
        "b) False, moving either sidestick will cause the autopilot(s) to disengage.",
        "c) False, only the PNF's sidestick will freely move."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "15) When the aircraft is in the Managed Guidance mode, it is:",
      options: [
        "a) Guided by the pilot selecting the specific flight modes and parameter target values on the FCU.",
        "b) Responding to pilot inputs of speed, altitude, and heading selected on the FCU.",
        "c) Following lateral, vertical and speed profiles as determined by the IRS's.",
        "d) Following lateral, vertical and speed profiles as determined by the FMGS."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "16) What is managed climb speed above 10,000 feet?",
      options: [
        "a) Green dot.",
        "b) 250 knots.",
        "c) 280 knots.",
        "d) Econ climb speed."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "17) An amber box on the MCDU screen indicates:",
      options: [
        "a) An optional data entry.",
        "b) A mandatory data entry.",
        "c) A compulsory reporting point.",
        "d) The waypoint indicated will be flown over."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "18) When can managed vertical navigation be engaged?",
      options: [
        "a) Only after managed speed has been engaged.",
        "b) At anytime regardless of the engagement status of lateral navigation or speed.",
        "c) Only after managed lateral navigation and managed speed have been engaged.",
        "d) Only after managed lateral navigation has been engaged."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "19) Managed guidance is engaged by:",
      options: [
        "a) Pulling on the desired FCU selector knob.",
        "b) Pushing on the desired FCU selector knob.",
        "c) Rotating 90° the desired FCU selector knob."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "20) What speed will the FMGS use in an Expedite climb?",
      options: [
        "a) Green dot speed.",
        "b) ECON climb speed.",
        "c) 250 knots below 10,000 feet.",
        "d) Amber dot speed."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "21) The weather radar image can be displayed on which modes of the ND?",
      options: [
        "a) Rose NAV or VOR.",
        "b) Rose VOR or Rose ILS.",
        "c) Rose NAV or ARC.",
        "d) All modes except Plan."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "22) How does the FMGC compute radio position?",
      options: [
        "a) IRS only.",
        "b) IRS and VOR/DME.",
        "c) IRS, DME/DME.",
        "d) VOR/DME and DME/DME."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "23) You have been cleared to intercept the localizer. You have pushed the LOC push button on the FCU. If all necessary data has been entered in the MCDU, can you now engage both autopilots?",
      options: [
        "a) No, the LOC must capture before both autopilots will engage.",
        "b) Yes.",
        "c) No, the APPR pushbutton must be pushed."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "24) What does pushing the APPR push button do?",
      options: [
        "a) Arms managed navigation.",
        "b) Arms the Flight Guidance system to capture a localizer and glide slope if the information has been entered into the MCDU.",
        "c) Allows the aircraft to slow to green dot speed.",
        "d) Arms managed vertical navigation."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "25) What does pushing the APPR push button do?",
      options: [
        "a) Arms the Flight Guidance system to capture a localizer and glide slope if the information has been entered into the MCDU.",
        "b) Allows the aircraft to slow to green dot speed.",
        "c) Arms managed navigation.",
        "d) Arms managed vertical navigation."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "26) During a turnaround, you notice that ther is a residual ground speed on both NDs. How do you correct this?",
      options: [
        "a) As the engines have been shut down, it is necessary to carry out a full re-alignment.",
        "b) There is no corrective action possible until the aircharft is completely electrically shut down.",
        "c) It is possible to carry out a rapid alignment by turning off all 3 ADIRS momentarily."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "27) SRS will command: ( DSC-22_30-80-20 P 2/4 )",
      options: [
        "a) V2 + 10 with both engines operating.",
        "b) V2 or current aircraft speed (whichever is higher) in the case of an engine failure.",
        "c) Best rate of climb taking into account actual wind component."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "28) In flight, either the AP/FD pitch control, or autothrust may acquire and hold a target speed or Mach number, depending on the engaged modes. Speed control is \"Managed\" when the target comes from the SPD/MACH FCU window.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "29) The FMGS data base contains:",
      options: [
        "a) Performance information, such as engine fuel flow, engine thrust, green dot data (L/D data), etc.",
        "b) Navigation information, such as navaids, waypoints, airways, airports, runways, etc.",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "30) If one GPS receiver fails, the three ADIRUs automatically select the only operative GPS receiver.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "31) FMGC 1 is not working. To enter data into the FMGC, which MCDU would you use?",
      options: [
        "a) MCDU 1 on the Captain's side.",
        "b) MCDU 2 on the First Officer's side.",
        "c) Either MCDU 1 or MCDU 2."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "32) The pilot interfaces with the FMGS using the:",
      options: [
        "a) FCU.",
        "b) Thrust Levers.",
        "c) MCDU.",
        "d) All of the above."
      ],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText: "33) When is the SRS active?",
      options: [
        "a) During a Go Around (after the thrust levers are placed in the TOGA position) up to the acceleration altitude.",
        "b) At T/O, when TOGA or FLX power is set, SRS is displayed on the FMA and provides guidance up to the acceleration altitude.",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "34) The energy circle is a green arc, centered on the aircraft's position and oriented towards the current track line. It is displayed on the NDs during descent, when HDG or TRK mode is selected.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "35) Can the crew depress the RMP ON NAV pushbutton and use the RMP for navigation simultaneously with FMGC autotuning?",
      options: [
        "a) Yes, because the opposite FMGC will continue to autotune navaids.",
        "b) No, RMP backup tuning supersedes the autotuning function of both FMGC's."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "36) The Captain's FMA indicates -FD2 in column five, line two. What does this mean?",
      options: [
        "a) FMGC #1 has \"timed out\" and flight guidance is lost.",
        "b) The First Officer has pushed the priority takeover pushbutton.",
        "c) FMGC #1 has \"timed out\" and FMGC #2 is now providing flight guidance for both pilots.",
        "d) The Captain's FD pushbutton, on the FCU has not been selected \"ON\" and FD2 has automatically crossed over."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "37) What do the white round lights on the FCU display mean?",
      options: [
        "a) Selected guidance has been engaged.",
        "b) Automatic guidance has been engaged.",
        "c) Managed guidance has been armed or engaged."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "38) During descent, if you push the Expedite (EXPED) push button, what speed will the aircraft try to maintain?",
      options: [
        "a) Green dot.",
        "b) 340 knots.",
        "c) 3,000 fpm vertical speed.",
        "d) standard 3.0 degrees angle of descent."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "39) OPEN CLIMB (OP CLB) is a Managed mode.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "40) If you have depressed the EXPED push button and want to cancel this function, how could this be accomplished?",
      options: [
        "a) Push the EXPED push button again.",
        "b) Pull the altitude, vertical speed, or speed knob.",
        "c) Retard the thrust levers to IDLE.",
        "d) A red \"WIND SHR\" light; an aural \"WINDSHEAR, WINDSHEAR, WINDSHEAR\"."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "41) The LOC mode disengages when:",
      options: [
        "a) Another lateral mode is engaged.",
        "b) The pilot presses the LOC pushbutton again (engaging the HDG/TRK mode on the current HDG/TRK).",
        "c) Both are correct."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "42) Will the aircraft capture and navigate via the ILS signals if the ILS push button on the FCU is not pushed?",
      options: ["a) Yes.", "b) No."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "43) The Electronic Flight Instrument System (EFIS) consists of ______ identical display units.",
      options: ["a) 4", "b) 5", "c) 6", "d) 8"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "44) The three Display Management Computers (DMCS) acquire and process all input from airplane sensors and computers to generate the display images.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "45) The aircraft has ______ Air Data Inertial Reference Units (ADIRU's).",
      options: ["a) 2", "b) 3", "c) 4"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "46) GPWS aural and visual warnings can not be inhibited.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "47) Selection of the correct takeoff runway on the FMGC prior to each flight is necessary because:",
      options: [
        "a) The FADEC needs it to know how much to reduce the thrust for takeoff.",
        "b) Selection of the correct runway insures proper pressurization.",
        "c) Selection of the correct runway permits the FMGC to update its position at takeoff."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "48) The two basic modes of flight guidance are:",
      options: [
        "a) Slaved and coupled.",
        "b) Managed and selected.",
        "c) Manual and coupled."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "49) Both autopilots can be engaged and active in any phase of flight.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "50) All navaids are normally autotuned by:",
      options: ["a) The FMGC", "b) MCDU", "c) ADIRU"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "51) VOR data can be displayed on:",
      options: [
        "a) Both NDs",
        "b) The DDRMI",
        "c) First two statements are correct"
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "52) What is the preferred method of radio position updating for the FMGS?",
      options: ["a) VOR/DME", "b) ILS/DME", "c) DME/DME"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "53) The windshear function of the FAC's is independent of the flight director on/off switch.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "54) All PFD displays except attitude; speed; heading; altitude; and vertical speed are removed when pitch attitude exceeds 25 degrees nose up or 13 degrees nose down.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "55) Sidestick position and max. sidestick deflection are displayed on the ground on the PFD:",
      options: [
        "a) Continuously after aircraft power is applied.",
        "b) After the first engine start.",
        "c) On takeoff roll when power is applied."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "56) The airspeed indication on the PFD starts at:",
      options: ["a) 100 kts.", "b) 80 kts.", "c) 50 kts.", "d) 30 kts."],
      correctOptionIndex: 3,
    ),
    QuestionModel(
      questionText:
          "57) The speed trend arrow on the PFD airspeed scale indicates the speed value that will be attained in ______ seconds if the acceleration remains constant.",
      options: ["a) 5", "b) 8", "c) 10", "d) 15"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "58) Radio Height is displayed on the PFD:",
      options: [
        "a) Below 2500 feet.",
        "b) When the LOC or APPR p/b is pressed.",
        "c) When a Decision Height is selected."
      ],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "59) The Armed Vertical Modes are displayed on the Flight Mode Annunciator on the second line in:",
      options: ["a) Blue or magenta.", "b) Blue or green.", "c) White."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "60) The Engaged Vertical Modes are displayed on the Flight Mode Annunciator on the first line in:",
      options: ["a) Green or Blue", "b) Green or Magenta", "c) Blue"],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "61) ILS 1 information is displayed on ______ when operating in the rose ILS mode:",
      options: ["a) PFD 2 & ND 1", "b) PFD 1 & ND 1", "c) PFD 1 & ND 2"],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "62) The ON BAT light on the ADIRS CDU illuminates:",
      options: [
        "a) Only when all IRU's are on battery power.",
        "b) When an IRU fault is detected.",
        "c) When one or more ADIRU's are supplied by airplane battery only."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "63) In the event of failure of the AIR DATA function of ADIRU 1 or 2; the affected displays can be manually selected over to ADR 3 by the:",
      options: [
        "a) ECAM/ND transfer selector.",
        "b) AIR DATA selector.",
        "c) ATT HDG selector."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "64) When a double entry is needed on the MCDU (e.g. wind direction/speed: 270/110) the separating slash must be used. The trailing entry of a pair must be preceded by a slash if it is entered alone.",
      options: ["a) True.", "b) False."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText: "65) Box prompts on the MCDU indicate data:",
      options: [
        "a) Entry is optional for FMGS operation.",
        "b) Entry is required for minimum FMGS operation.",
        "c) will be filled in by the FMGS."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "66) An FMGS message which requires immediate attention is displayed in:",
      options: ["a) Red", "b) Amber", "c) Magenta"],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText:
          "67) If the FLEX TEMP is not entered on the Takeoff Page of the MCDU:",
      options: [
        "a) A FLX takeoff is still available; set power with the thrust levers.",
        "b) The FMGS will enter it for you based on TAT.",
        "c) A FLX takeoff is not available."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText: "68) Zero Fuel Weight is entered on:",
      options: ["a) Init B page.", "b) Prog page.", "c) Perf page."],
      correctOptionIndex: 0,
    ),
    QuestionModel(
      questionText:
          "69) If the SPD/MACH knob on the FCU is not pulled within a predetermined time to engage selected speed:",
      options: [
        "a) The selection can be made at any time.",
        "b) The selection is lost and dashes are re-displayed.",
        "c) The selection is lost and the display goes blank."
      ],
      correctOptionIndex: 1,
    ),
    QuestionModel(
      questionText: "70) When the altitude knob on the FCU is pulled:",
      options: [
        "a) The altitude is armed.",
        "b) The current altitude is canceled.",
        "c) OPEN CLIMB or DESCENT engages."
      ],
      correctOptionIndex: 2,
    ),
    QuestionModel(
      questionText:
          "71) The Standby Attitude indication will remain available for ______ minutes after total electrical failure.",
      options: ["a) 5", "b) 7", "c) 10", "d) 22"],
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
                    "FMGS & NAV (${_currentIndex + 1}/$totalQuestions)",
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
