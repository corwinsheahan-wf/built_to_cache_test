@TestOn('browser')
import 'dart:html';
import 'package:test/test.dart';

void main() {
  test('loading of css', () {
    final willLoadElement = document.createElement('div')..className = 'will-load-class';
    final willLoadBuiltElement = document.createElement('div')..className = 'will-load-built-class';
    final willNotLoadBuiltElement = document.createElement('div')..className = 'will-not-load-built-class';

    document.body.append(willLoadElement);
    document.body.append(willLoadBuiltElement);
    document.body.append(willNotLoadBuiltElement);

    // Will pass
    expect(willLoadElement.getComputedStyle().fontSize, '1px');
    // Will pass
    expect(willLoadBuiltElement.getComputedStyle().fontSize, '1px');
    // Will not pass because css file cannot be found
    expect(willNotLoadBuiltElement.getComputedStyle().fontSize, '1px');
  });
}