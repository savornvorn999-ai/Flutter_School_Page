import 'package:flutter/material.dart';

class PnLogo extends StatelessWidget {
  const PnLogo({
    super.key,
    this.size = 140,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final double monogramSize = size * 0.54;
    final double bannerWidth = size * 0.46;
    final double bannerHeight = size * 0.09;

    return Semantics(
      label: 'PN logo',
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF121012),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.16),
                    blurRadius: 24,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size * 0.14,
              child: SizedBox(
                width: size * 0.66,
                height: size * 0.42,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.translate(
                      offset: Offset(size * 0.028, size * 0.03),
                      child: _PnMonogram(
                        fontSize: monogramSize,
                        color: const Color(0xFF8D8D8D),
                      ),
                    ),
                    _PnMonogram(
                      fontSize: monogramSize,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size * 0.61,
              child: Column(
                children: [
                  _LogoBanner(
                    label: 'PASSERELLES',
                    width: bannerWidth,
                    height: bannerHeight,
                  ),
                  SizedBox(height: size * 0.018),
                  _LogoBanner(
                    label: 'NUMERIQUES',
                    width: bannerWidth * 1.04,
                    height: bannerHeight,
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

class _PnMonogram extends StatelessWidget {
  const _PnMonogram({
    required this.fontSize,
    required this.color,
  });

  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'PN',
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
        letterSpacing: -fontSize * 0.11,
        height: 0.82,
      ),
    );
  }
}

class _LogoBanner extends StatelessWidget {
  const _LogoBanner({
    required this.label,
    required this.width,
    required this.height,
  });

  final String label;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF11A5F2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.16),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: height * 0.34,
          fontWeight: FontWeight.w700,
          letterSpacing: height * 0.08,
          height: 1,
        ),
      ),
    );
  }
}
