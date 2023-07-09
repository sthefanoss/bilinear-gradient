part of '../bilinear_gradient.dart';

class BilinearGradientDecorator extends StatelessWidget {
  const BilinearGradientDecorator({
    super.key,
    required this.topLeftColor,
    required this.topRightColor,
    required this.bottomLeftColor,
    required this.bottomRightColor,
    required this.child,
  });

  final Color topLeftColor;
  final Color topRightColor;
  final Color bottomLeftColor;
  final Color bottomRightColor;
  final Widget child;

  static final _assetKey = const AssetImage(
    'shaders/bilinear_gradient.frag',
    package: 'bilinear_gradient',
  ).keyName;

  @override
  Widget build(BuildContext context) {
    return ShaderBuilder(
      assetKey: _assetKey,
      (context, shader, child) => CustomPaint(
        painter: _BilinearPainter(
          shader: shader,
          topLeftColor: topLeftColor,
          topRightColor: topRightColor,
          bottomLeftColor: bottomLeftColor,
          bottomRightColor: bottomRightColor,
        ),
        child: this.child,
      ),
    );
  }
}
