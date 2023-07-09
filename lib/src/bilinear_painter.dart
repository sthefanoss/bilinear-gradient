part of '../bilinear_gradient.dart';

class _BilinearPainter extends CustomPainter {
  const _BilinearPainter({
    required this.shader,
    required this.topLeftColor,
    required this.topRightColor,
    required this.bottomLeftColor,
    required this.bottomRightColor,
  });

  final FragmentShader shader;
  final Color topLeftColor;
  final Color topRightColor;
  final Color bottomLeftColor;
  final Color bottomRightColor;

  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloatUniforms((value) {
      value.setFloat(size.width);
      value.setFloat(size.height);
      value.setColor(topLeftColor);
      value.setColor(topRightColor);
      value.setColor(bottomLeftColor);
      value.setColor(bottomRightColor);
    });

    final paint = Paint()..shader = shader;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(_BilinearPainter oldDelegate) {
    return topLeftColor != oldDelegate.topLeftColor ||
        topRightColor != oldDelegate.topRightColor ||
        bottomLeftColor != oldDelegate.bottomLeftColor ||
        bottomRightColor != oldDelegate.bottomRightColor;
  }
}
