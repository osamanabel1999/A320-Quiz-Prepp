// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class HomeDashboardScreen extends StatefulWidget {
  final double? width;
  final double? height;
  final String imagePath;
  final Future Function()? onCardTap;
  final Future Function()? onTermsTap;
  final Future Function()? onPrivacyTap;

  const HomeDashboardScreen({
    Key? key,
    this.width,
    this.height,
    this.imagePath = 'https://picsum.photos/seed/plane/800/600',
    this.onCardTap,
    this.onTermsTap,
    this.onPrivacyTap,
  }) : super(key: key);

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  Widget _buildFallbackImage() {
    return Container(
      color: const Color(0xFF2C3539),
      child: const Center(
        child: Icon(Icons.image_not_supported, color: Colors.white54, size: 40),
      ),
    );
  }

  Widget _buildImage(String path) {
    String trimmedPath = path.trim();

    if (trimmedPath.isEmpty) {
      trimmedPath = 'https://picsum.photos/seed/plane/800/600';
    }

    // تحويل رابط جيتهاب من صفحة HTML إلى رابط الصورة المباشر تلقائياً
    if (trimmedPath.contains('github.com') && trimmedPath.contains('/blob/')) {
      trimmedPath = trimmedPath
          .replaceFirst('github.com', 'raw.githubusercontent.com')
          .replaceFirst('/blob/', '/');
    }

    if (trimmedPath.startsWith('http://') ||
        trimmedPath.startsWith('https://')) {
      return Image.network(
        trimmedPath,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: const Color(0xFF1E2832),
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white54,
                strokeWidth: 2,
              ),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => _buildFallbackImage(),
      );
    } else {
      return Image.asset(
        trimmedPath,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildFallbackImage(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFF12181B);

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // العنوان ثابت بدون Parameter
              const Text(
                "Airbus A320",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 24),

              // الكارت بالكامل قابل للضغط مع صورة Parameter
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    if (widget.onCardTap != null) {
                      await widget.onCardTap!();
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          _buildImage(widget.imagePath),

                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [0.0, 0.4, 1.0],
                              ),
                            ),
                          ),

                          // نصوص الكارت ثابتة بدون Parameters
                          const Positioned(
                            top: 24,
                            left: 20,
                            right: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "All Subjects",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black87,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Explore all essential study materials and flight systems in one place.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.4,
                                    fontWeight: FontWeight.w500,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black87,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            bottom: 20,
                            right: 20,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white.withOpacity(0.9),
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // الفوتر: أزرار Privacy & Terms
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      if (widget.onTermsTap != null) {
                        await widget.onTermsTap!();
                      }
                    },
                    child: const Text(
                      "Terms of use",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white70,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (widget.onPrivacyTap != null) {
                        await widget.onPrivacyTap!();
                      }
                    },
                    child: const Text(
                      "Privacy policy",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
