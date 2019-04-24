@TestOn('browser')
import 'dart:html';
import 'package:test/test.dart';

void main() {
  test('loading of css', () {
    String willNotLoadClass = 'will-not-load-class';
    String willLoadClass = 'will-load-class';
    final willNotLoadCss = document.createElement('div')..className = willNotLoadClass;
    final willLoadCss = document.createElement('div')..className = willLoadClass;

    document.body.append(willNotLoadCss);
    document.body.append(willLoadCss);

    print(document.querySelector('.$willNotLoadClass').styleMap);
    print(document.querySelector('.$willLoadClass').styleMap);
//
//    print(willNotLoadCss.classes);
//    print(willNotLoadCss.styleMap);
//    print(willNotLoadCss.style.color);
//    print(willLoadCss.style.color);
//    print(willLoadCss.styleMap);
  });
}