// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class IndicatingAndRecordingQuizWidget extends StatefulWidget {
  final double? width;
  final double? height;

  const IndicatingAndRecordingQuizWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _IndicatingAndRecordingQuizWidgetState createState() =>
      _IndicatingAndRecordingQuizWidgetState();
}

class _IndicatingAndRecordingQuizWidgetState
    extends State<IndicatingAndRecordingQuizWidget> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _showResult = false;
  int? _selectedAnswerIndex;
  bool _isAnswerChecked = false;

  late Timer _timer;
  late int _timeLeft;

  final List<Map<String, dynamic>> _questions = [
    {
      "question": "1) What does a pulsing green engine parameter indicate?",
      "options": [
        "An ADVISORY, the parameter is about to reach the limit.",
        "An ADVISORY, the parameter is out of the limits",
        "A MEMO, the parameter has a faulty indication.",
        "A level 3 failure requiring immediate crew action."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "2) On a bottom of the STATUS page, what does the green arrow mean?",
      "options": [
        "It is a reminder to land as soon as possible.",
        "It indicates that there is a system page behind.",
        "It means that there is more information to be seen."
      ],
      "correctIndex": 2
    },
    {
      "question": "3) When should the EMER CANC push button be used?",
      "options": [
        "At the completion of an ECAM procedure for an abnormal procedure.",
        "Whenever a LEVEL 3 warning or LEVEL 2 caution occurs.",
        "Whenever a repetitive visual or aural warning, or caution is received that the crew has determined to be false."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "4) The actual speed is indicated by the ______ reference line.",
      "options": ["yellow", "amber", "red", "white"],
      "correctIndex": 0
    },
    {
      "question": "5) If a PFD fails, does anything happen automatically?",
      "options": [
        "The ATT HDG switch must be used on the switching panel in order to recover PFD information.",
        "The image automatically transfers to the display formerly occupied by the ND.",
        "The image automatically transfers to the UPPER ECAM.",
        "It has to be manually activated."
      ],
      "correctIndex": 1
    },
    {
      "question":
          "6) Course information from the #1 ILS receiver will be displayed:",
      "options": [
        "On the captain's PFD when the captain's ILS push button is selected ON",
        "On the FO's PFD when his ILS push button is selected on and on the captain's ND, when the captain's ND is selected to ILS ROSE.",
        "On the captain's PFD and ND when the captain's ILS push button is selected ON.",
        "The first two statements are correct"
      ],
      "correctIndex": 0
    },
    {
      "question": "7) Information from the #1 VOR receiver will be displayed:",
      "options": [
        "On the capt's PFD when the captain's VOR bearing selector is selected to VOR.",
        "On the capt 's ND when the capt 's VOR bearing selector is selected to VOR.",
        "VOR #1 course information is available on the captain's PFD and ND when the captain's ILS pb is selected ON."
      ],
      "correctIndex": 1
    },
    {
      "question": "8) What causes a display unit (DU) to go blank?",
      "options": [
        "Loss of power.",
        "Display unit internal failure.",
        "Both are correct."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "9) What causes a DU to display a black screen with a white diagonal line?",
      "options": ["DMC failure.", "No power.", "Both are correct."],
      "correctIndex": 0
    },
    {
      "question":
          "10) The maximum speed to select next higher flap setting is indicated by two amber dashes.",
      "options": ["True.", "False."],
      "correctIndex": 0
    },
    {
      "question":
          "11) VOR, ILS, and NDB raw data information is displayed on the ND in which of the following modes?",
      "options": [
        "VOR, RMI and NDB information may be displayed in the ARC or ROSE NAV modes.",
        "VOR and ILS information can be displayed in the ROSE VOR and ROSE ILS modes respectively",
        "Both are correct."
      ],
      "correctIndex": 2
    },
    {
      "question": "12) The presence of VOR1 in red on the ND indicates:",
      "options": [
        "The VOR station currently tuned is out of range.",
        "The VOR station currently tuned is out of service.",
        "The # 1 VOR receiver is inoperative.",
        "The VOR station currently tuned is out of range."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "13) What is the meaning of \"9000\" in blue at the top of the altitude scale?",
      "options": [
        "It marks the FCU selected altitude.",
        "It marks the airfield elevation.",
        "It marks the transition altitude.",
        "It marks the decision height."
      ],
      "correctIndex": 0
    },
    {
      "question": "14) How many DMC's are there?",
      "options": ["1", "2", "3", "4"],
      "correctIndex": 2
    },
    {
      "question":
          "15) After a single DMC failure, how could a crew member recover the display units?",
      "options": [
        "It is done automatically.",
        "Once a DMC has failed, the information is unrecoverable.",
        "Rotate the EIS DMC switch on the switching panel to replace the failed DMC with DMC #3."
      ],
      "correctIndex": 2
    },
    {
      "question": "16) Where is information displayed by DMC #1 and DMC#2?",
      "options": [
        "DMC#1 supplies data to PFD#1, ND#1, and lower ECAM. DMC #2 supplies data to PFD#2, ND#2, and upper ECAM.",
        "DMC#1 supplies data to PFD#1, PFD#2, and upper ECAM. DMC #2 supplies data to ND#1, ND#2, and lower ECAM.",
        "DMC#1 supplies data to PFD#1, ND#1, and upper ECAM. DMC #2 supplies data to PFD#2, ND#2, and lower ECAM.",
        "DMC#1 supplies data to PFD#1, ND#2, and lower ECAM. DMC #2 supplies data to PFD#2, ND#1, and upper ECAM."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "17) If the lower ECAM DU fails, is there a way to retrieve that information?",
      "options": [
        "By pressing and holding the related systems page push button on the ECAM control panel, the page will be displayed on the UPPER ECAM.",
        "By rotating the ECAM/ND XFR switch on the switching panel, the lower ECAM page will be transferred to either the Captain or FO's ND.",
        "Both are correct."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "18) If the UPPER ECAM DU fails, what will be displayed on the lower unit?",
      "options": [
        "System display page.",
        "Engines and Warning page (E/WD)",
        "Status page."
      ],
      "correctIndex": 1
    },
    {
      "question": "19) Weather radar can be displayed in what modes on the ND?",
      "options": [
        "ARC and ROSE NAV modes only.",
        "ROSE VOR and ROSE ILS modes.",
        "ROSE VOR and ROSE ILS modes.",
        "All modes except plan."
      ],
      "correctIndex": 3
    },
    {
      "question":
          "20) RNAV position information is displayed on the ND in which of the following modes?",
      "options": [
        "ARC and ROSE NAV modes only.",
        "ROSE VOR and ROSE ILS modes.",
        "ARC, ROSE and PLAN modes.",
        "ROSE VOR mode."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "21) Once the crewmember has completed viewing a specific system, what is the correct procedure for clearing the screen and returning it to a normal presentation?",
      "options": [
        "Press the respective system push button again.",
        "It goes away by itself.",
        "Press CLR on the ECAM control panel.",
        "Press twice CLR on the ECAM control panel."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "22) After the engine shutdown, you observe a pulsing STS message. What does it mean?",
      "options": [
        "It is an indication that at least one system requires crew attention.",
        "It is an indication that the aircraft has not been shut down correctly.",
        "It is a reminder that the status page holds a maintenance message."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "23) The upper ECAM Display Unit (DU) has failed. You want to see the DOOR/OXY page. How can you see it?",
      "options": [
        "You have to press and hold the DOOR key on the ECP.",
        "You have to switch the EIS DMC to CAPT3",
        "You have to press and hold the RCL key on the ECP."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "24) Both ECAM screens have failed. Is it possible to get E/WD indications?",
      "options": [
        "Yes, the E/WD is automatically transferred to one of the NDs.",
        "No. The E/WD is lost until the aircraft can be repaired.",
        "Yes, to get E/WD information. It must be manually transferred to one of the NDs.",
        "Yes. E/WD information is automatically transferred to the the F/O's PFD in the event of an ECAM warning."
      ],
      "correctIndex": 2
    },
    {
      "question": "25) How are the FMAs displayed on the PFD?",
      "options": [
        "There are 5 columns and 3 rows.",
        "There are 3 columns and 5 rows.",
        "There are 3 columns and 2 rows.",
        "There are 4 columns and 2 rows."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "26) In case of a double FWC failure master caution light, master warning light, aural warnings and ECAM cautions and warnings are lost.",
      "options": ["True.", "False."],
      "correctIndex": 0
    },
    {
      "question":
          "27) How did the PNF cancel the caution for the NAV ILS 1 FAULT before calling the STATUS page on the ECP?",
      "options": [
        "By pressing the EMER CANC pushbutton.",
        "By pressing the CLR key",
        "By pressing the STS key",
        "By pressing the ALL key."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "28) How can the ILS 1 FAULT be restored from being a CANCELLED CAUTION?",
      "options": [
        "By resetting the appropriate circuit breaker.",
        "By pressing and holding any CLR key for more than 3 seconds.",
        "By pressing the EMER CAN pushbuttton for more than 3 seconds.",
        "By pressing and holding the RCL key for more than 3 seconds."
      ],
      "correctIndex": 3
    },
    {
      "question":
          "29) VLS is the lowest speed that the autoflight system (autopilot or A/THR) will fly the aircraft. This is a dynamic speed corresponding to an Angle Of Attack (AOA).",
      "options": [
        "VLS will change with wing configuration change.",
        "With speedbrake extension, VLS will increase",
        "Above FL200, VLS will provide a 0.2g buffet margin",
        "All of the above."
      ],
      "correctIndex": 3
    },
    {
      "question":
          "30) The Speed Trend Arrow is a dynamic information displaying the speed t which the aircraft will be in ______.",
      "options": ["5 seconds.", "8 seconds", "10 seconds", "13 seconds."],
      "correctIndex": 2
    },
    {
      "question":
          "31) Of the three types of EIS displays, which one has the lowest priority?",
      "options": ["The ND", "The PFD", "The SED"],
      "correctIndex": 0
    },
    {
      "question":
          "32) As you approach a selected altitude, when will the yellow altitude window start flashing?",
      "options": [
        "As you approach within 750 ft of FCU selected altitude and stop when it is within 250 ft.",
        "As you approach within 1000 ft of FCU selected altitude and stop when it is within 150 ft.",
        "As you approach within 500 ft of FCU selected altitude and stop when it is within 150 ft.",
        "As you approach within 900 ft of FCU selected altitude and stop when it is within 200 ft."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "33) The Flight Path vector (FPV) represents the lateral and vertical trajectory of the aircraft with respect to the ground. On the lateral scale, it indicates the aircraft's track. On the vertical scale, it indicates the aircraft's flight path angle.",
      "options": ["True.", "False."],
      "correctIndex": 0
    },
    {
      "question": "34) When does the Side Stick Order indicator display?",
      "options": [
        "After first engine start and disappears when passing 400 feet RA",
        "After first engine start and disappears after rotation",
        "After second engine start and disappears when passing 400 feet RA",
        "After second engine start and disappears when passing 400 feet RA"
      ],
      "correctIndex": 1
    },
    {
      "question": "35) When is the 'Green Dot' displayed?",
      "options": [
        "Only when flap handle is the zero position.",
        "Only when flap handle is the zero position, above FL80",
        "Only when flap handle is the zero position, below FL80",
        "Only when flap handle is the zero position, below FL85"
      ],
      "correctIndex": 0
    },
    {
      "question": "36) What does Green Dot represent?",
      "options": [
        "Maneuvering speed in clean configuration",
        "Maneuvering speed in clean configuration when speed is managed.",
        "The next flap extend (VFE) max speed",
        "The flap extend min speed from clean configuration"
      ],
      "correctIndex": 1
    },
    {
      "question":
          "37) The green 'S' of the speedtape is the Minimum Slat Retraction Speed. It is only displayed when the flap handle position is in position 1.",
      "options": ["True.", "False."],
      "correctIndex": 0
    },
    {
      "question": "38) When will the PFD Heading tape revert to TRU heading?",
      "options": [
        "North of 73° North or South of 60° South",
        "South of 73° North or North of 60° South.",
        "North of 80° North or South of 73°South",
        "North of 78° North or South of 78°South"
      ],
      "correctIndex": 0
    },
    {
      "question": "39) Is the Side Slip indicator always yellow?",
      "options": [
        "Yes.",
        "No, it turns blue when it becomes a beta target (displaying optimum side slip for a given configuration)",
        "No, it turns orange when it becomes a beta target ."
      ],
      "correctIndex": 1
    },
    {
      "question": "40) When will the Flight Directors bars flash?",
      "options": [
        "When a reversion occurs.",
        "When loss of LOC or G/S signal in LAND mode.",
        "All of the above."
      ],
      "correctIndex": 2
    },
    {
      "question":
          "41) The Flight Director bars are out of view when Bank angle exceeds 67°.",
      "options": ["True", "False."],
      "correctIndex": 1
    },
    {
      "question":
          "42) If the FPV (Flight Path Vector) symbol is right of center, where is the wind coming from?",
      "options": ["Right.", "Left.", "It depends of the Track followed"],
      "correctIndex": 1
    },
    {
      "question":
          "43) If the FPV is above the horizon line, what is the aircraft actually doing?",
      "options": ["Descending.", "Maintaining FL.", "Climbing.", "Cannot say."],
      "correctIndex": 2
    },
    {
      "question":
          "44) The Glide slope index will flash continuously when the deviation exceeds ______ above ______",
      "options": [
        "1/2 dot below 120 feet RA",
        "1 dot above 100 feet RA",
        "1 dot above 60 ft RA",
        "1/2 dot below 100 feet RA."
      ],
      "correctIndex": 1
    },
    {
      "question":
          "45) Both LOC and glideslope will flash if, after capture, the signal is lost.",
      "options": ["True.", "False."],
      "correctIndex": 0
    },
    {
      "question":
          "46) The lower end of a red and black strip along the speed scale defines the VMAX speed.",
      "options": [
        "It is the lowest of the following VMO (or MMO), VLE, VFE",
        "It is the speed corresponding to the stall warning (VSW)",
        "It represents the speed corresponding to the angle of attack at which alpha protection becomes active."
      ],
      "correctIndex": 0
    },
    {
      "question":
          "47) The SD displays the Gross Weight (GW) in green as soon as the second engine is started.",
      "options": ["True.", "False."],
      "correctIndex": 1
    },
    {
      "question":
          "48) In case of PFDU failure, the PFD image is transferred to the NDU:",
      "options": [
        "Manually",
        "Automatically",
        "Either manually or automatically",
        "The PFD image cannot be displayed on the ND."
      ],
      "correctIndex": 1
    },
    {
      "question": "49) What is the basic role of the DMCs:",
      "options": [
        "They compute and elaborate displays",
        "Generation of audio warnings",
        "Generation of amber warnings",
        "Generation of synthetic voice messages"
      ],
      "correctIndex": 0
    },
    {
      "question":
          "50) Do the Check ATT. Messages appear on both PFDs at the same time?",
      "options": [
        "Yes",
        "No",
        "Message only appears on the EWD",
        "Message only appears on ECAM"
      ],
      "correctIndex": 0
    },
    {
      "question":
          "51) FACs calculate speed trend and VLS. The extremities of the trend vector and V1s segment indicate respectively; speed value at the next 10 seconds and 1.23 Vs 1 g with present configuration. Is this correct?",
      "options": [
        "Yes (for both cases)",
        "No (for both cases)",
        "No because VLS is not 1.23 Vs 1g",
        "No because the tip of the speed arrow is not the speed in 10 seconds time"
      ],
      "correctIndex": 0
    },
    {
      "question":
          "52) With radar selected on, what can you read on ND about antenna setting?",
      "options": [
        "Tilt angle",
        "Tilt angle and gain mode",
        "Roll angle and tilt angle",
        "Nothing"
      ],
      "correctIndex": 1
    }
  ];

  @override
  void initState() {
    super.initState();
    // ضبط الوقت: 52 سؤال * 60 ثانية = 52 دقيقة أوتوماتيك
    _timeLeft = _questions.length * 60;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timer.cancel();
          _showResult = true;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _checkAnswer() {
    if (_selectedAnswerIndex == null) return;

    setState(() {
      _isAnswerChecked = true;
      if (_selectedAnswerIndex ==
          _questions[_currentQuestionIndex]['correctIndex']) {
        _score++;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (_currentQuestionIndex < _questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _selectedAnswerIndex = null;
          _isAnswerChecked = false;
        });
      } else {
        setState(() {
          _showResult = true;
          _timer.cancel();
        });
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _showResult = false;
      _selectedAnswerIndex = null;
      _isAnswerChecked = false;
      _timeLeft = _questions.length * 60;
      _startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showResult) {
      return Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz Completed!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              "Your Score: $_score / ${_questions.length}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _restartQuiz,
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      );
    }

    final currentQuestion = _questions[_currentQuestionIndex];

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Question ${_currentQuestionIndex + 1}/${_questions.length}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                _formatTime(_timeLeft),
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            currentQuestion['question'],
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ...List.generate(currentQuestion['options'].length, (index) {
            Color buttonColor = Colors.white;
            if (_isAnswerChecked) {
              if (index == currentQuestion['correctIndex']) {
                buttonColor = Colors.green.shade200; // الإجابة الصحيحة
              } else if (index == _selectedAnswerIndex) {
                buttonColor = Colors.red.shade200; // الإجابة الخاطئة
              }
            } else if (_selectedAnswerIndex == index) {
              buttonColor = Colors.blue.shade100; // الاختيار قبل التأكيد
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: _isAnswerChecked
                    ? null
                    : () {
                        setState(() {
                          _selectedAnswerIndex = index;
                        });
                      },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    currentQuestion['options'][index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            );
          }),
          const Spacer(),
          ElevatedButton(
            onPressed: (_selectedAnswerIndex != null && !_isAnswerChecked)
                ? _checkAnswer
                : null,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text("Submit Answer", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
