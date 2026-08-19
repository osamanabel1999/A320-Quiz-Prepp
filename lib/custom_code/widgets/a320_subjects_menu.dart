// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320SubjectsMenu extends StatefulWidget {
  final double? width;
  final double? height;

  // الأكشنز الخاصة بكل قسم
  final Future Function()? onA320ExamTap;
  final Future Function()? onApuTap;
  final Future Function()? onAutoFlightTap;
  final Future Function()? onCommunicationsTap;
  final Future Function()? onDoorsTap;
  final Future Function()? onElectricalTap;
  final Future Function()? onEnginesTap;
  final Future Function()? onEquipmentTap;
  final Future Function()? onFireProtectionTap;
  final Future Function()? onFlightControlsTap;
  final Future Function()? onFmgsNavigationTap;
  final Future Function()? onFuelTap;
  final Future Function()? onHydraulicsTap;
  final Future Function()? onIceAndRainTap;
  final Future Function()? onOxygenTap;
  final Future Function()? onPneumaticsTap;
  final Future Function()? onIndicatingAndRecordingTap;

  const A320SubjectsMenu({
    Key? key,
    this.width,
    this.height,
    this.onA320ExamTap,
    this.onApuTap,
    this.onAutoFlightTap,
    this.onCommunicationsTap,
    this.onDoorsTap,
    this.onElectricalTap,
    this.onEnginesTap,
    this.onEquipmentTap,
    this.onFireProtectionTap,
    this.onFlightControlsTap,
    this.onFmgsNavigationTap,
    this.onFuelTap,
    this.onHydraulicsTap,
    this.onIceAndRainTap,
    this.onOxygenTap,
    this.onPneumaticsTap,
    this.onIndicatingAndRecordingTap,
  }) : super(key: key);

  @override
  State<A320SubjectsMenu> createState() => _A320SubjectsMenuState();
}

class _A320SubjectsMenuState extends State<A320SubjectsMenu> {
  // دالة عشان تبني الكروت بشكل احترافي وموفر للكود
  Widget _buildMenuItem(String title, Future Function()? onTapAction,
      {bool isHighlight = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () async {
          if (onTapAction != null) {
            await onTapAction();
          }
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
          decoration: BoxDecoration(
            color: isHighlight
                ? const Color(0xFF1E2832)
                : const Color(0xFF1A2024), // ألوان متناسقة مع الخلفية
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isHighlight
                  ? Colors.blueAccent.withOpacity(0.3)
                  : Colors.white10,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isHighlight ? Colors.blue.shade100 : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: isHighlight ? Colors.blueAccent : Colors.white54,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFF12181B); // نفس خلفية التطبيق

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: backgroundColor,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          physics: const BouncingScrollPhysics(),
          children: [
            // قسم مميز في الأول للامتحان الشامل
            _buildMenuItem("A320 Full Exam", widget.onA320ExamTap,
                isHighlight: true),

            // باقي الأقسام
            _buildMenuItem("APU", widget.onApuTap),
            _buildMenuItem("Auto Flight", widget.onAutoFlightTap),
            _buildMenuItem("Communications", widget.onCommunicationsTap),
            _buildMenuItem("Doors", widget.onDoorsTap),
            _buildMenuItem("Electrical", widget.onElectricalTap),
            _buildMenuItem("Engines", widget.onEnginesTap),
            _buildMenuItem("Equipment", widget.onEquipmentTap),
            _buildMenuItem("Fire Protection", widget.onFireProtectionTap),
            _buildMenuItem("Flight Controls", widget.onFlightControlsTap),
            _buildMenuItem("FMGS & Navigation", widget.onFmgsNavigationTap),
            _buildMenuItem("Fuel", widget.onFuelTap),
            _buildMenuItem("Hydraulics", widget.onHydraulicsTap),
            _buildMenuItem("Ice and Rain", widget.onIceAndRainTap),
            _buildMenuItem("Oxygen", widget.onOxygenTap),
            _buildMenuItem("Pneumatics", widget.onPneumaticsTap),
            _buildMenuItem(
                "Indicating and Recording", widget.onIndicatingAndRecordingTap),

            const SizedBox(height: 30), // مسافة في آخر القائمة
          ],
        ),
      ),
    );
  }
}
