// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320ElectricalExamWidget extends StatefulWidget {
  const A320ElectricalExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320ElectricalExamWidgetState createState() =>
      _A320ElectricalExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320ElectricalExamWidgetState extends State<A320ElectricalExamWidget> {
  // --- 76 Electrical Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) The engine generators and APU generator are rated at _____ KVA.",
        ["50", "70", "90", "110"],
        2),
    Question(
        "2) The number 1 AC bus channel normally supplies power to _____ and to the _____ bus which supplies power to the _____ bus.",
        [
          "TR2 / AC ESS SHED / DC ESS SHED",
          "TR1 / AC ESS SHED / DC ESS",
          "TR1 / AC ESS / AC ESS SHED",
          "TR1 / AC ESS / DC ESS SHED"
        ],
        2),
    Question(
        "3) The normal priority for supplying electrical power to the AC busses is:",
        [
          "External power, engine generators then APU",
          "External power, APU, then engine generators",
          "APU, external power then engine generators",
          "Engine generators, external power then APU"
        ],
        3),
    Question(
        "4) The BATTERY BUS is normally powered by:",
        [
          "DC BUS 2",
          "DC BUS 1 and DC BUS 2",
          "DC bus 1 through a DC tie control relay.",
          "DC bus 2 through a DC tie control relay."
        ],
        2),
    Question("5) The A-320 has _____ batteries in its main electrical system.",
        ["1", "2", "3", "3 (4 when ETOPS capable)"], 1),
    Question(
        "6) When no other power is available in flight, the static inverter converts _____ power to AC power for the _____ bus; and _____ powers the _____ bus.",
        [
          "BAT1 DC / AC ESS bus / BAT2 / DC ESS",
          "BAT1 DC / AC ESS SHED / BAT2 / DC ESS SHED",
          "BAT1 DC / AC ESS bus / BAT2 / DC ESS SHED",
          "BAT1 DC / AC ESS bus / DC ESS"
        ],
        0),
    Question(
        "7) An AC ESS FEED switch located on the overhead panel shifts the power source for the AC ESS bus from:",
        [
          "AC bus1 to AC bus 2",
          "AC bus 1 to AC Grnd/Flt bus",
          "AC bus 2 to AC bus 1"
        ],
        0),
    Question(
        "8) Which of the following AC busses can be powered by the emergency generator?",
        ["AC bus 1", "AC bus 2", "AC ESS bus / AC ESS SHED bus"],
        2),
    Question(
        "9) The RAT is connected directly (mechanically) to the Emergency Generator",
        ["True", "False"],
        1),
    Question(
        "10) The emergency generator supplies power as long as:",
        [
          "The landing gear is down.",
          "The RAT is deployed.",
          "The RAT is deployed and the landing gear is down",
          "The landing gear is up."
        ],
        3),
    Question(
        "11) After landing, in the emergency electrical configuration: the batteries automatically connect to the DC BAT bus when speed decreases below _____ knots.",
        ["50", "70", "90", "100"],
        0),
    Question(
        "12) The BAT FAULT light will illuminate when:",
        [
          "Battery voltage is low",
          "Charging current increases at an abnormal rate",
          "Charging current decreases at an abnormal rate."
        ],
        1),
    Question(
        "13) Do not depress the IDG DISCONNECT switch for more than _____ to prevent damage to the disconnect mechanism.",
        ["3 seconds", "7 seconds", "10 seconds", "15 seconds"],
        0),
    Question(
        "14) The IDG Fault light indicates:",
        [
          "An IDG oil overheat",
          "IDG low oil pressure.",
          "IDG low oil pressure or IDG oil overheat",
          "IDG has been disconnected"
        ],
        2),
    Question(
        "15) If normal electrical power is lost; essential cockpit lighting is maintained for the:",
        [
          "Captain's instrument panel.",
          "Standby compass",
          "Right dome light (provided the dome selector is not off).",
          "All of the above."
        ],
        3),
    Question(
        "16) You enter a dark cockpit, what action is necessary before checking the battery voltages?",
        [
          "You have to check that the external power is on.",
          "You have to ensure that at least one battery is on.",
          "You have to ensure that both batteries are on.",
          "You have to verify that both batteries are off."
        ],
        3),
    Question(
        "17) Having starting the APU, how can you get the APU generator to power the electrical system?",
        [
          "The APU generator must be switch on.",
          "By pushing the EXT PWR pushbutton thus disconnecting the external power.",
          "By pushing the BUS TIE pushbutton.",
          "You are unable to as the APU power output is outside normal parameters."
        ],
        1),
    Question(
        "18) Are there any limitations associated with disconnecting an IDG?",
        [
          "Never disconnect an IDG in flight, or push the IDG disconnect push button for more then 30 seconds.",
          "There is no limitation",
          "Never disconnect an IDG in flight, or push the IDG disconnect push button for more then 5 seconds.",
          "Never disconnect an IDG unless the engine is running, nor push the IDG disconnect push button for more than 3 seconds."
        ],
        3),
    Question(
        "19) Which voltage requires recharging or replacing the batteries?",
        [
          "20 volts or less.",
          "24 volts or less.",
          "25.5 volts or less.",
          "26 volts or less."
        ],
        2),
    Question(
        "20) The APU is supplying the electrical system. What is the order of priority for the different generators?",
        [
          "Engines, external power, APU.",
          "APU, engines, external power.",
          "External power, engines, APU.",
          "APU, external power, engines."
        ],
        0),
    Question(
        "21) What is the significance of the green collared circuit breakers?",
        [
          "Green collared circuit breakers are pulled when flying on battery power only.",
          "Green collared circuit breakers are monitored by the ECAM.",
          "Green collared circuit breakers are not to be reset.",
          "Green collared circuit breakers are AC powered."
        ],
        1),
    Question(
        "22) With the EMER EXIT LT selector in the ARM position, which situation will activate the emergency lights and exit signs?",
        [
          "AC SHED bus unpowered",
          "AC bus #1 unpowered",
          "DC ESS SHED bus unpowered",
          "DC bus #2 unpowered"
        ],
        1),
    Question(
        "23) If batteries are the only source of power in flight, how long will battery power be available?",
        [
          "Between 22 and 30 minutes depending on equipment in use.",
          "Until the APU is started.",
          "Two hours and 30 minutes dependent on equipment in use.",
          "45 minutes dependent on equipment in use."
        ],
        0),
    Question(
        "24) What is the minimum voltage when conducting a BATTERY CHECK?",
        [
          "28 volts.",
          "Less than 60 amps in 10 seconds.",
          "Greater than 25 volts.",
          "Greater than 25.5 volts."
        ],
        3),
    Question(
        "25) A battery fault light will illuminate when:",
        [
          "The batteries have auto disconnected due to low voltage.",
          "Battery voltage drops below a predetermined level.",
          "Battery charging current increases at an abnormal rate."
        ],
        2),
    Question(
        "26) Which flight control computer will be inoperative with gear extension while in the Emergency Electrical Configuration?",
        ["FAC 1 and ELAC 1.", "SEC 1", "SEC 1 and ELAC 1", "FAC 1"],
        3),
    Question(
        "27) If the battery voltages are below the minimum, how do you charge them?",
        [
          "You have to call a mechanic because the batteries can only be charged by maintenance.",
          "I have to check that the BAT pushbuttons are on and switch the external power on.",
          "I have to switch the external power to ON and switch the batteries off.",
          "I have to start the APU as the batteries can only be charged by the APU generator."
        ],
        1),
    Question(
        "28) What is the function of APU GEN push button located on the overhead electrical panel?",
        [
          "Push this button to automatically start the APU.",
          "When selected to OFF the APU generator field is de-energized.",
          "Both are correct."
        ],
        1),
    Question(
        "29) Is it possible to parallel generators?",
        [
          "Of course yes.",
          "Only with the RAT deployed.",
          "The electrical system will not allow \"paralleling\" of generators.",
          "Only one engine generator may be paralleled with the APU."
        ],
        2),
    Question(
        "30) While operating on Emergency Electrical Power with the landing gear lowered which of the following control laws is in effect?",
        ["Backup.", "Direct.", "Alternate.", "Backup or alternate"],
        2),
    Question(
        "31) What cockpit lighting is available during an emergency electrical situation?",
        [
          "Emergency path lighting only.",
          "Right side Dome light, main panel flood lights (left two columns only), and the standby compass light.",
          "Located on normal circuit breaker panels.",
          "Right side dome light, main panel flood lights, and the standby compass light."
        ],
        1),
    Question(
        "32) What is the function of the GEN 1 LINE push button?",
        [
          "When selected OFF the avionics compartment isolation valves close.",
          "When selected OFF the #1 generator powers all AC busses.",
          "When selected OFF generator # 1 is removed from all busses but continues to power one fuel pump in each wing."
        ],
        2),
    Question(
        "33) During a routine flight, which of the following would result after the loss of Gen #2 and the subsequent start of the APU?",
        [
          "The APU would now power both sides of the electrical system.",
          "All systems return to normal and the RAT must be restowed.",
          "Eng gen #1 continues to power AC bus #1 and downstream systems. The APU powers AC bus #2 and downstream systems."
        ],
        2),
    Question(
        "34) When does the RAT automatically deploy?",
        [
          "With the loss of two hydraulic systems.",
          "Electrical power to both AC BUS #1 & #2 is lost and the aircraft speed is above 100 knots.",
          "Both are correct."
        ],
        1),
    Question(
        "35) During the five seconds it takes for the RAT to extend:",
        [
          "the BATTERIES power both BATT HOT busses, ESS DC SHED, and ESS AC SHED through the STATIC INVERTER.",
          "The BATTERIES power both BATT HOT busses, ESS DC, and ESS AC through the STATIC INVERTER.",
          "The STATIC INVERTER powers both BATT HOT busses, ESS DC, and ESS AC through the ESS AC SHED busses.",
          "The BATTERIES power both BATT HOT busses."
        ],
        1),
    Question(
        "36) The purpose of the AUTO BUS TIE is to allow either engine-driven IDG to automatically power both main AC buses in the event of a generator loss until either ground power or the APU generator is activated.",
        ["True.", "False."],
        0),
    Question(
        "37) When will the RAT & EMER GEN red FAULT light illuminate?",
        [
          "When the EMER GEN is not supplying electrical power, AC busses #1 & #2 are unpowered and the nose gear is up.",
          "When the RAT is deployed using hydraulic RAT MAN ON push button.",
          "Both are correct."
        ],
        0),
    Question(
        "38) What is the significance of the circuit breakers on the overhead panel?",
        [
          "They are not monitored by ECAM.",
          "Cannot be reset.",
          "They may be operational in the Emergency Electrical Configuration.",
          "They are mainly AC powered."
        ],
        2),
    Question(
        "39) If both engine generators are powering the system, and one subsequently fails, are any busses unpowered?",
        [
          "Only the AC ESS shed bus.",
          "No, but some loads are shed in both main galleys.",
          "Yes, those associated with the failed generator."
        ],
        1),
    Question(
        "40) How many times can you reset a circuit breaker?",
        [
          "Once.",
          "Once, if authorized by the procedures.",
          "Twice.",
          "Twice, if authorized by the procedures."
        ],
        1),
    Question(
        "41) On the cockpit overhead panel, there is a three position EMERGENCY EXIT Light switch. What lights are associated with this switch?",
        [
          "Exit signs, emergency lights, and escape path lighting.",
          "Exit signs, emergency lights, main panel flood lights, and escape path lighting.",
          "Exit signs, emergency lights, dome lights, main panel flood lights, and the standby compass light."
        ],
        0),
    Question(
        "42) Which flight control computers are operational in the Emergency Electrical Power configuration (gear down and batteries powering the system)?",
        [
          "All are operational.",
          "ELAC 1, SEC 1, and FAC 1.",
          "ELAC 1 and 2, SEC 1 and 2, FAC 1.",
          "ELAC 1 and SEC 1."
        ],
        3),
    Question(
        "43) Which radios are inoperative with gear extension while in the emergency electrical configuration?",
        [
          "DME 1 and transponder 1.",
          "DME 1, DDRMI, and transponder 1.",
          "DME, and transponder 1.",
          "ILS 2, DME, and ADF."
        ],
        0),
    Question(
        "44) While operating on Emergency Electrical Power with the landing gear lowered which of the following statements is correct?",
        [
          "If the APU is not operating it should be started at this time.",
          "The APU will not start until the aircraft has come to a complete stop and all power has been removed for 15 seconds.",
          "On the ground at 100 knots, the DC BATTERY BUS automatically reconnects to the batteries allowing APU start.",
          "At 70 knots ESS AC is disconnected from the batteries."
        ],
        2),
    Question(
        "45) If during a normal flight the BUS TIE push button is depressed to \"OFF\", what effect would this have on power to the busses?",
        [
          "None.",
          "All power would be lost and the aircraft would be powered by the batteries until the RAT was up to speed.",
          "The power transfer would switch to the opposite bus.",
          "This is not possible as the bus tie contactors are locked out during flight."
        ],
        0),
    Question(
        "46) While operating on Emergency Electrical Power (EMER GEN powering the system, FAC #1 reset) which of the following control laws are in effect?",
        ["Manual", "Alternate.", "Backup", "Manual and backup"],
        1),
    Question(
        "47) Can you reconnect an IDG in flight?",
        [
          "Yes, but only after contacting maintenance control.",
          "Yes, push and hold the IDG pb until the GEN fault light is no longer illuminated.",
          "No, it is not possible."
        ],
        2),
    Question(
        "48) Which communication and navigation radios are operational in the Emergency Electrical Configuration with the EMER GEN powering the system?",
        [
          "ACP 1 and 2, VHF 1, HF, RMP 1, VOR 1, and ILS 1.",
          "VHF 1, RMP 1, VOR 1.",
          "RMP #1 & #2, VHF #1, HF (if equipped), ACP #1, VOR #1 and ILS #1.",
          "All radios are lost."
        ],
        0),
    Question(
        "49) Which condition will automatically illuminate the escape lights?",
        [
          "AC ESS SHED bus not powered.",
          "Loss of power to the AC bus 1.",
          "DC ESS BUS not powered.",
          "DC ESS SHED bus not powered."
        ],
        2),
    Question(
        "50) What is the meaning of the green AVAIL light?",
        [
          "External power is plugged in and parameters are normal. You must push the external power to connect it.",
          "External power is available to the batteries only.",
          "The external power panel door has been opened",
          "External power is supplying the aircraft systems"
        ],
        0),
    Question(
        "51) What does the blue EXT PWR ON light mean?",
        [
          "External power is plugged in and parameters are normal",
          "External power is supplying the aircraft's electrical system.",
          "There is a fault with the external power."
        ],
        1),
    Question(
        "52) If EXTERNAL power is available and within limits:",
        [
          "It will automatically close the bus tie contactors's when connected by the ground crew.",
          "The green AVAIL light will illuminate on the EXT PWR push button.",
          "The BUS TIE push button illuminates."
        ],
        1),
    Question(
        "53) Is it possible to determine the source of power for aircraft busses",
        [
          "It is indicated on the electrical schematic overhead.",
          "No it is not possible.",
          "Yes, press the ECAM ELEC push button and view the electrical schematic on the ECAM.",
          "Only when operating in the Emergency Electrical Configuration."
        ],
        2),
    Question(
        "54) Both batteries are charged by the external power unit. Approximately how long does the charging process take?",
        [
          "10 minutes.",
          "20 minutes.",
          "30 minutes.",
          "Between 30 and 45 minutes."
        ],
        1),
    Question(
        "55) While operating on Emergency Electrical Power (EMER GEN powering the system) what should the crew accomplish prior to lowering the landing gear?",
        [
          "Check to see that the FMGC has auto tuned the appropriate NAV facility for the approach to be accomplished.",
          "Depress the guarded RMP NAV push button and tune the appropriate NAV facility and course for the approach to be accomplished.",
          "Both are correct."
        ],
        1),
    Question(
        "56) The GALLEY FAULT light illuminates when any generator is exceeding 80% of its rated output.",
        ["True.", "False."],
        1),
    Question(
        "57) If the source of power for the ESS AC bus is lost, does another source of power automatically power the bus?",
        [
          "Yes, transfer is automatic.",
          "Yes, only if AUTO was selected on the AC ESS FEED push button.",
          "No, this must be done by the crew."
        ],
        2),
    Question(
        "58) What would cause the GALLEY fault light to illuminate?",
        [
          "The flight attendants have all the coffee makers and ovens on at once.",
          "The Main Galley has shed.",
          "The load on any generator is above 100% of its rated output.",
          "The Aft Galley has shed."
        ],
        2),
    Question(
        "59) While operating on Emergency Electrical Power (EMER GEN powering the system) how is it possible to properly complete the ECAM checklist with only an upper display?",
        [
          "Depress and hold the specific ECAM page push button on the ECAM control panel.",
          "Transfer occurs automatically.",
          "This is not possible. Use the cockpit operating manual."
        ],
        0),
    Question(
        "60) After IDG disconnection why do you get a GALLEY SHED indication on the SD?",
        [
          "It is a reminder to push the GALLEY pushbutton to manually shed the main galley.",
          "It is a reminder to get the flight attendants to switch off galley equipment to decrease the load on the remaining generator.",
          "It is a reminder that the main galley has been shed automatically following the loss of one generator."
        ],
        2),
    Question(
        "61) Which busses will be powered after the RAT is extended and the EMER GEN begins producing power?",
        [
          "BATT HOT busses, ESS DC, ESS DC SHED, ESS AC and ESS AC SHED.",
          "The STATIC INVERTER would power both HOT BATT busses, ESS DC and ESS AC through the ESS AC SHED busses.",
          "The BATTERIES would power both HOT BATT busses, ESS DC and ESS AC through the STATIC INVERTER.",
          "ESS DC, ESS DC SHED, ESS AC and ESS AC SHED."
        ],
        0),
    Question(
        "62) Engine #1 has just been started and the APU is inoperative. The EXT PWR push button blue ON light is illuminated. Which of the statements below is correct?",
        [
          "External power is supplying all electrical needs.",
          "Engine Gen #1 is supplying AC bus #1 and the downstream systems, and AC bus #2 through the bus tie contactors.",
          "Gen #1 supplies AC bus #1 and (generally) the downstream systems; Ext power supplies AC bus #2."
        ],
        2),
    Question(
        "63) In cruise, you have suddenly a Master Warning and caution comes on with ELEC EMER CONFIG and APP OFF. You notice a red FAULT light on the RAT & EMER GEN pushbutton. What do you think of this indication?",
        [
          "The EMER GEN is not yet supplying the system.",
          "The RAT has failed. You will have to turn the batteries to OFF.",
          "The FAULT light is always on when are in ELEC EMER CONFIG.",
          "The RAT has failed, you have to try to reconnect both IDG's."
        ],
        0),
    Question(
        "64) When are the Essential Shed buses powered by the battery?",
        [
          "Never. The purpose of the shed buses is to reduce the load on the batteries.",
          "In case of double generator failure.",
          "After every IDG connection"
        ],
        0),
    Question(
        "65) The AC Essential bus is powered by the battery at speed above 50 kt.",
        ["True.", "False."],
        1),
    Question(
        "66) In normal electrical configuration, how is DC ESS bus supplied:",
        [
          "From TR 1 via DC Bus 1 and DC Bat Bus",
          "From ESS TR",
          "From TR 2",
          "From Bat 2"
        ],
        0),
    Question(
        "67) What happens in case of total loss of main generators?",
        [
          "The RAT is automatically extended and powers the yellow system which drives the emergency generator",
          "The RAT is automatically extended and powers the blue system which drives the emergency generator",
          "The RAT has to be manually extended",
          "The RAT is extended and mechanically connected to the emergency generator."
        ],
        1),
    Question(
        "68) DC Bat Bus can be supplied by:",
        [
          "DC Bus 1 or batteries",
          "DC Bus 1, DC Bus 2 or batteries",
          "DC Bus 2 or batteries",
          "DC Bus 1 only"
        ],
        1),
    Question("69) Normal minimum battery voltage before APU start is:",
        ["No minimum", "27.5 Volts", "25.5 Volts", "22.5 Volts"], 2),
    Question(
        "70) When disconnecting the IDG the button should be pressed:",
        [
          "For no more than 5 seconds",
          "Until the fault light goes out",
          "For longer than 3 seconds",
          "For no more than 3 seconds"
        ],
        3),
    Question(
        "71) Where can the battery voltage be checked?",
        [
          "On the ECAM elec. Page only",
          "On the elec. overhead panel and ECAM E/WD",
          "On the elec. overhead panel only",
          "On the elec. overhead panel and ECAM elec. Page"
        ],
        3),
    Question(
        "72) In flight on batteries only, the AC Ess Shed bus and DC Ess Shed bus are lost.",
        [
          "Yes",
          "No",
          "Only A/C Ess Shed Bus is lost",
          "Only D/C Ess Shed Bus is lost"
        ],
        0),
    Question(
        "73) The static inverter works:",
        [
          "Always",
          "When aircraft speed is > 50 kt and on batteries only.",
          "When one main generator fails",
          "Only when generator 2 fails"
        ],
        1),
    Question(
        "74) If a TR fails:",
        [
          "The other TR automatically replaces the faulty one and the ESS TR supplies the DC Ess Bus",
          "The static inverter replaces the faulty TR",
          "The DC Bus on the faulty side is lost",
          "The Emergency generator supplies DC power on the faulty side."
        ],
        0),
    Question(
        "75) In flight in case of loss of all main generators, emergency generator not running, the DC ESS Bus is supplied by:",
        ["Hot bus 2", "Ess TR", "Hot Bus and Ess TR", "Hot Bus 1"],
        0),
    Question("76) If AC Bus 1 fails the AC Ess bus is supplied by:",
        ["Emer Gen.", "The RAT", "Static Inverter", "AC Bus 2"], 3)
  ];

  // --- State Variables ---
  String mode = "MENU"; // MENU, STUDY, EXAM, RESULTS, REVIEW_WRONG
  int currentIndex = 0;

  // Maps to track selected answers based on the mode
  Map<int, int> examSelectedAnswers = {};
  Map<int, Set<int>> studySelectedAnswers = {};
  Set<int> markedForReview = {};

  // Exam Mode Specific (114 minutes for 76 questions)
  int examDurationSeconds = 114 * 60;
  int timeLeft = 114 * 60;
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
            Icon(Icons.bolt,
                size: 100,
                color: Colors.blueAccent.withOpacity(0.9)), // Electrical Icon
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
              "ELECTRICAL", // Updated Title
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
                  "ELECTRICAL", // Updated Title
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
