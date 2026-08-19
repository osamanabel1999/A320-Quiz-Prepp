// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class A320ExamWidget extends StatefulWidget {
  const A320ExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _A320ExamWidgetState createState() => _A320ExamWidgetState();
}

class Question {
  final String qText;
  final List<String> options;
  final int correctIndex;

  Question(this.qText, this.options, this.correctIndex);
}

class _A320ExamWidgetState extends State<A320ExamWidget> {
  // --- 111 Questions Data ---
  final List<Question> allQuestions = [
    Question(
        "1) Conditioned air is distributed to:",
        [
          "Cockpit, cargo bays and cabin",
          "Cockpit, fwd and aft cabins",
          "Cockpit, avionics bay and cabin",
          "Cockpit, cabin and holds 1 and 2 only"
        ],
        1),
    Question(
        "2) Hot air fault light illuminates on the air conditioning panel:",
        [
          "The hot air press. reg. valve opens and the trim air valves close.",
          "The hot air press. reg. valve closes and the trim air valves open.",
          "The hot air press. reg. valve closes and the trim air valves close.",
          "The hot air press. reg. valve opens and the trim air valves open."
        ],
        2),
    Question(
        "3) Does the trim air provide the warm air or the cold air to the air conditioning system?",
        ["Cold air", "Warm air"],
        1),
    Question(
        "4) In case of zone controller primary and secondary channel failure, what temperatures are maintained by pack one and pack two?",
        [
          "15 deg.C both",
          "25 deg.C both",
          "20 deg.C for pack one and 10 deg.C for pack two",
          "24 deg.C for pack one and 15 deg.C for pack two"
        ],
        2),
    Question(
        "5) In normal flight in closed circuit configuration, the avionics ventilation system controls the temperature of the cooling air by:",
        [
          "Adding air conditioned air to the flow",
          "Extracting air overboard",
          "Adding avionics bay air",
          "Passing air through a skin heat exchanger."
        ],
        3),
    Question(
        "6) To enable Ram air to the mixer unit, The Ram air switch should be used:",
        [
          "At any time",
          "Only when differential pressure is less than 1 psi.",
          "When pressure is greater than 1 psi diff.",
          "Only after outflow valve is fully opened."
        ],
        1),
    Question(
        "7) Pack controller, primary channel failure.",
        [
          "The secondary computer operates as a backup mode and regulation is not optimized",
          "The secondary computer takes over (all functions as normal)",
          "Pack is lost",
          "Pack outlet temperature is controlled at 15 deg.C"
        ],
        0),
    Question(
        "8) Pack controller, secondary channel failure",
        [
          "No effect on pack regulation backup mode is lost",
          "Pack is lost",
          "No effect (all modes still available)",
          "Pack outlet temperature is controlled at 15 deg.C"
        ],
        0),
    Question(
        "9) Pack controller, primary and secondary channel failure",
        [
          "Pack outlet temperature is controlled to between 5 and 30 deg C by the anti-ice valve",
          "The pack is closed",
          "The packs deliver a fixed temperature of 20 deg.C"
        ],
        0),
    Question(
        "10) Hot air press. reg. valve failed open:",
        [
          "Optimized regulation is lost",
          "The temperature stays at the value selected",
          "No effect",
          "Cabin temperature will be controlled at the upper limit 30 deg.C"
        ],
        2),
    Question(
        "11) Bleed air supplied from the APU (APU bleed valve open), the pack flow is automatically selected:",
        ["High", "Normal", "Low", "Econ. Flow"],
        0),
    Question(
        "12) Trim air valve, each one optimizes the temperature by:",
        [
          "Adding hot air",
          "Adding fresh air",
          "Modulating of pack flow",
          "Adding recirculated air"
        ],
        0),
    Question(
        "13) Hot air pressure regulating valve:",
        [
          "Regulates the pressure of hot air tapped upstream of the packs",
          "Is spring loaded open in the absence of air",
          "Opens automatically in case of duct overheat",
          "Opens automatically if the cabin trim air valve fails"
        ],
        0),
    Question(
        "14) Pack flow control valve:",
        [
          "Is pneumatically operated and electrically controlled",
          "Electrically operated and pneumatically controlled",
          "Opens automatically during engine starting",
          "Is spring loaded to open."
        ],
        0),
    Question(
        "15) Engine flow demand, when the heating or cooling demand in one zone cannot be satisfied:",
        [
          "The minimum idle must be increased manually",
          "The minimum idle is increased automatically",
          "In any case, flight idle is sufficient",
          "The APU must be used to supply additional air."
        ],
        1),
    Question("16) What is the Norm.Max. cabin altitude?",
        ["8,000 ft", "9,550 ft +/- 350 ft", "14,000 ft", "800 ft"], 0),
    Question("17) What is the Max. negative Diff. pressure for the cabin?",
        ["0 psi.", "1 psi.", "2 psi.", "8.6 psi."], 1),
    Question(
        "18) It is permissible to use simultaneously packs and Lp ground unit during long stops in a hot airfield",
        [
          "Yes",
          "No",
          "Yes, if external temperature is greater than 50 deg.C",
          "Yes, provided the airflow supplied by the ground cart is less than 1.2 kg/s"
        ],
        1),
    Question(
        "19) What are the different sources of air for air conditioning and pressurization?",
        [
          "Engine bleed air and recirculated air (only on ground)",
          "Engine bleed air and recirculated air.",
          "Engine bleed air and recirculated air, or if selected, APU bleed air and recirculated air.",
          "Engine bleed air only."
        ],
        2),
    Question(
        "20) During the exterior preflight on a warm day, in what position would you expect to find the avionics ventilation system INLET and EXTRACT valves to be in?",
        [
          "Closed.",
          "Open.",
          "Closed or open regarding of the APU bleed valve.",
          "Closed or open"
        ],
        1),
    Question(
        "21) What happens to the pack flow control valves during engine start?",
        [
          "They must be selected off.",
          "They must be selected off on cold days only.",
          "They must be selected off on hot days only.",
          "They automatically close."
        ],
        3),
    Question(
        "22) The temperature of each aircraft zone is optimized by means of:",
        [
          "A HOT AIR valve.",
          "A ZONE control valve.",
          "A PACK FLOW VALVE.",
          "A TRIM AIR valve."
        ],
        3),
    Question(
        "23) When does normal pressurization occur?",
        [
          "After second engine start.",
          "Pressurization occurs during taxi",
          "Pressurization occurs during the takeoff roll.",
          "After rotation."
        ],
        2),
    Question(
        "24) When does normal depressurization occur?",
        [
          "100 feet AGL above touchdown.",
          "It is complete 1 minute after touchdown.",
          "After flap retraction.",
          "On landing touchdown"
        ],
        1),
    Question(
        "25) Under what conditions should the pack flow controller be set to LO?",
        [
          "With a low passenger load to reduce bleed air demand and improve fuel efficiency.",
          "With a low passenger load to increase cabin temperature",
          "With a high passenger load to reduce cabin temperature",
          "In cold conditions to achieve a higher cabin temperature range."
        ],
        0),
    Question(
        "26) Which statement is correct regarding illumination of the amber AFT ISOL VALVE fault light?",
        [
          "Automatically closes the aft cargo compartment isolation valves.",
          "Means that either the inlet or outlet isolation valve(s) disagrees with the switch position.",
          "Indicates that the extract fan has stopped.",
          "All of the above."
        ],
        1),
    Question(
        "27) Pressurization controllers receive inputs from:",
        [
          "LGCIU, ADIRU, FMGS, and EIU.",
          "LGCIU's and the MCDU.",
          "LGCIU's and pitot static sources.",
          "MCDU and LGCIU's."
        ],
        0),
    Question(
        "28) What computers control the cabin and cockpit conditioned air?",
        [
          "Two zone controllers that pass information and requests to two pack controllers.",
          "Two pack controllers that pass information and requests to three zone controllers.",
          "Three zone controllers that pass information and instructions to two pack controllers for three zones.",
          "One zone controller that passes information and instructions to two pack controllers for three zones."
        ],
        3),
    Question(
        "29) When would you select RAM AIR ON?",
        [
          "If additional cooling is required on the ground.",
          "Dual pack failure or smoke removal.",
          "When pack temperatures are too high.",
          "When there is smoke in the cabin."
        ],
        1),
    Question(
        "30) What happens when a temperature selector rotary knob is adjusted?",
        [
          "A signal is sent to the zone controller requesting a different temperature.",
          "Nothing as there is no relationship between a temperature selector knob and the trim air valve.",
          "The associated trim air valve immediately moves to a different position."
        ],
        0),
    Question(
        "31) With APU BLEED ON and engine BLEED switches ON with engines running, what is the position of the engine bleed valves?",
        ["Closed", "Open", "Depends on the crossbleed selector"],
        0),
    Question(
        "32) Pressurization is normally automatic. Can you interfere with it?",
        [
          "Yes, CABIN PRESS MODE SEL to OVERRIDE and MAN V/S CTL toggle switch.",
          "Yes, manually set landing elevation using the LND ELEV AUTO selector.",
          "Both are correct."
        ],
        0),
    Question(
        "33) Under what conditions should the pack flow controller be set to HI?",
        [
          "In cold conditions to achieve a higher cabin temperature range.",
          "With a low passenger load to increase cabin air flow.",
          "With a high passenger load in hot conditions in order to help reduce the cabin temperature."
        ],
        2),
    Question(
        "34) What is the function of the ram air valve?",
        [
          "Ventilation while on the ground.",
          "Emergency smoke removal and ventilation in the event of dual pack failure.",
          "Avionics cooling.",
          "Cargo ventilation & avionics cooling."
        ],
        1),
    Question(
        "35) Placing the EXTRACT push button to override:",
        [
          "De-energizes the extract fan",
          "Places the avionics ventilation system in the closed configuration.",
          "Insures the extract fan will continue to be energized.",
          "Places the avionics ventilation system in the open configuration."
        ],
        2),
    Question(
        "36) The Ram Air valve:",
        [
          "Should be opened for increased ventilation while on the ground.",
          "Will open automatically after engine start.",
          "Should be opened for increased ventilation while in flight.",
          "Must be manually activated."
        ],
        3),
    Question(
        "37) What limitation is associated with the ram air valve?",
        [
          "Do not open if cabin pressure is greater than 1 psi.",
          "Only open while on the ground.",
          "Will not open if the DITCHING switch is off.",
          "Operation is automatic."
        ],
        0),
    Question(
        "38) With the pressurization system in the automatic mode, which valves are closed when the ditching push button is selected on?",
        [
          "All valves below the water line.",
          "APU inlet.",
          "The engine bleed valves.",
          "Only the avionics cooling valves."
        ],
        0),
    Question(
        "39) What is the maximum negative differential pressure for the cabin?",
        ["0 psi.", "1 psi.", "2 psi.", "3 psi."],
        1),
    Question(
        "40) The HOT AIR valve push button controls:",
        [
          "The trim air valve.",
          "The hot air manifold.",
          "The engine bleed valves.",
          "The pack flow control valves."
        ],
        0),
    Question(
        "41) Both pressurization auto controllers are set by the active flight plan loaded in the MCDU. The QNH entry on the MCDU Approach Performance page refines the depressurization schedule for the landing.",
        ["True.", "False."],
        0),
    Question(
        "42) Aft cargo indications may be found on which ECAM page(s)?",
        [
          "Only the ECAM cruise page.",
          "Only the BLEED page.",
          "Only the CAB PRESS page.",
          "The ECAM cruise page and the COND page."
        ],
        3),
    Question(
        "43) Avionics ventilation system indications may be found on which ECAM page(s)?",
        [
          "Only the BLEED page.",
          "Only the CAB PRESS page.",
          "The in-flight ECAM cruise page.",
          "The in-flight ECAM cruise page and the CAB PRESS pages."
        ],
        1),
    Question(
        "44) When APU is supplying the packs, the pack controller sends a demand signal to increase airflow when a zone temperature cannot be satisfied. This signal is sent to the:",
        [
          "Ram Air Inlet Flap.",
          "APU ECB.",
          "Pack Outflow Control Valve.",
          "Engine interface units EIU's"
        ],
        1),
    Question(
        "45) In case of zone controller primary and secondary channel failure, what temperatures are maintained by Packs 1 and 2?",
        [
          "15 deg.C for both.",
          "25 deg.C both.",
          "20 deg.C for Pack one and 10 deg C for Pack two",
          "24 deg.C for Pack one and 15 deg.C for Pack two."
        ],
        2),
    Question(
        "46) The PACK FLOW controller is set to NORM and yet the ECAM display shows PACK FLOW to be high. How is this possible?",
        [
          "As the engines are not running the PACK FLOW indicators are at the position they were selected to at the last shut down.",
          "As no bleed air is flowing the PACK FLOW valves are spring loaded to the fully open position.",
          "HI flow is automatically selected regardless of PACK FLOW selector position because air is only being supplied by the APU.",
          "With cold outside air conditions the PACK FLOW is automatically increased to help increase the cabin temperature."
        ],
        2),
    Question(
        "47) When would you select PACK FLOW to HI?",
        [
          "Smoke removal or hot/humid conditions.",
          "When passengers are complaining it is too cold.",
          "Above FL 350.",
          "Above FL 250"
        ],
        0),
    Question(
        "48) Which of the following statements is correct concerning conditioned air?",
        [
          "Conditioned air and trim air are mixed then distributed to each zone.",
          "Recirculated air, conditioned air and hot trim air are mixed then distributed to each zone.",
          "Hot trim air is added to the mixing unit before distribution to each zone.",
          "Recirculating fans draw cabin air to a mixing unit where conditioned air is added."
        ],
        3),
    Question(
        "49) How many temperature selectors are there on the A320? How many temperature zones are there?",
        [
          "Three rotary temperature selectors and one zone.",
          "Three rotary temperature selectors, one each for the cockpit zone, the forward cabin zone, and the aft cabin zone.",
          "Two rotary temperature selectors, one for the cockpit and first class zone and one for the aft cabin zone.",
          "Four rotary temperature selectors and four zones."
        ],
        1),
    Question("50) The temperature selectors are located in:",
        ["The cockpit", "The cabin", "Both", "Only on the CIDS panel"], 0),
    Question(
        "51) During normal flight, the avionics ventilation system controls the temperature of the cooling air by:",
        [
          "Adding air conditioned air to the flow.",
          "Extracting air over board.",
          "Adding an avionics bay air.",
          "Passing air through a skin heat exchanger."
        ],
        3),
    Question(
        "52) Placing the avionics ventilation system in the smoke configuration:",
        [
          "Opens the #1 GLC.",
          "Opens the cargo under-floor valve.",
          "Opens the #2 GLC.",
          "De-energizes the blower fan, extract fan runs, and opens the air conditioning extract valves."
        ],
        3),
    Question(
        "53) How can you change controllers during flight?",
        [
          "Cycle the LDG ELEV AUTO knob out of the AUTO position then back to AUTO.",
          "Cycle the CABIN PRESS MODE SEL pushbutton to the MAN position then back to AUTO.",
          "Cycle the cabin pressurization MAN V/S CTL switch"
        ],
        1),
    Question(
        "54) Hot air \"FAULT\" light illuminates on the air conditioning panel.",
        [
          "The hot air press reg. valve opens and the trim air valves close.",
          "The hot air press reg. valve closes and the trim air valves open.",
          "The hot air press reg. valve closes and the trim air valves close."
        ],
        2),
    Question(
        "55) How many trim air valves are there?",
        [
          "One trim air valve.",
          "Three: one each for the cockpit zone, the forward cabin zone, and the aft cabin zone.",
          "Two: one for the cockpit and first class zone, and one for the cabin zone.",
          "Four: one each for the cockpit zone, the first class zone, and two for the aft zone."
        ],
        1),
    Question(
        "56) What position do the pack valves go to in the event of a loss of the bleed system pressure?",
        [
          "They remain in their last position.",
          "Full open.",
          "Mid position.",
          "Closed."
        ],
        3),
    Question(
        "57) The RAM AIR switch should be used:",
        [
          "At any time.",
          "Only when differential pressure is less than 1 psi.",
          "When differential pressure is more than 1 psi.",
          "Only after outflow valve is fully opened."
        ],
        1),
    Question(
        "58) What is the function of the Pack Flow selector?",
        [
          "Allows the pilot to increase pack flow but will not allow a manual decrease in flow if needed by the aircraft demands.",
          "Always allows high flow regardless of switch position when the APU is used for air conditioning.",
          "Both are correct."
        ],
        2),
    Question(
        "59) Which configuration is the avionics ventilation system in while airborne with no abnormals present?",
        ["Open.", "Smoke.", "Fire.", "Closed."],
        3),
    Question(
        "60) What is the maximum altitude associated with the pressurization system?",
        ["39,100 feet", "39,500 feet", "41,000 feet", "41,100 feet"],
        0),
    Question(
        "61) Trim air valves are controlled by:",
        [
          "The zone controller.",
          "Anti-ice valve.",
          "Hot air pressure regulating valve.",
          "The pack controller"
        ],
        0),
    Question(
        "62) Which statement is TRUE concerning the cargo compartment ventilation?",
        [
          "Both cargo compartments are pressurized and heated using both cabin air and hot trim air.",
          "Recirculated air, conditioned air, and hot trim air are mixed then distributed to each cargo compartment.",
          "Only the aft cargo compartment is heated and ventilated. Cabin ambient air is mixed with hot trim air and drawn through isolation valves by extraction fans."
        ],
        2),
    Question(
        "63) The APU BLEED FAULT indicates that the main APU controller is in fault.",
        ["True.", "False."],
        1),
    Question(
        "64) Aft cargo ventilation is controlled by:",
        [
          "The aft cargo rotary selector knob.",
          "The cargo ventilation controller.",
          "The zone controller and the SDCU.",
          "The cargo ventilation controller and the aft cargo rotary selector knob."
        ],
        1),
    Question(
        "65) The vent fan runs any time there is a normal ships power and the isolation valves are open.",
        ["True.", "False."],
        0),
    Question(
        "66) The cabin zone temperature sensors are ventilated by the air extracted by the lavatory and galley fans.",
        ["True.", "False."],
        0),
    Question(
        "67) Placing the BLOWER push button to override:",
        [
          "Insures the blower fan will continue to run.",
          "Places the avionics ventilation system in the open configuration",
          "De-energizes the blower fan.",
          "Places the avionics ventilation system in the closed configuration."
        ],
        2),
    Question(
        "68) Pressurization indications are found on which ECAM page(s)?",
        [
          "BLEED page.",
          "Only on the CAB PRESS page.",
          "The in-flight ECAM cruise page and the CAB PRESS page.",
          "On the CAB PRESS & BLEED pages."
        ],
        2),
    Question(
        "69) How many outflow valves are there?",
        [
          "One valve with one door",
          "One valve with two doors.",
          "Two valves with only one door visible.",
          "Two valves (one main + one back-up) with only two doors visible."
        ],
        1),
    Question("70) At what cabin altitude do you get an ECAM warning?",
        ["8,800 feet.", "9,000 feet", "9,550 feet", "14,000 feet."], 2),
    Question(
        "71) When the pack flow control knob is positioned to HI, air flow is:",
        [
          "80% of normal rate.",
          "100% of normal rate.",
          "120% of normal rate.",
          "150% of normal rate."
        ],
        2),
    Question(
        "72) If you select a position other than the AUTO detent on the LDG ELEV AUTO selector, how can you see the actual landing elevation value?",
        [
          "On the ECAM CRUISE",
          "On the PRESS page",
          "On the ECAM CRUISE or the PRESS page."
        ],
        2),
    Question(
        "73) What will cause the ENG BLEED fault light to come on?",
        [
          "Overpressure (downstream of bleed valve)",
          "Bleed overheat",
          "Wing or engine leak on associated side.",
          "All of above."
        ],
        3),
    Question(
        "74) What does the CARGO HEAT HOT AIR FAULT light indicate?",
        [
          "A duct overheat is detected.",
          "The Aft Cargo Pressure Regulating valve closes.",
          "The system will reset if the ISOL VALVE switch is ON.",
          "All of above."
        ],
        3),
    Question(
        "75) During Ground function operation, the outflow valve is:",
        [
          "Fully open.",
          "Fully closed.",
          "Positioned according to FMGS demands."
        ],
        0),
    Question(
        "76) The outflow valve is powered by:",
        [
          "One of two electric motors.",
          "One of three electric motors.",
          "Three mechanically linked electric motors."
        ],
        1),
    Question(
        "77) The purpose of the safety valve is to avoid:",
        [
          "Excessive positive pressure differential.",
          "Excessive negative differential.",
          "Both are correct."
        ],
        2),
    Question(
        "78) When landing elevation is set to AUTO, the landing elevation is sent to the controller from:",
        ["FMGS.", "FCU.", "ADIRS.", "Captain baro ref."],
        0),
    Question(
        "79) The mixing unit is connected to:",
        [
          "Packs, cabin air, emergency ram air inlet and Lp ground connector",
          "Packs, emergency ram air inlet and Lp ground connector",
          "Packs and cabin air",
          "Pack 1 and pack 2 only."
        ],
        0),
    Question(
        "80) Once set to \"ON\" the air conditioning packs operate:",
        [
          "Automatically and independently of each other",
          "Normally, but the output of one affects the other",
          "Automatically, pack one as a master, pack two as a slave",
          "Automatically, pack two as a master, pack one as a slave."
        ],
        0),
    Question(
        "81) Emergency ram air inlet. When set to \"ON\" the ram air valve will open and supply airflow:",
        [
          "In any case",
          "Diff. press < 1 psi, and ditching not selected",
          "Provided ditching is not selected",
          "Provided ditching is selected."
        ],
        1),
    Question(
        "82) Cond. Zone regulator fault (primary channel failed):",
        [
          "Cabin zone is at fixed temperature",
          "Packs are at fixed temperature",
          "Secondary channel operates as back up and operation is as normal",
          "The packs deliver a fixed temperature. 20 deg.C for pack one and 10 deg.C for pack two"
        ],
        0),
    Question(
        "83) Temperature control is automatic and is regulated by:",
        [
          "Zone controllers",
          "Pack 1 and 2 controllers",
          "Zone controllers, pack 1 and 2 controllers",
          "The pack flow control valves only."
        ],
        2),
    Question(
        "84) If a pack controller fails (primary and secondary channel failure), the pack outlet air temperature is controlled by:",
        [
          "Ram Air Valve",
          "Hot air pressure regulating valve",
          "Anti-ice valve",
          "Trim air valve."
        ],
        2),
    Question(
        "85) The zone controller optimizes temperature by action on:",
        [
          "Pack anti-ice valve",
          "Trim air valve",
          "Pack flow control valve",
          "Hot air pressure regulating valve"
        ],
        1),
    Question(
        "86) When using APU bleed to supply the packs, with the pack flow selector at LO, the pack airflow is:",
        ["80% of normal", "Normal", "120% of normal", "110% of normal"],
        2),
    Question(
        "87) The pack flow control valve closed automatically in case of:",
        [
          "Pack overheat, engine starting, or operation of the fire or ditching push button",
          "Bleed valve failure, pack outlet pressure increase",
          "Trim air valve failure",
          "All of the above."
        ],
        3),
    Question(
        "88) In case of trim air system fault (zone controller primary channel failure), the secondary channel of the zone controller regulated the zone temperature at:",
        ["14 deg.C", "24 deg.C", "15 deg.C", "10 deg.C"],
        1),
    Question(
        "89) In case of total zone controller failure:",
        [
          "Hot air and trim air valves open and packs deliver air at a fixed temperature (15 deg.C pack 1 and 10 deg.pack2)",
          "Hot air and trim air valves close and packs deliver air at a fixed temperature (15 deg.C pack 1 and 10 deg.pack2)",
          "Hot air and trim air valves close and packs deliver air at a fixed temperature (20 deg.C pack 1 and 10 deg.pack2)",
          "Hot air and trim air valves open and packs deliver air at a fixed temperature (20 deg.C pack 1 and 10 deg.pack2)"
        ],
        2),
    Question(
        "90) During landing run, Ram Air Inlet flaps open when speed is less than:",
        [
          "77 kts (after 30 seconds delay)",
          "70 kts (after 1 minute delay)",
          "70 kts (after 20 seconds delay)",
          "85 kts (after 20 seconds delay)"
        ],
        2),
    Question(
        "91) The ditching switch when selected sends a closure signal to:",
        [
          "Outflow valve",
          "Ram air inlet and ventilation extract valves",
          "The pack flow control valves",
          "All of the above"
        ],
        3),
    Question(
        "92) In flight with pressure controller 1 in use, if it fails:",
        [
          "You have to use the manual control",
          "Transfers automatically to controller 2",
          "You have to select manually controller 2",
          "You have to set the landing elevation."
        ],
        1),
    Question(
        "93) In normal operation, pressurization is:",
        [
          "Fully automatic",
          "Manually controlled",
          "Automatic, but landing elevation must be manually set",
          "remaining automatic only with CPC 1 is in use."
        ],
        0),
    Question(
        "94) During ground function operation, the outflow valve is:",
        [
          "Fully open",
          "Fully closed",
          "Positioned accordingly to FMGS demands",
          "Operating in abort mode"
        ],
        0),
    Question(
        "95) To see the operation of the outflow valve, it is necessary to call ECAM:",
        ["Cond page", "Bleed page", "Press page", "Vent page"],
        2),
    Question(
        "96) Two identical, independent, automatic digital pressurization controllers are used for system control:",
        [
          "One controller active, one in standby",
          "Both controllers monitored by FMGC",
          "No controller for climb phase and No.2 controller in cruise and descent",
          "No.1 controller for climb and No.2 for descent"
        ],
        0),
    Question(
        "97) Which controller generates excess cabin altitude and pressure signals for ECAM indication in manual mode:",
        ["Both", "No.1", "No2", "Neither"],
        1),
    Question("98) The safety valves are operated:",
        ["Electrically", "Hydraulically", "Pneumatically", "By the FMGC"], 2),
    Question(
        "99) The purpose of the safety valves is to avoid:",
        [
          "Excessive positive differential pressure",
          "Excessive positive differential pressure",
          "All of the above"
        ],
        2),
    Question(
        "100) When mode selector is selected to manual, the outflow valve is controlled by signals sent via controller 1 or 2",
        ["True", "False"],
        0),
    Question(
        "101) On ECAM Cab. press page, the outflow valve indicator changes to amber if:",
        [
          "It is fully closed",
          "It is fully open on the ground",
          "It is fully open in flight",
          "It is not fully open on the ground"
        ],
        2),
    Question(
        "102) On ECAM Cab. press page, the safety valve indication changes to amber if:",
        [
          "Both safety valves are fully open",
          "Both safety valves do not open",
          "Both safety valves are fully closed",
          "One safety valve is open"
        ],
        3),
    Question(
        "103) On ECAM Cab. press page, the cabin altitude indication changes to red when cabin altitude is:",
        ["> 14,000 ft", "> 12,500 ft", "> 10,000 ft", "> 9,550 ft"],
        3),
    Question(
        "104) Following a system 1 fault:",
        [
          "Master caution is activated and ECAM actions must be taken by the crew",
          "The crew manually operates the system",
          "System 2 must be selected by the crew",
          "System 2 takes over automatically without any crew action"
        ],
        3),
    Question("105) The pressure safety valve opens at:",
        ["8.06 psi", "8.6 psi", "9.0 psi", "7.0 psi"], 1),
    Question(
        "106) After the engine start, the Pack Flow Control Valves automatically open, however on the ground, reopening of the valves is delayed for ____ after the first engine start.",
        ["30 seconds", "45 seconds", "50 seconds", "60 seconds"],
        0),
    Question(
        "107) The Ram Air Inlet Flaps remain open during takeoff and landing to allow extra airflow during high power situations.",
        ["True", "False"],
        1),
    Question(
        "108) The temperature of the air that exits the compressor section is displayed above the Pack Flow. It normally displays green, but displays amber for temperatures over:",
        ["180 deg.C", "200 deg.C", "230 deg.C", "250 deg.C"],
        2),
    Question(
        "109) The trim air valves are _____ controlled by the zone controller",
        [
          "Electrically",
          "Pneumatically",
          "Hydraulically",
          "None of the above!"
        ],
        0),
    Question(
        "110) The avionics ventilation system is not capable of using external air to provide cooling airflow",
        ["True", "False"],
        1),
    Question(
        "111) During flight below _____, the Ram Air Valve can provide an emergency source of conditioned air during non-pressurized flight.",
        ["5,000 feet", "8,000 feet", "10,000 feet", "12,500 feet"],
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
      studySelectedAnswers
          .clear(); // Use study logic for reviewing wrong answers
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
              "Air Cond / Press / Vent",
              style: TextStyle(
                  color: Colors.blueGrey[200],
                  fontSize: 18,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500),
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
                  "Air Cond/Press/Vent",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
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

                    // Logic for Study (Only light up if the user clicked THIS specific option)
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
                        // Unclicked options in study mode stay dark (even if the correct one isn't clicked yet)
                        if (studySelectedAnswers[realIndex]
                                ?.contains(currentQ.correctIndex) ??
                            false) {
                          // If user found the correct answer, keep others grayed out a bit
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
                            // Only allow clicking if the correct answer hasn't been found yet
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
