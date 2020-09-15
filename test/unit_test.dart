import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  test("test a function 1", () {
    expect(validateFormatPass("Contrasenia"), false);
  });

  test("test a function 2", () {
    expect(validateFormatPass("Contrasenia12"), false);
  });

  test("test a function 3", () {
    expect(validateFormatPass("contra12 # "), false);
  });

  test("test a function 4", () {
    expect(validateFormatPass("Contra123#"), true);
  });

  test("test a function 5", () {
    expect(validateFormatPass("contra123#"), false);
  });

  test("test a function 6", () {
    expect(validateFormatPass("Contra 123#"), false);
  });
}
