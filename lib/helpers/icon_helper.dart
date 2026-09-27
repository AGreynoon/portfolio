import 'package:jaspr/jaspr.dart';

/// Centralized SVG icons repository for social links, project action buttons,
/// navigation indicators, and UI controls.
class AppIconsHelper {
  const AppIconsHelper._();

  /// Renders a brand or communication social SVG icon.
  static Component social(String type, {double size = 15, String? classes}) {
    final s = size.toInt().toString();
    switch (type.toLowerCase()) {
      case 'linkedin':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'currentColor',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z',
              },
            ),
          ],
        );
      case 'github':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'currentColor',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z',
              },
            ),
          ],
        );
      case 'gmail':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'rect',
              attributes: {'x': '2', 'y': '4', 'width': '20', 'height': '16', 'rx': '2'},
            ),
            .element(
              tag: 'path',
              attributes: {'d': 'm22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7'},
            ),
          ],
        );
      case 'whatsapp':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'currentColor',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.711 2.592 2.654-.696c1.004.548 1.944.836 2.806.836h.005c3.18 0 5.767-2.586 5.768-5.766 0-1.54-.599-2.988-1.688-4.077-1.09-1.088-2.537-1.688-4.085-1.688zm3.011 8.243c-.126.353-.728.672-1.011.714-.271.04-.622.065-1.782-.416-.991-.41-1.628-1.423-1.677-1.488-.049-.066-.402-.534-.402-1.018 0-.485.254-.724.344-.823.09-.098.197-.123.262-.123.066 0 .131.001.189.004.06.002.141-.023.22.167.082.197.279.68.303.73.025.049.041.107.008.172-.033.066-.049.107-.098.164-.049.057-.103.128-.148.172-.049.049-.101.102-.043.201.057.098.256.422.549.683.377.336.695.44.793.489.098.049.156.041.213-.025.057-.066.246-.287.311-.385.066-.098.131-.082.221-.049.09.033.574.271.672.32.098.049.164.074.189.115.024.041.024.238-.102.591z',
              },
            ),
          ],
        );
      case 'download':
      default:
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {'d': 'M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'},
            ),
            .element(
              tag: 'polyline',
              attributes: {'points': '7 10 12 15 17 10'},
            ),
            .element(
              tag: 'line',
              attributes: {'x1': '12', 'y1': '15', 'x2': '12', 'y2': '3'},
            ),
          ],
        );
    }
  }

  /// Renders project external link SVG icons (Play Store, App Store, Website, GitHub/Code, Live Demo, APK).
  static Component projectLink(String type, {double size = 13, String? classes}) {
    final s = size.toInt().toString();
    switch (type.toLowerCase()) {
      case 'play-store':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'currentColor',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M4.43 2.12c-.28.3-.43.73-.43 1.28v17.2c0 .55.15.98.43 1.28l.07.06 9.64-9.64v-.23L4.5 2.06l-.07.06zm12.77 12.77l-3.13-3.13v-.23l3.13-3.13.07.04 3.71 2.11c1.06.6 1.06 1.58 0 2.18l-3.71 2.11-.07.05zm-3.2-3.27L4.36 21.26c.38.4.98.45 1.68.05l10.96-6.22-3-3.47zm0-.23l3-3.47L6.04 1.69c-.7-.4-1.3-.35-1.68.05l9.64 9.64z',
              },
            ),
          ],
        );
      case 'app-store':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'currentColor',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.81-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M15.97 6.37c.63-.76 1.06-1.82.94-2.87-.91.04-2.02.6-2.67 1.36-.58.67-.99 1.74-.86 2.76 1.02.08 2.06-.5 2.59-1.25z',
              },
            ),
          ],
        );
      case 'website':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'circle',
              attributes: {'cx': '12', 'cy': '12', 'r': '10'},
            ),
            .element(
              tag: 'line',
              attributes: {'x1': '2', 'y1': '12', 'x2': '22', 'y2': '12'},
            ),
            .element(
              tag: 'path',
              attributes: {
                'd':
                    'M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z',
              },
            ),
          ],
        );
      case 'code':
      case 'repo':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'polyline',
              attributes: {'points': '16 18 22 12 16 6'},
            ),
            .element(
              tag: 'polyline',
              attributes: {'points': '8 6 2 12 8 18'},
            ),
          ],
        );
      case 'live':
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {
                'd': 'M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6',
              },
            ),
            .element(
              tag: 'polyline',
              attributes: {'points': '15 3 21 3 21 9'},
            ),
            .element(
              tag: 'line',
              attributes: {'x1': '10', 'y1': '14', 'x2': '21', 'y2': '3'},
            ),
          ],
        );
      case 'apk':
      default:
        return .element(
          tag: 'svg',
          classes: classes,
          attributes: {
            'viewBox': '0 0 24 24',
            'width': s,
            'height': s,
            'fill': 'none',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          children: [
            .element(
              tag: 'path',
              attributes: {'d': 'M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4'},
            ),
            .element(
              tag: 'polyline',
              attributes: {'points': '7 10 12 15 17 10'},
            ),
            .element(
              tag: 'line',
              attributes: {'x1': '12', 'y1': '15', 'x2': '12', 'y2': '3'},
            ),
          ],
        );
    }
  }

  /// Direction-aware arrow indicator icon (renders pointing left for RTL and right for LTR).
  static Component arrow({required bool isRtl, double size = 14, String? classes}) {
    final s = size.toInt().toString();
    return .element(
      tag: 'svg',
      classes: classes,
      attributes: {
        'viewBox': '0 0 24 24',
        'width': s,
        'height': s,
        'fill': 'none',
        'stroke': 'currentColor',
        'stroke-width': '2',
        'stroke-linecap': 'round',
        'stroke-linejoin': 'round',
      },
      children: [
        if (isRtl) ...[
          .element(tag: 'line', attributes: {'x1': '19', 'y1': '12', 'x2': '5', 'y2': '12'}),
          .element(tag: 'polyline', attributes: {'points': '12 19 5 12 12 5'}),
        ] else ...[
          .element(tag: 'line', attributes: {'x1': '5', 'y1': '12', 'x2': '19', 'y2': '12'}),
          .element(tag: 'polyline', attributes: {'points': '12 5 19 12 12 19'}),
        ],
      ],
    );
  }

  /// Briefcase icon representing professional company work experience.
  static Component company({double size = 16, String? classes}) {
    final s = size.toInt().toString();
    return .element(
      tag: 'svg',
      classes: classes,
      attributes: {
        'viewBox': '0 0 24 24',
        'width': s,
        'height': s,
        'fill': 'currentColor',
      },
      children: [
        .element(
          tag: 'path',
          attributes: {
            'd':
                'M20 6h-4V4c0-1.11-.89-2-2-2h-4c-1.11 0-2 .89-2 2v2H4c-1.11 0-1.99.89-1.99 2L2 19c0 1.11.89 2 2 2h16c1.11 0 2-.89 2-2V8c0-1.11-.89-2-2-2zm-6 0h-4V4h4v2z',
          },
        ),
      ],
    );
  }
}

typedef AppIcons = AppIconsHelper;
